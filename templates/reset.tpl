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

{include file='mini-header.tpl'}
<div class="page-header">
    <h1 class="text-center">{t}Reset my password{/t}</h1>
</div>

{if isset($errors)}
<div class="alert alert-danger alert-dismissable">
    <p id='errors'>{$errors}</p>
</div>
{/if}

{if isset($changed)}
<div class="alert alert-info alert-dismissable">
    {t}A new temporary password has been emailed to you.{/t}
</div>

{include file='kofi-tip.tpl'}

{elseif isset($sent)}
<div class="alert alert-info alert-dismissable">
    If we have an account that matches, {t}an email with further information has been sent to the email address associated with your profile.{/t}
</div>

{include file='kofi-tip.tpl'}

{else}
<form action="{$base_url}/reset.php" method='post' role='form' class="form-signin">
    <fieldset>
        <div id='invite'>

            <div class="alert alert-info">{t}Enter your username or e-mail address and we'll email you a link to reset your password. All passwords are encrypted in our database.{/t}</div>

            <p class="text-center">Need help? <a href="mailto:support@libre.fm">support@libre.fm</a></p>

            <div class="form-group mb-3">
                <label for='username'>{t}Username{/t}</label>
                <input class="form-control form-control-lg" id='username' name='user' placeholder="{t}Your username:{/t}" type='text' value='' />
            </div>

            <p>{t}or{/t}:</p>

            <div class="form-group mb-3">
                <label for='email'>{t}E-mail address{/t}</label>
                <input class="form-control form-control-lg" id='email' name='email' type='text' placeholder="{t}Your e-mail address:{/t}" value='' autofocus />
            </div>

            <div class="mb-3">
                <button class="btn btn-success btn-lg" type='submit' name='recover' value='{t}Reset my password!{/t}'>
                    {t}Reset my password!{/t}
                </button>
            </div>
        </div>

    </fieldset>

</form>
{/if}

{include file='mini-footer.tpl'}
