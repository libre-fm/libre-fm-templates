{*

'User Library Tracks' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Library Tracks' Template for Libre.fm
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
        <img class="img-responsive margin-top" src="{$page->artist_image}" alt loading="lazy" width="250" height="250"  />
    </div>
    <div class="col-sm-8">

        <h3>{$page->track->name}</h3>

        <p>
            by <a href="{$page->artist_library_url|escape:'html'}">{$page->artist->name}</a>
        </p>

        <a href="{$page->track_url|escape: 'html'}">Go to track page</a>
    </div>
</div>

{include file='paginate.tpl'}                                                                                                                       

<h4>Personalized track info here</h4>

{include file='footer.tpl'}
