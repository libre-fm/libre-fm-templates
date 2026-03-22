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

{include file='header.tpl'}

<h2 property="dc:title">{t}Remove your profile{/t}</h2>

<div class="alert alert-info">
    <p>
        <strong>Confirmation mail</strong> has been sent to email on file for <strong>{$this_user->name}</strong>.
    </p>
    <p>You can find this <a href="/user-edit.php#email">on your profile</a>.</p>
</div>

{include file='footer.tpl'}
