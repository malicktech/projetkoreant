{*
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
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
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2017 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if isset($banner_img)}
<section class="ido-bottom-banner" style="background-image:linear-gradient(rgba(100,100,100,0.325),rgba(100,100,100,0.325),rgba(100,100,100,0.325)),url({$banner_img})">
  <div class="ido-banner-content">
    <h1>{$banner_desc}</h1>
    <a class="banner-link" href="{$banner_link}">{l s='SHOW ME MORE' d='Shop.Theme'}</a>
  </div>
</section>
{/if}

{* TODO - move style code in Extarnal style sheet *}
