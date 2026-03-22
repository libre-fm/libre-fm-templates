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


{*	------------------
	albumlist.tpl
	------------------
	Dynamic smarty template intended to be used on any page with a list of albums.

	@param array  items           Array of albums ((artist, album, streamable, image, artistlibraryurl, albumlibraryurl, artisturl, albumurl, tagged, tag, freq) .. )
	@param string class           Additional CSS table classes
	@param bool   thead           Show table header
	@param bool   fstream         Show streamable field, used by $i.streamable
	@param bool   fartist         Show artist in name field, used by $i.artist
	@param bool   fimage          Show image field, used by $i.image
	@param bool   fbutton         Show button field, used by button if page is owned by user
	@param bool   fcount          Show count field, used by $i.freq)
	@param string url_sort_name   URL string to toggle sort order by name
	@param string url_sort_count  URL string to toggle sort order by count
	@param string type            Type of list, 'tagged' (used to show correct button)
*}
<ul class="long-list">
    {foreach from=$items item=i}
    {if $i.album}
    <!-- {$i.mbid} -->
    <li>
        {if $i.albumlibraryurl}
        <a href="{$i.albumlibraryurl|escape:'html'}">{$i.album}</a>
        {else}
        <a href="{$i.albumurl|escape:'html'}">{$i.album}</a>
        {/if}
        {if $fartist} by
        {if $i.artistlibraryurl}
        <a href="{$i.artistlibraryurl|escape:'html'}">{$i.artist}</a>
        {else}
        <a href="{$i.artisturl|escape:'html'}">{$i.artist}</a>
        {/if}
        {/if}
    </li>
    {/if}
    {/foreach}
</ul>
