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
    <div class="col-sm-3">
        <a href="{$page->album_url|escape:'html'}"><img class="img-responsive img-thumbnail margin-top img-lazy" src="https://turtle.libre.fm/cover.php?mbid={$page->album->mbid|escape:'url'}&artist={$page->artist->name|escape:'url'}&album={$page->album->name|escape:'url'}" alt loading="lazy" width="250" height="250"></a>
    </div>
    <div class="col-sm-9">
        <h3>{$page->album->name}</h3>
        <p>
            by
            <a href="{$page->artist_library_url|escape:'html'}">
                {$page->artist->name}</a>
        </p>
        <p>
            <a class="btn btn-success" href="{$page->album_url|escape:'html'}">Go to album page</a>
        </p>
    </div>
</div>

{if $page->tracks}
<h4>Tracks on this album</h4>
<ul class="list-group">
{foreach $page->tracks as $topartist}
<li class="list-group-item d-flex justify-content-between align-items-center">
    <a href="{$topartist['tracklibraryurl']}">{$topartist['track']}</a>
    <span class="badge text-bg-primary rounded-pill">{$topartist['freq']} listens</span>
</li>
{/foreach}
</ul>
{/if}



{include file='footer.tpl'}
