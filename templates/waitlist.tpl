

{if isset($activated)}
{$nosidebar=true}
{include file='mini-header.tpl'}
        <h2 class="mb-3">{t}You're in!{/t}</h2>
	<p>{t escape=no}Your account has been activated! Check your email to get started.{/t}</p>

    <p>Libre.fm is run by one person, and sometimes that one person needs a break between adding new features and adding new accounts. Be kind and please be patient.</p>

</main>
{include file='footer.tpl'}

{elseif isset($registered)}
{$nosidebar=true}
{include file='mini-header.tpl'}
        <h2 class="mb-3">{t}Check your email now{/t}</h2>
	<p>{t}Please follow the link in your email to activate your account!{/t}</p>

</main>
{include file='mini-footer.tpl'}
{else}
{include file='mini-header.tpl'}
<!-- <div class="alert alert-info text-center lead">
Current waitlist: {$waitlist} users. {$waitlist2} accounts invited but haven't made an account yet.  
</div> -->

      <h2 class="mb-3">Register for Libre.fm</h2>

      <div class="alert alert-info">
	  <p>This free site allows you to keep track of your music listening habits using a variety of <a href="http://wiki.libre.fm/Clients" target="_blank">third-party clients</a>. For streaming music, we recommend <a target="_blank" href="https://webscrobbler.com">Web Scrobbler</a>.</p>
      {if ($totals)}
		{$totals}
	  {/if}
      </div>

{if (!$logged_in)}
<!-- <div class="alert alert-secondary">
Expected time to get an account after joining the waitlist is currently a few minutes. New accounts are being added daily.
</div> -->
{/if}

      <!-- <p class="lead">This is a waitlist for Libre.fm.</p> -->

      <form class="form-signin mt-1" method="post" action=''>

      	{if isset($errors)}
            <div class="alert alert-danger alert-dismissable">
	      <p id='errors'>{$errors}</p>
	    </div>	
	{/if}

<fieldset>
<!-- <div class="alert alert-warning">
You'll get an email inviting you to pick a username later
</div> --> 
<div class="mb-3">
  <label class="form-label" for='email'>{t}Email address{/t}</label>
        <input type="email" class="form-control form-control-lg" placeholder="{t}Your e-mail address:{/t}" id="email" name="email" required />
</div>

<div class="mb-3 form-check">
          <input class="form-check-input" type="checkbox" required value="remember-me" id="foo-check" name="foo-check"> 
        <label class="form-check-label" for="foo-check">I read this form carefully, <mark>double-checked my email address</mark> and agree to the <a href="/terms" target="_blank">terms and conditions</a> and <a href="/privacy" target="_blank">privacy policy</a>. I am over 18 years of age. Gen AI is trash. LLMs are trash. Open Web forever.</label>
</div>
<!-- <div class="mb-3 form-check">
          <input class="form-check-input" type="checkbox" required value="" id="foo-wait" name="foo-wait"> 
        <label class="form-check-label" for="foo-wait">I understand there may be a small delay to receive an invite.</label>
</div> --> 
<div class="mb-3">
        <button class="btn btn-lg btn-success" name="register" type="submit" value="{t}Join waitlist{/t}">Register</button>
</div>
</fieldset>

      </form>

	    <div class="alert alert-primary">
      	{t}We won't sell, swap or give away your email address. You can optionally include personal data on your profile, which is displayed publicly.{/t}
        </div>


{include file='mini-footer.tpl'}
{/if}

