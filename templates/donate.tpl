{$nosidebar=true}
{include file='mini-header.tpl'}

	  <h2 class="text-center">Please donate to keep Libre.fm alive</h2>

	  <p class="text-center pt-20">You can make a one-time donation or set up a monthly recurring donation to Libre.fm.</p>

<p class="text-center"><a class="btn btn-success" href="#paypal">Pay with PayPal</a></p>

{include file='kofi-tip.tpl'}

<div style="width: 100%; max-width: 500px; margin: 0 auto;" id="paypal">

	  <h3 class="text-center pt-20">One time donation via PayPal</h3>

	  <form class="pt-20 mb-3 text-center" action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
	    <input type="hidden" name="cmd" value="_s-xclick">
	    <input type="hidden" name="hosted_button_id" value="9PTTFVFY4ETFE">
	    <input type="image" class="pt-10" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
	    <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
	  </form>

	  <h3 class="text-center pt-20">Monthly recurring donation via PayPal</h3>

	  <form class="pt-20 mb-3 text-center" action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
	    <input type="hidden" name="cmd" value="_s-xclick">
	    <input type="hidden" name="hosted_button_id" value="Q5PEP4MQWPY3J">
	    <table style="margin: 0 auto">
	      <tr><td><input type="hidden" name="on0" value=""></td></tr><tr><td><select class="form-select" name="os0">
		<option value="$5">$5 : $5.00 USD - monthly</option>
		<option value="$10">$10 : $10.00 USD - monthly</option>
		<option value="$25">$25 : $25.00 USD - monthly</option>
	      </select> </td></tr>
	    </table>
	    <input type="hidden" name="currency_code" value="USD">
	    <input type="image" class="pt-10" src="https://www.paypalobjects.com/en_US/i/btn/btn_subscribeCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
	    <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
	  </form>

</div>

{include file='mini-footer.tpl'}

