{*

'User Library Music' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Library Music' Template for Libre.fm
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

{include file='header.tpl' subheader='user-header.tpl'}

<h2>Library</h2> {include file='submenu.tpl' submenu=$page->menu}

<h3>Top Artists</h3>

{if $page->urls.sort_name}
<a href="{$page->urls.sort_name}" class="btn btn-success">Sort by artist name</a>
{/if}

{if $page->urls.sort_count}
<a href="{$page->urls.sort_count}" class="btn btn-success">Sort by play count</a>
{/if}

{if $page->artists}
{include file='artistlist.tpl' class=#librarytable# items=$page->artists thead=true fstream=true fimage=true fcount=true}
{/if}

<h3>Top tracks</h3>

{if $page->tracks}
{include file='tracklist.tpl' class=#librarytable# items=$page->tracks thead=true fstream=true fimage=true fcount=true}
{/if}

<details>
{$page|var_dump
</details>

{include file='paginate.tpl'}                                                                                                                       

{include file='footer.tpl'}
