{*

'User Library Album' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Library Album' Template for Libre.fm
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

<div class="row">
    <div class="col-sm-4">
        <img class="img-responsive margin-top" src="{$page->album_image}" alt loading="lazy" width="250" height="250" />

    </div>
    <div class="col-sm-8">
        <h3>{$page->album->name}</h3>
        <p>
            by
            <a href="{$page->artist_library_url|escape:'html'}">
                {$page->artist->name}</a>
        </p>
        <p>
            <a href="{$page->album_url|escape:'html'}">Go to album page</a>
        </p>
    </div>
</div>

{if $page->tracks}
<h4>Tracks on this album</h4>
{include file='tracklist.tpl' class=#librarytable# items=$page->tracks thead=true fstream=true flove=true ftag=true fcount=true}
{/if}

{include file='paginate.tpl'}                                                                                                                       


{include file='footer.tpl'}
