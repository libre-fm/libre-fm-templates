{*

'Artist List' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Artist List' Template for Libre.fm
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
	artistlist.tpl
	------------------
	Dynamic smarty template intended to be used on any page with a list of artists.

	@param array  items           Array of artists ((artist, streamable, image, artistlibraryurl, artisturl, tagged, tag, freq, time) .. )
	@param string class           Additional CSS table classes
	@param bool   thead           Show table header
	@param bool   fstream         Show streamable field, used by $i.streamable
	@param bool   fimage          Show image field, used by $i.image
	@param bool   ftag            Show tag field, used by $i.tag
	@param bool   fbutton         Show button field, used by button if list is owned by user
	@param bool   fcount          Show count field, used by $i.freq)
	@param boot   ftime           Show timestamp field, used by $i.time)
	@param string type            Type of list, 'tagged' (used to show correct button)
*}

<ul class="list-group {$class} artistlist">
    {foreach from=$items item=i}
    <li class="list-group-item d-flex justify-content-between align-items-center">
        {if $fstream}
        {if $i.streamable}
        <!-- <td class="icon" title="Artist has streamable tracks">
		    <span class="glyphicon glyphicon-music">
		    </span>
		  </td> -->
        {/if}
        {/if}
        {if $i.artistlibraryurl}
        <a href="{$i.artistlibraryurl}">{$i.artist}</a>
        {else}
        <a href="{$i.artisturl}">{$i.artist}</a>
        {/if}
        {if $fcount}
        <span class="badge text-bg-primary rounded-pill">{$i['freq']}</span>
        {/if}
        <!-- {if $ftime}
        {$i.time}
        {/if} -->
    </li>
    {/foreach}
</ul>
