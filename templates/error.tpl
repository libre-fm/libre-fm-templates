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
