{*

'User Library Tags' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Library Tags' Template for Libre.fm
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

{if $page->tag_name}

<div class="row">
    <div class="col-sm-2">
        <img class="img-responsive" src="{$page->tag_image}" alt="[ Tag Image ]" />
    </div>
    <div class="col-sm-10">
        <p>
            <a class="btn btn-primary btn-xs" href="{$page->section_url}">
                <span class="glyphicon glyphicon-tag"></span>
                {$page->tag_name}
            </a>
        </p>
        <p>
            <a class="btn btn-primary btn-xs" href="{$page->tag_url}">
                <span class="glyphicon glyphicon-file"></span>
                tag page
            </a>
        </p>
    </div>
</div>

{if $page->tagged_artists}
<p><strong>Artists</strong> tagged with <span class="label label-default">{$page->tag_name}</span></p>
{include file='artistlist.tpl' class=#librarytable# owner=$page->user->name items=$page->tagged_artists fimage=true fstream=true fbutton=true type='tagged'}
{/if}
{if $page->tagged_albums}
<p><strong>Albums</strong> tagged with <span class="label label-default">{$page->tag_name}</span></p>
{include file='albumlist.tpl' class=#librarytable# items=$page->tagged_albums fartist=true fimage=true fstream=true fbutton=true type='tagged'}
{/if}
{if $page->tagged_tracks}
<p><strong>Tracks</strong> tagged with <span class="label label-default">{$page->tag_name}</span></p>
{include file='tracklist.tpl' class=#librarytable# items=$page->tagged_tracks fartist=true fstream=true fbutton=true type='tagged'}
{/if}
{else}

{if $page->tags}
{include file='taglist.tpl' class=#librarytable# items=$page->tags thead=true fcount=true}
{/if}
{/if}

{include file='footer.tpl'}
