<!-- Suppart for rendering the category list, complete output from extension -->

<!-- ###CATEGORY_LIST### begin -->
<ul>
<!-- ###CATEGORY_LIST_ITEM### begin -->
<li>###CATEGORY_ITEM_DETAILLINK### ###CATEGORY_ITEM_TITLE### ###CATEGORY_ITEM_DETAILLINK###
<p>###CATEGORY_ITEM_SUBTITLE###</p>
<p>###CATEGORY_ITEM_DESCRIPTION###</p>
<p>###CATEGORY_ITEM_IMAGES###</p>
<!-- optional 
		<p>###CATEGORY_ITEM_PRODUCTLIST###</p>
 optional end  -->
</li>
<!-- ###CATEGORY_LIST_ITEM### end -->
</ul>

<!-- ###CATEGORY_LIST### end -->

<!-- ###CATEGORY_VIEW_DISPLAY### begin -->

	<div><h2>###CATEGORY_TITLE###</h2>
	<span>###CATEGORY_DESCRIPTION###</span>
	<span>###CATEGORY_IMAGES###</span>
	<span>###CATEGORY_SUB_LIST###</span>
	<span>###SUBPART_CATEGORY_ITEMS_LISTVIEW_TOP###</span>
	</div>
	<br />
	<div>###SUBPART_CATEGORY_ITEMS_LISTVIEW###</div>
	<div>###CATEGORY_BROWSEBOX###</div>	

<!-- ###CATEGORY_VIEW_DISPLAY### end -->

<!-- TOP PRODUCT / YOU CAN DISPLAY IT IN A SPECIAL WAY -->
<!-- ###CATEGORY_ITEMS_LISTVIEW_1### begin -->
<div>
	<h3>
	    <!-- ###PRODUCT_LINK_DETAIL### -->###PRODUCT_TITLE###<!-- ###PRODUCT_LINK_DETAIL### --> </h3>
	<span>###PRODUCT_IMAGES###</span>
	<span>###PRODUCT_TEASER###</span>
	<br/>
</div>
<!-- ###CATEGORY_ITEMS_LISTVIEW_1### end -->


<!-- ###CATEGORY_ITEMS_LISTVIEW_2### begin-->
<div>
	<h3><!-- ###PRODUCT_LINK_DETAIL### -->###PRODUCT_TITLE###<!-- ###PRODUCT_LINK_DETAIL### --> </h3>
	<span>###PRODUCT_IMAGES###</span>
	<span>###PRODUCT_TEASER###</span>
	<br/>
</div>
	<div>
	<!-- ###PRODUCT_BASKET_FOR_LISTVIEW### -->
			<!-- ###ARTICLE_VIEW### -->
		    ###STARTFRM###        
		    ###HIDDENFIELDS###
			<span>###ARTICLE_EANCODE###	</span>
			<span>###ARTICLE_STOCK###	</span>
            <span>###ARTICLE_ORDERNUMBER###</span>
			<span>###ARTICLE_PRICE_GROSS###</span>
			<span>###DELIVERY_PRICE_GROSS###</span>    
			<div>###ARTICLE_SELECT_ATTRIBUTES###</div>
			<span>###NO_STOCK###</span>
			<span><input type="input" class="qtyInput" value="###QTY_INPUT_VALUE###" name="###QTY_INPUT_NAME###" size="3">&nbsp
                   <input type="submit" value="abschicken">
			</form>
			<!-- ###ARTICLE_VIEW### -->
			
			<!-- ###ARTICLE_VIEW_NOSTOCK### -->
		    ###STARTFRM###        
		    ###HIDDENFIELDS###
			<span>###ARTICLE_EANCODE###	</span>
			<span>###ARTICLE_STOCK###	</span>
            <span>###ARTICLE_ORDERNUMBER###</span>
			<span>###ARTICLE_PRICE_GROSS###</span>
			<span>###DELIVERY_PRICE_GROSS###</span>    
			<div>###ARTICLE_SELECT_ATTRIBUTES###</div>
			<span>###NO_STOCK###</span>
			<span><input type="input" class="qtyInput" value="###QTY_INPUT_VALUE###" name="###QTY_INPUT_NAME###" size="3">&nbsp
                   <input type="submit" value="abschicken">
			</form>
			<!-- ###ARTICLE_VIEW_NOSTOCK### -->
	<!-- ###PRODUCT_BASKET_FOR_LISTVIEW### -->
	
	</div>
<!-- ###CATEGORY_ITEMS_LISTVIEW_2### end -->


<!-- ###CATEGORY_ITEMS_LISTVIEW_2_NOSTOCK### begin-->
<div>
	<h3><!-- ###PRODUCT_LINK_DETAIL### -->###PRODUCT_TITLE###<!-- ###PRODUCT_LINK_DETAIL### --> </h3>
	<span>###PRODUCT_IMAGES###</span>
	<span>###PRODUCT_TEASER###</span>
	<br/>
</div>
	<div>
	<!-- ###PRODUCT_BASKET_FOR_LISTVIEW### -->
			<!-- ###ARTICLE_VIEW### -->
		    ###STARTFRM###        
		    ###HIDDENFIELDS###
			<span>###ARTICLE_EANCODE###	</span>
			<span>###ARTICLE_STOCK###	</span>
            <span>###ARTICLE_ORDERNUMBER###</span>
			<span>###ARTICLE_PRICE_GROSS###</span>
			<span>###DELIVERY_PRICE_GROSS###</span>    
			<div>###ARTICLE_SELECT_ATTRIBUTES###</div>
			<span>###NO_STOCK###</span>
			<span><input type="input" class="qtyInput" value="###QTY_INPUT_VALUE###" name="###QTY_INPUT_NAME###" size="3">&nbsp
                   <input type="submit" value="abschicken">
			</form>
			<!-- ###ARTICLE_VIEW### -->
			
			<!-- ###ARTICLE_VIEW_NOSTOCK### -->
		    ###STARTFRM###        
		    ###HIDDENFIELDS###
			<span>###ARTICLE_EANCODE###	</span>
			<span>###ARTICLE_STOCK###	</span>
            <span>###ARTICLE_ORDERNUMBER###</span>
			<span>###ARTICLE_PRICE_GROSS###</span>
			<span>###DELIVERY_PRICE_GROSS###</span>    
			<div>###ARTICLE_SELECT_ATTRIBUTES###</div>
			<span>###NO_STOCK###</span>
			<span><input type="input" class="qtyInput" value="###QTY_INPUT_VALUE###" name="###QTY_INPUT_NAME###" size="3">&nbsp
                   <input type="submit" value="abschicken">
			</form>
			<!-- ###ARTICLE_VIEW_NOSTOCK### -->
	<!-- ###PRODUCT_BASKET_FOR_LISTVIEW### -->
	
	</div>
<!-- ###CATEGORY_ITEMS_LISTVIEW_2_NOSTOCK### end -->

<!-- ###PRODUCT_VIEW_DETAIL### begin-->
<div>
	<h3><!-- ###PRODUCT_LINK_DETAIL### -->###PRODUCT_TITLE###<!-- ###PRODUCT_LINK_DETAIL### --> </h3>
	<span>###PRODUCT_IMAGES###</span>
	<span>###PRODUCT_DESCRIPTION###</span>
	<table>###SUBPART_PRODUCT_ATTRIBUTES###</table>
	<br/>
</div>
	<div>
	<!-- ###PRODUCT_BASKET_FOR_SINGLEVIEW### -->
			<!-- ###ARTICLE_VIEW### -->
		    ###STARTFRM###        
		    ###HIDDENFIELDS###
			<span>###ARTICLE_EANCODE###	</span>
			<span>###ARTICLE_STOCK###	</span>
	                <span>###ARTICLE_ORDERNUMBER###</span>
			<span>###ARTICLE_PRICE_GROSS###</span>
			<span>###DELIVERY_PRICE_GROSS###</span>    
			<span>###NO_STOCK###</span>
			<span><input type="input" class="qtyInput" value="###QTY_INPUT_VALUE###" name="###QTY_INPUT_NAME###" size="3">&nbsp
        	       <input type="submit" value="abschicken">
			</span>
			</form>
			<div>###ARTICLE_SELECT_ATTRIBUTES###</div>
			<table>###SUBPART_ARTICLE_ATTRIBUTES###</table>
			<!-- ###ARTICLE_VIEW### -->
			
			<!-- ###ARTICLE_VIEW_NOSTOCK### -->
		    ###STARTFRM###        
		    ###HIDDENFIELDS###
			<span>###ARTICLE_EANCODE###	</span>
			<span>###ARTICLE_STOCK###	</span>
	                <span>###ARTICLE_ORDERNUMBER###</span>
			<span>###ARTICLE_PRICE_GROSS###</span>
			<span>###DELIVERY_PRICE_GROSS###</span>    
			<span>###NO_STOCK###</span>
			<span><input type="input" class="qtyInput" value="###QTY_INPUT_VALUE###" name="###QTY_INPUT_NAME###" size="3">&nbsp
        	       <input type="submit" value="abschicken">
			</span>
			</form>
			<div>###ARTICLE_SELECT_ATTRIBUTES###</div>
			<table>###SUBPART_ARTICLE_ATTRIBUTES###</table>
			<!-- ###ARTICLE_VIEW_NOSTOCK### -->
	<!-- ###PRODUCT_BASKET_FOR_SINGLEVIEW### -->

	<!-- ###CATEGORY_ITEM### begin -->
		<li>
			<h3>###CATEGORY_ITEM_DETAILLINK### ###CATEGORY_ITEM_TITLE### ###CATEGORY_ITEM_DETAILLINK###</h3>
			<p>###CATEGORY_ITEM_SUBTITLE###</p>
			<p>###CATEGORY_ITEM_DESCRIPTION###</p>
			<p>###CATEGORY_ITEM_IMAGES###</p>
		</li>
	<!-- ###CATEGORY_ITEM### end -->
	</div>
<!-- ###PRODUCT_VIEW_DETAIL### end -->

<!-- ###PRODUCT_VIEW_DETAIL_NOSTOCK### begin-->
<div>
	<h3><!-- ###PRODUCT_LINK_DETAIL### -->###PRODUCT_TITLE###<!-- ###PRODUCT_LINK_DETAIL### --> </h3>
	<span>###PRODUCT_IMAGES###</span>
	<span>###PRODUCT_DESCRIPTION###</span>
	<table>###SUBPART_PRODUCT_ATTRIBUTES###</table>
	<br/>
</div>
	<div>
	<!-- ###PRODUCT_BASKET_FOR_SINGLEVIEW### -->
			<!-- ###ARTICLE_VIEW### -->
		    ###STARTFRM###        
		    ###HIDDENFIELDS###
			<span>###ARTICLE_EANCODE###	</span>
			<span>###ARTICLE_STOCK###	</span>
	                <span>###ARTICLE_ORDERNUMBER###</span>
			<span>###ARTICLE_PRICE_GROSS###</span>
			<span>###DELIVERY_PRICE_GROSS###</span>    
			<span>###NO_STOCK###</span>
			<span><input type="input" class="qtyInput" value="###QTY_INPUT_VALUE###" name="###QTY_INPUT_NAME###" size="3">&nbsp
        	       <input type="submit" value="abschicken">
			</span>
			</form>
			<div>###ARTICLE_SELECT_ATTRIBUTES###</div>
			<table>###SUBPART_ARTICLE_ATTRIBUTES###</table>
			<!-- ###ARTICLE_VIEW### -->
			
			<!-- ###ARTICLE_VIEW_NOSTOCK### -->
		    ###STARTFRM###        
		    ###HIDDENFIELDS###
			<span>###ARTICLE_EANCODE###	</span>
			<span>###ARTICLE_STOCK###	</span>
	                <span>###ARTICLE_ORDERNUMBER###</span>
			<span>###ARTICLE_PRICE_GROSS###</span>
			<span>###DELIVERY_PRICE_GROSS###</span>    
			<span>###NO_STOCK###</span>
			<span><input type="input" class="qtyInput" value="###QTY_INPUT_VALUE###" name="###QTY_INPUT_NAME###" size="3">&nbsp
        	       <input type="submit" value="abschicken">
			</span>
			</form>
			<div>###ARTICLE_SELECT_ATTRIBUTES###</div>
			<table>###SUBPART_ARTICLE_ATTRIBUTES###</table>
			<!-- ###ARTICLE_VIEW_NOSTOCK### -->
	<!-- ###PRODUCT_BASKET_FOR_SINGLEVIEW### -->

	<!-- ###CATEGORY_ITEM### begin -->
		<li>
			<h3>###CATEGORY_ITEM_DETAILLINK### ###CATEGORY_ITEM_TITLE### ###CATEGORY_ITEM_DETAILLINK###</h3>
			<p>###CATEGORY_ITEM_SUBTITLE###</p>
			<p>###CATEGORY_ITEM_DESCRIPTION###</p>
			<p>###CATEGORY_ITEM_IMAGES###</p>
		</li>
	<!-- ###CATEGORY_ITEM### end -->
	</div>
<!-- ###PRODUCT_VIEW_DETAIL_NOSTOCK### end -->


<!-- ###PRODUCT_ATTRIBUTES### begin-->
<tr class="specRowEven"><td style="padding-right:8px;">###PRODUCT_ATTRIBUTES_ICON###	###PRODUCT_ATTRIBUTES_TITLE###
</td><td>	###PRODUCT_ATTRIBUTES_VALUE### ###PRODUCT_ATTRIBUTES_UNIT### </td></tr>
<!-- ###PRODUCT_ATTRIBUTES### end -->

<!-- ###PRODUCT_ATTRIBUTES2### begin-->
<tr class="specRowOdd"><td style="padding-right:8px;">###PRODUCT_ATTRIBUTES_ICON###	###PRODUCT_ATTRIBUTES_TITLE###
</td><td>	###PRODUCT_ATTRIBUTES_VALUE### ###PRODUCT_ATTRIBUTES_UNIT### </td></tr>
<!-- ###PRODUCT_ATTRIBUTES2### end -->


<!-- ###ARTICLE_ATTRIBUTES### begin-->
<tr class="specRowEven"><td style="padding-right:8px;">###ARTICLE_ATTRIBUTES_ICON###	###ARTICLE_ATTRIBUTES_TITLE###
</td><td>	###ARTICLE_ATTRIBUTES_VALUE### ###ARTICLE_ATTRIBUTES_UNIT### </td></tr>
<!-- ###ARTICLE_ATTRIBUTES### end -->

<!-- ###ARTICLE_ATTRIBUTES2### begin-->
<tr class="specRowOdd"><td style="padding-right:8px;">###ARTICLE_ATTRIBUTES_ICON###	###ARTICLE_ATTRIBUTES_TITLE###
</td><td>	###ARTICLE_ATTRIBUTES_VALUE### ###ARTICLE_ATTRIBUTES_UNIT### </td></tr>
<!-- ###ARTICLE_ATTRIBUTES2### end -->

<!-- ###SELECT_ATTRIBUTES### begin-->
<table><tr class="specRow"><td style="padding-right:8px;">###SELECT_ATTRIBUTES_ICON###	###SELECT_ATTRIBUTES_TITLE###
</td><td>	###SELECT_ATTRIBUTES_VALUE### ###SELECT_ATTRIBUTES_UNIT### </td></tr></table>	
<!-- ###SELECT_ATTRIBUTES### end -->

<!-- ###PRODUCT_BASKET_SELECT_ATTRIBUTES### begin-->
<DIV class="cmrc_ProdBasketSelAttrContainer">
	<SPAN class="cmrc_ProdBasketSelAttrText"><u>###SELECT_ATTRIBUTES_TITLE###:</u> ###SELECT_ATTRIBUTES_SELECTBOX###</SPAN>
</DIV>
<!-- ###PRODUCT_BASKET_SELECT_ATTRIBUTES### end -->