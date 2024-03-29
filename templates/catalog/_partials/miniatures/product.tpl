{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{block name='product_miniature_item'}
  <article class="product-miniature js-product-miniature clearfix" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">
    <div class="thumbnail-container col-md-6">
      {block name='product_thumbnail'}
        <a href="{$product.url}" class="thumbnail product-thumbnail">
          <img
            src = "{$product.cover.bySize.home_default.url}"
            alt = "{$product.cover.legend}"
            data-full-size-image-url = "{$product.cover.large.url}"
          >
        </a>
      {/block}

        <div class="product-description">
          {block name='product_price_and_shipping'}
            {if $product.show_price}
              <div class="product-price-and-shipping">
                {if $product.has_discount}
                  {hook h='displayProductPriceBlock' product=$product type="old_price"}

                  <span class="regular-price">{$product.regular_price}</span>
                  {if $product.discount_type === 'percentage'}
                    <span class="discount-percentage">{$product.discount_percentage}</span>
                  {/if}
                {/if}

                {hook h='displayProductPriceBlock' product=$product type="before_price"}

                <span itemprop="price" class="price">{$product.price}</span>

                {hook h='displayProductPriceBlock' product=$product type='unit_price'}

              {hook h='displayProductPriceBlock' product=$product type='weight'}
            </div>
          {/if}
        {/block}

        {block name='product_description_short'}
          <div id="product-description-short" itemprop="description">{$product.description_short nofilter}</div>
        {/block}

        {block name='product_reviews'}
          {hook h='displayProductListReviews' product=$product}
        {/block}
      </div>
      
      {block name='product_flags'}
        <ul class="product-flags">
          {foreach from=$product.flags item=flag}
            <li class="{$flag.type}">{$flag.label}</li>
          {/foreach}
        </ul>
      {/block}

      <div class="highlighted-informations{if !$product.main_variants} no-variants{/if}">
        <a href="{$product.url}" class="quick-view hidden-md-up">{l s='SHOW ME MORE' d='Shop.Theme'}</a>
        {block name='quick_view'}
          <a class="quick-view" href="#" data-link-action="quickview">{l s='ADD TO CART' d='Shop.Theme.Actions'}</a>
        {/block}        
      </div>
    </div>
    {block name='product_images'}
      {if $product.images|@count > 1} 
        {foreach from=$product.images item=image}
          {if $image.id_image != $product.cover.id_image}
            <div class="col-md-6 hidden-sm-down thumbnail-banner" style="background-image:linear-gradient(rgba(20,20,20,0.375),rgba(20,20,20,0.3),rgba(20,20,20,0.425)),url({$image.bySize.list_default.url})">
              {block name='product_name'}
                <h1 class="product-title" itemprop="name">{$product.name|truncate:30:'...'}</h1>
              {/block}
              <a href="{$product.url}">{l s='SHOW ME MORE' d='Shop.Theme'}</a>
              {break}
            </div>
          {/if}
        {/foreach}

      {/if}
    {/block}
    
  </article>
{/block}
