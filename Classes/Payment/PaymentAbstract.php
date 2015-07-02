<?php
namespace CommerceTeam\Commerce\Payment;
/*
 * This file is part of the TYPO3 CMS project.
 *
 * It is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License, either version 2
 * of the License, or any later version.
 *
 * For the full copyright and license information, please read the
 * LICENSE.txt file that was distributed with this source code.
 *
 * The TYPO3 project - inspiring people to share!
 */

/**
 * Abstract payment implementation
 *
 * Class \CommerceTeam\Commerce\Payment\PaymentAbstract
 *
 * @author 2011-2012 Volker Graubaum <vg@e-netconsulting.com>
 */
abstract class PaymentAbstract implements PaymentInterface {
	/**
	 * Error messages, keys are field names
	 *
	 * @var array
	 */
	public $errorMessages = array();

	/**
	 * Parent object
	 *
	 * @var \CommerceTeam\Commerce\Controller\CheckoutController
	 */
	protected $parentObject = NULL;

	/**
	 * Payment type, for example 'creditcard'. Extending classes _must_ set this!
	 *
	 * @var string
	 */
	protected $type = '';

	/**
	 * Payment provider configured
	 *
	 * @var \CommerceTeam\Commerce\Payment\Provider\ProviderAbstract
	 */
	protected $provider = NULL;

	/**
	 * Criterion objects that check if a payment is allowed
	 *
	 * @var array
	 */
	protected $criteria = array();

	/**
	 * Default constructor
	 *
	 * @param \CommerceTeam\Commerce\Controller\BaseController $parentObject Parent
	 *
	 * @return self
	 * @throws \Exception If type was not set or criteria are not valid
	 */
	public function __construct(\CommerceTeam\Commerce\Controller\BaseController $parentObject) {
		if (!strlen($this->type) > 0) {
			throw new \Exception($this->type . ' not set.', 1306266978);
		}

		$this->parentObject = $parentObject;

		$this->findCriterion();
		$this->findProvider();
	}

	/**
	 * Get parent object
	 *
	 * @return \CommerceTeam\Commerce\Controller\CheckoutController Parent object
	 */
	public function getParentObject() {
		return $this->parentObject;
	}

	/**
	 * Get payment type
	 *
	 * @return string
	 */
	public function getType() {
		return $this->type;
	}

	/**
	 * Return TRUE if this payment type is allowed.
	 *
	 * @return bool
	 */
	public function isAllowed() {
		/**
		 * Criterion
		 *
		 * @var \CommerceTeam\Commerce\Payment\Criterion\CriterionAbstract $criterion
		 */
		foreach ($this->criteria as $criterion) {
			if ($criterion->isAllowed() === FALSE) {
				return FALSE;
			}
		}
		return TRUE;
	}

	/**
	 * Get payment provider
	 *
	 * @return \CommerceTeam\Commerce\Payment\Provider\ProviderInterface
	 */
	public function getProvider() {
		return $this->provider;
	}

	/**
	 * Find configured criterion
	 *
	 * @return void
	 * @throws \Exception If configured criterion class is not of correct interface
	 */
	protected function findCriterion() {
		// Create criterion objects if defined
		$commerceConfiguration = & $GLOBALS['TYPO3_CONF_VARS']['EXTCONF'][COMMERCE_EXTKEY];
		$criteraConfigurations = $commerceConfiguration['SYSPRODUCTS']['PAYMENT']['types'][$this->type]['criteria'];
		if (is_array($criteraConfigurations)) {
			foreach ($criteraConfigurations as $criterionConfiguration) {
				if (!is_array($criterionConfiguration['options'])) {
					$criterionConfiguration['options'] = array();
				}

				/**
				 * Criterion
				 *
				 * @var \CommerceTeam\Commerce\Payment\Criterion\CriterionInterface $criterion
				 */
				$criterion = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance(
					$criterionConfiguration['class'],
					$this,
					$criterionConfiguration['options']
				);
				if (!($criterion instanceof \CommerceTeam\Commerce\Payment\Criterion\CriterionInterface)) {
					throw new \Exception(
						'Criterion ' . $criterionConfiguration['class'] .
							' must implement interface \CommerceTeam\Commerce\Payment\Criterion\CriterionInterface',
						1306267908
					);
				}
				$this->criteria[] = $criterion;
			}
		}
	}

	/**
	 * Find appropriate provider for this payment
	 *
	 * @return void
	 * @throws \Exception If payment provider is not of corret interface
	 */
	protected function findProvider() {
		// Check if type has criteria, create all needed objects
		$commerceConfiguration = & $GLOBALS['TYPO3_CONF_VARS']['EXTCONF'][COMMERCE_EXTKEY];
		$providerConfigurations = $commerceConfiguration['SYSPRODUCTS']['PAYMENT']['types'][$this->type]['provider'];

		if (is_array($providerConfigurations)) {
			foreach ($providerConfigurations as $providerConfiguration) {
				/**
				 * Provider
				 *
				 * @var \CommerceTeam\Commerce\Payment\Provider\ProviderInterface $provider
				 */
				$provider = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance($providerConfiguration['class'], $this);
				if (!($provider instanceof \CommerceTeam\Commerce\Payment\Provider\ProviderInterface)) {
					throw new \Exception(
						'Provider ' . $providerConfiguration['class'] .
							' must implement interface \CommerceTeam\Commerce\Payment\Provider\ProviderInterface',
						1307705798
					);
				}
					// Check if provider is allowed and break if so
				if ($provider->isAllowed()) {
					$this->provider = $provider;
					break;
				}
			}
		}
	}

	/**
	 * Determine if additional data is needed
	 *
	 * @return bool True if additional data is needed
	 */
	public function needAdditionalData() {
		$result = FALSE;
		if ($this->provider !== NULL) {
			$result = $this->provider->needAdditionalData();
		}
		return $result;
	}

	/**
	 * Get configuration of additional fields
	 *
	 * @return mixed|null
	 */
	public function getAdditionalFieldsConfig() {
		$result = NULL;
		if ($this->provider !== NULL) {
			$result = $this->provider->getAdditionalFieldsConfig();
		}
		return $result;
	}

	/**
	 * Check if provided data is ok
	 *
	 * @param array $formData Current form data
	 *
	 * @return bool TRUE if data is ok
	 */
	public function proofData(array $formData = array()) {
		$result = TRUE;
		if ($this->provider !== NULL) {
			$result = $this->provider->proofData($formData, $result);
		}
		return $result;
	}

	/**
	 * Wether or not finishing an order is allowed
	 *
	 * @param array $config Current configuration
	 * @param array $session Session data
	 * @param \CommerceTeam\Commerce\Domain\Model\Basket $basket Basket object
	 *
	 * @return bool True is finishing order is allowed
	 */
	public function finishingFunction(array $config = array(), array $session = array(),
		\CommerceTeam\Commerce\Domain\Model\Basket $basket = NULL
	) {
		$result = TRUE;
		if ($this->provider !== NULL) {
			$result = $this->provider->finishingFunction($config, $session, $basket);
		}
		return $result;
	}

	/**
	 * Method called in finishIt function
	 *
	 * @param array $globalRequest Global request
	 * @param array $session Session array
	 *
	 * @return bool TRUE if data is ok
	 */
	public function checkExternalData(array $globalRequest = array(), array $session = array()) {
		$result = TRUE;
		if ($this->provider !== NULL) {
			$result = $this->provider->checkExternalData($globalRequest, $session);
		}
		return $result;
	}

	/**
	 * Update order data after order has been finished
	 *
	 * @param int $orderUid Id of this order
	 * @param array $session Session data
	 *
	 * @return void
	 */
	public function updateOrder($orderUid, array $session = array()) {
		if ($this->provider !== NULL) {
			$this->provider->updateOrder($orderUid, $session);
		}
	}

	/**
	 * Get error message if form data was not ok
	 *
	 * @return string error message
	 */
	public function getLastError() {
		$result = '';

		if ($this->provider !== NULL) {
			$result = $this->provider->getLastError();
		}

		return $result;
	}
}