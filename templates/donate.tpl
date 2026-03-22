{*

'404 Error' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'404 Error' Template for Libre.fm
Copyright (c) 2026 Matt Lee <mattl@cnuk.org>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

*}

{$nosidebar=true}
{include file='mini-header.tpl'}

<h2 class="text-center" style="text-wrap: balance">Please donate to keep Libre.fm alive</h2>

<p class="text-center pt-20" style="text-wrap: balance">You can make a one-time donation or set up a monthly recurring donation to Libre.fm.</p>

<p class="text-center"><a class="btn btn-success" href="#paypal">Pay with PayPal</a></p>

{include file='kofi-tip.tpl'}

<div style="width: 100%; max-width: 500px; margin: 0 auto;" id="paypal">

    <h3 class="text-center pt-20" style="text-wrap: balance">One time donation via PayPal</h3>

    <form class="pt-20 mb-3 text-center" action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
        <input type="hidden" name="cmd" value="_s-xclick">
        <input type="hidden" name="hosted_button_id" value="9PTTFVFY4ETFE">
        <input type="image" class="pt-10" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
        <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
    </form>

    <h3 class="text-center pt-20" style="text-wrap: balance">Monthly recurring donation via PayPal</h3>

    <form class="pt-20 mb-3 text-center" action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
        <input type="hidden" name="cmd" value="_s-xclick">
        <input type="hidden" name="hosted_button_id" value="Q5PEP4MQWPY3J">
        <table style="margin: 0 auto">
            <tr>
                <td><input type="hidden" name="on0" value=""></td>
            </tr>
            <tr>
                <td><select class="form-select" name="os0">
                        <option value="$5">$5 : $5.00 USD - monthly</option>
                        <option value="$10">$10 : $10.00 USD - monthly</option>
                        <option value="$25">$25 : $25.00 USD - monthly</option>
                    </select> </td>
            </tr>
        </table>
        <input type="hidden" name="currency_code" value="USD">
        <input type="image" class="pt-10" src="https://www.paypalobjects.com/en_US/i/btn/btn_subscribeCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
        <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
    </form>

</div>

<hr>

<p class="text-center pt-20" style="margin-bottom: 50px; padding-bottom: 50px; text-wrap: balance">Thank you for using Libre.fm!</p>

{include file='mini-footer.tpl'}
