{include file='mini-header.tpl'}

<div class="alert alert-danger">

{if $default_theme != 'librefm'} {* librefm theme compat, may be removed after switch to BS3 theme *}
<h2 style="color: red">{$pagetitle}</h2>
{/if}
{$error_message|escape:'htmlall'}

</div>

<div class="alert alert-info"><h3 class="pt-20">Need help?</h3>

<ul>
<li><a href="/reset.php">Need to reset your password?</a></li>
<li>Have you tried <a href="https://webscrobbler.com" target="_blank">Web Scrobbler</a>? It helps you scrobble from streaming services like Spotify and Apple Music</li>
<li>Email <a href="mailto:support@libre.fm">support@libre.fm</a> for more help</li>
</ul>
</div>


{include file='mini-footer.tpl'}
