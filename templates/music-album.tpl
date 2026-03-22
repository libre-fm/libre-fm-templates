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

{include file='header.tpl' subheader='album-header.tpl'}
<br />
{if $page->tags}
<div style="clear:both;">
    <ul class="inline">
        {foreach $page->tags as $i}
        {if $i@index < 5}
        <li style="padding:0px; margin:0px;"><a class="label label-info">{$i.tag}</a></li>
        {else}
        <li style="padding:0px; margin:0px;display:none;"><a class="label label-info">{$i.tag}</a></li>
        {/if}
        {/foreach}
    </ul>
</div>
{/if}

<br />
<h4>{t}Tracks on this album{/t}</h4>todo:order by count or name
{if $page->tracks}
{include file='tracklist.tpl' class=#librarytable# items=$page->tracks fstream=true}
{/if}

{include file='footer.tpl' sideplayer=true}
