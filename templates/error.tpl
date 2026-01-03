{include file='mini-header.tpl'}

<div class="alert alert-danger">

{if $default_theme != 'librefm'} {* librefm theme compat, may be removed after switch to BS3 theme *}
<h2 style="color: red">{$pagetitle}</h2>
{/if}
{$error_message|escape:'htmlall'}

</div>

{include file='mini-footer.tpl'}
