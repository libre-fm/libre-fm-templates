{*

'Add API key' Template for GNU FM
Copyright (c) 2026 Free Software Foundation, Inc

'Add API key' Template for Libre.fm
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
<h2 class="mb-3">Your API key for Libre.fm:</h2>

<ul>
<li>API key: {apikey}</li>
<li>Secret: {secret}</li>
<li>Issued at: {issued_at}</li>
<li>Expires at: {expires_at}</li>
<li>Description: {description}</li>
</ul>

<p><a href="https://developer.libre.fm">Developer documentation</a> but generally we implement the Last.fm API.</p>

<p>Email me at <a href="mailto:support@libre.fm">support@libre.fm</a> if you want to remove an API key or have any questions.</p>

<p>Don't forget to let me know when you have something cool to show off!</p>

{include file='mini-footer.tpl'}
