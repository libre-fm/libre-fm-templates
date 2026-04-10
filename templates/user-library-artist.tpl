{*

'User Library Artist' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Library Artist' Template for Libre.fm
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
        <img class="img-responsive img-thumbnail margin-top" style="background: whitesmoke url(https://turtle.libre.fm/spinner.gif); background-position: center center; background-repeat: no-repeat;" src="{$page->artist_image}" alt loading="lazy" width="250" height="250" />
    </div>
    <div class="col-sm-9">

        <h3>{$page->artist->name}</h3>
        {if $page->artist->homepage}
        <p>
                <a class="btn btn-primary" href="{$page->artist->homepage}">
                    {$page->artist->homepage}
                </a>
        </p>
        {/if}
        <p><a class="btn btn-success" href="{$page->artist_url}">Go to artist page</a></p>
    </div>
</div>

<p class="margin-top">
    <a href="{$page->section_url|escape:'html'}">
        <i class="bi bi-chevron-left"></i>
        Show all Artists
    </a>
</p>

{if $page->albums}
<h4>Albums by this artist</h4>
{include file='albumlist.tpl' class=#librarytable# items=$page->albums thead=true fimage=true fcount=true fstream=true}
{/if}

{if $page->tracks}
<h4>Tracks by this artist</h4>
{include file='tracklist.tpl' class=#librarytable# items=$page->tracks thead=true fstream=true flove=true ftag=true fcount=true}
{/if}

{include file='paginate.tpl'}                                                                                                                       


{include file='footer.tpl'}
