{*

'Registration (not currently used)' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Registration (not currently used)' Template for Libre.fm
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
{include file='header.tpl'}
<h2>{t}You're in!{/t}</h2>
<p class="lead">{t escape=no}Your account has been activated! You may now login!{/t}</p>
<p><a class="btn btn-primary btn-lg" href="{$base_url}/login.php">login!</a></p>

</main>
{include file='footer.tpl'}

{elseif isset($registered)}
{$nosidebar=true}
{include file='header.tpl'}
<h2>{t}Check your email now{/t}</h2>
<p class="lead">{t}Please follow the link in your email to activate your account!{/t}</p>

</main>
{include file='footer.tpl'}
{else}
{include file='mini-header.tpl'}

<h2>Sign up for a free account</h1>

    <form class="form-signin" method="post" action=''>

        {if isset($errors)}
        <div class="alert alert-danger alert-dismissable">
            <p id='errors'>{$errors}</p>
        </div>
        {/if}

        {include file='register-form.tpl'}

    </form>

    <div class="alert alert-info" role="alert">
        {t}We won't sell, swap or give away your email address. You can optionally include personal data on your profile, which is displayed publicly.{/t}
    </div>

    {include file='tips.tpl'}
    {include file='mini-footer.tpl'}
    {/if}
