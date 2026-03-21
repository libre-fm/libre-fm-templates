{include file='mini-header.tpl'}

<div class="alert alert-danger">
<h2 style='color: red'>{$pagetitle}</h2>
{$error_message|escape:'htmlall'}
</div>

<div class="alert">
<p>Need help? <a href="mailto:support@libre.fm">support@libre.fm</a></p>
</div>

<div class="alert alert-info">
<h3 style='color: black'>Where next?</h3>
<ul>
{if (!$logged_in)}
                  <li><a href="/login.php">Login</a></li>
                  <li><a href="/reset.php">Reset my password</a></li>
                  <li><a href="/waitlist.php">Register</a></li>
                  {/if}
                  {if ($logged_in)}
                  <li><a href="/user-edit.php">Edit my profile/change password</a></li>
                  <li><a href="/recap">Recap</a></li>
                  {/if}
</ul>
</div>

{include file='mini-footer.tpl'}
