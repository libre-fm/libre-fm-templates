{*

'API Auth' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'API Auth' Template for Libre.fm
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
    <p><a target="_blank" href="http://developer.libre.fm">Developer? Follow our documentation</a></p>
    {else}
    <a target="_blank" href="{$clienturl}">{$clientname}</a>
    {/if}
    wants your permission to post the songs you listen to onto your Libre.fm account.
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
