{include file='mini-header.tpl'}

{if $error_msg}
<div class="alert alert-error">
	$error_msg}
</div>
{elseif $stage == 'deskapp2.2'}
<div class="alert alert-success">
	<p class="lead">Thank you very much {$username}. Your authorization has been recorded.</p>
	<p>You may now close this page.</p>
</div>
{else}
<div class="alert alert-primary">
	{if $username}<h2>Hello {$username}</h2>{/if}
	{if $clientname == 'Unknown client'}
		<a target="_blank" href="{$clienturl}">{$clientname}</a> with<br /> API key: <b>{$api_key}</b><br />
		{if $cb}
			Callback URL: <b>{$cb}</b><br />
		{/if}
	{else}
		<a target="_blank" href="{$clienturl}">{$clientname}</a>
	{/if}
	wants your permission to post to your Libre.fm account.
</div>
	<form method="post" action="">
		{if !$logged_in}
        <fieldset>
<div class="mb-3">
  <label class="form-label" for='username'>Username</label>
  <input class="form-control form-control-lg" id='username' name='username' type='text' value='' required autofocus>
</div>
<div class="mb-3">
  <label class="form-label" for='password'>Password</label>
  <input class="form-control form-control-lg" id='password' name='password' type='password' value='' required>
</div>
		{/if}
		<button type="submit" class="btn btn-success btn-lg" value="Log in">Log in</button>
		<input type="hidden" name="api_key" value="{$api_key}" />
		<input type="hidden" name="token" value="{$token}" />
		{if $cb}
			<input type="hidden" name="cb" value="{$cb}" />
		{/if}
	</form>
<p><a target="_blank" href="/reset.php">Reset your password</a> or <a href="mailto:support@libre.fm">support@libre.fm</a> if you're having any issues</p>
{/if}

{include file='mini-footer.tpl'}
