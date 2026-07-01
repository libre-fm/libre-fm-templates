{*

Template based on 'Waitlist (aka registration)' Template for GNU FM
Copyright (c) 2009 Free Software Foundation, Inc

'Waitlist (aka registration)' Template for Libre.fm
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

{if isset($activated)}
{$nosidebar=true}
{include file='mini-header.tpl'}
<h2 class="mb-3">Your account has been activated! Check your email...</h2>

<p>You will receive an email in 1-2 minutes to let you pick a username.</p>

<p>Accounts without a username are automatically removed after 48 hours.</p>

{include file='kofi-tip.tpl'}

</main>
{include file='footer.tpl'}

{elseif isset($registered)}
{$nosidebar=true}
{include file='mini-header.tpl'}
<h2 class="mb-3">{t}Check your email now{/t}</h2>
<p>An email was just sent to: <mark>{$emailaddress}</mark></p>
<p>{t}Please follow the link in your email to activate your account!{/t}</p>

<p>If you don't get an email please double check your email address and email <a href="mailto:support@libre.fm?subject=Waitlist%20help">support@libre.fm</a> (please include a useful subject line!).</p>

{include file='kofi-tip.tpl'}


</main>
{include file='mini-footer.tpl'}
{else}
{include file='mini-header.tpl'}
<!-- <div class="alert alert-info text-center lead">
Current waitlist: {$waitlist} users. {$waitlist2} accounts invited but haven't made an account yet.
</div> -->


{if isset($errors)}
<div class="alert">
    <h2 class="mb-3">There was an error</h2>
    <p id='errors'>{$errors}</p>
</div>
{else}
<h2 class="mb-3">Register for Libre.fm</h2>



<div class="alert alert-info text-center" style="text-wrap: balance">
    This free site allows you to keep track of your music listening habits using a variety of <a href="http://wiki.libre.fm/Clients" target="_blank">third-party clients</a>. For users of streaming music websites such as Apple Music and Spotify, we recommend <a target="_blank" href="https://webscrobbler.com">Web Scrobbler</a>.
</div>

{/if}

{if (!$logged_in)}
<!-- <div class="alert alert-secondary">
Expected time to get an account after joining the waitlist is currently a few minutes. New accounts are being added daily.
</div> -->
{/if}

<!-- <p class="lead">This is a waitlist for Libre.fm.</p> -->

{if (!isset($errors))}
<form class="form-signin mt-1" method="post" action=''>




    <fieldset>
        <!-- <div class="alert alert-warning">
We're currently having some issues sending email so registration is currently not working. Things will be resolved ASAP.
</div> -->
        <div class="mb-3">
            <label class="form-label" for='email'>{t}Email address{/t}</label>
            <input type="email" class="form-control form-control-lg" placeholder="{t}Your e-mail address:{/t}" id="email" name="email" required />
        </div>

        <div class="mb-3 form-check">
            <input class="form-check-input" type="checkbox" required value="remember-me" id="foo-check" name="foo-check">
            <label class="form-check-label" for="foo-check">I read this form carefully, <mark>double-checked my email address</mark> and agree to the <a href="/terms" target="_blank">terms and conditions</a> and <a href="/privacy" target="_blank">privacy policy</a>. I am over 18 years of age and a human being. Gen AI is trash. LLMs are trash. Open Web forever.</label>
        </div>
        <div class="mb-3 form-check">
            <input class="form-check-input" type="checkbox" required value="remember-me" id="foo2-check" name="foo2-check">
            <label class="form-check-label" for="foo2-check">I understand Libre.fm is run by one person. I will be kind and patient.</label>
        </div>


<!-- <details class="mb-3 mt-3" style='background: whitesmoke; border: 1px solid #111;' >
<summary style='font-size: large; text-align: center;'>Hello BTS ARMY! Welcome to Libre.fm! Please read this...</summary>

    <div class="mb-3" style="border: 1px solid black; background: #ffffbb; padding: 1em;">

<p>Libre.fm is run by just one person -- that's me, Matt. I need to sleep, I also need to keep the site running...</p>

<ul>
<li>Please only send me one support email at a time. If you send me more than one, you waste my time and your time. Wasting time is one of the worst things in the world.</li>

<li>If you want me to import your Last.fm data, understand that I can only import the last 200 scrobbles, as well as any future scrobbles. Some of you have 700,000 scrobbles... I cannot import all of those today. Maybe soon.</li>

<li>If you have multiple Last.fm accounts, you will need to make multiple Libre.fm accounts.</li>

<li>I can only answer emails in English. I don't trust translation websites.</li>

<li>Send me as much information as you can in your email. If you're having issues, please attach a screenshot if you can.</li>

<li>Put a useful subject line on your email! Don't leave it blank. Those wind up in my spam folder.</li>

<li>Please do not submit more than one song listen every few minutes. Libre.fm is for humans, not bots.</li>

<li>If you can, <a href="/donate.php" target="_blank">please donate</a>.</li>

<li>Please be kind and patient.</li>
</ul>

<p>Best,<br>matt</p>
<p><a href="/user/mattl" target="_blank">You can see what I listen to</a></p>

<p><a href="https://b-cd.app/forum/switching-stream-tracking-apps?page=15&highlight=2163175" target="_blank">Please see my post on b-cd.app too</a>

</div>
</details> -->


        <!-- <div class="mb-3 form-check">
          <input class="form-check-input" type="checkbox" required value="" id="foo-wait" name="foo-wait">
        <label class="form-check-label" for="foo-wait">I understand there may be a small delay to receive an invite.</label>
</div> -->
        <div class="mb-3">
            <button class="btn btn-lg btn-success" name="register" type="submit" value="{t}Join waitlist{/t}">Register</button>
        </div>
    </fieldset>

</form>

{/if}

{if !isset($errors)}

<div class="alert alert-primary">
    {t}We won't sell, swap or give away your email address. You can optionally include personal data on your profile, which is displayed publicly.{/t}
</div>

{/if}

{include file='mini-footer.tpl'}
{/if}
