{*

'Tag' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Tag' Template for Libre.fm
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

<h2>{$tag|escape:'htmlall':'UTF-8'|capitalize}</h2>

<ul class="tagcloud">
    {section name=i loop=$tagcloud}
    <li><a href='{$tagcloud[i].pageurl}' rel='tag'>{$tagcloud[i].name} ({$tagcloud[i].count})</a></li>
    {/section}
</ul>

{include file='footer.tpl'}
