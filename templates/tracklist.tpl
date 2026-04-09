{*

'Tracklist' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Tracklist' Template for Libre.fm
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
	tracklist.tpl
	------------------
	Dynamic smarty template intended to be used on any page with a list of tracks.

	@param array  items           Array of tracks ((artist, track, streamable, loved, image, artistlibraryurl, tracklibraryurl, artisturl, trackurl, tagged, tag, freq) .. )
	@param string class           CSS table class (if class equals 'library' *libraryurl will be used instead of *url)
	@param bool   thead           Show table header
	@param bool   fstream         Show streamable field, used by $i.streamable
	@param bool   flove           Show loved field, used by $i.loved
	@param bool   fartist         Show artist in name field, used by $i.artist
	@param bool   fimage          Show image field, used by $i.image
	@param bool   ftag            Show tag field, used by $i.tag
	@param bool   fbutton         Show button field, used by button if page is owned by user
	@param bool   fcount          Show count field, used by $i.freq
	@param bool   ftime           Show time field, used by $i.timehuman
	@param string url_sort_name   URL string to toggle sort order by name
	@param string url_sort_count  URL string to toggle sort order by count
	@param string type            Type of list, 'tagged' (used to show correct button)
*}
<table class="endtimes-table {$class} tracklist">
    <thead>
        <tr>
            <th class="title w-50" scope="col">Track</th>
            <th class="artist w-25" scope="col">Artist</th>
            <th class="time w-25" scope="col">Time</th>
        </tr>
    </thead>
    <tbody>
        {foreach from=$items item=i}
        <tr>
            <td class="name">
                {if $linktoscrobbles}
                	<a href="/user/{$me->name}/scrobble/{$i.time}" rel="prefetch bookmark">{$i.track|unescape:'html'}</a>
                {else}
                	{if $i.tracklibraryurl}
                		<a href="{$i.tracklibraryurl|escape:'html'}">{$i.track|unescape:'html'}</a>
               		{else}
                		<a href="{$i.trackurl|escape:'html'}">{$i.track|unescape:'html'}</a>
                	{/if}
                {/if}
            </td>
            <td>
                {if $fartist}
	                {if $i.artistlibraryurl}
	                	<a href="{$i.artistlibraryurl|escape:'html'}">{$i.artist|unescape:'html'}</a>
				{else}
	                	<a href="{$i.artisturl|escape:'html'}">{$i.artist|unescape:'html'}</a>
	                {/if}
                {/if}
            </td>

            <td class="time">
                <time datetime="{$i.time|date_format:"%Y-%m-%d %H:%M:%S"}" title="{$i.time|date_format:"%c"}">{$i.timehuman}</time>
            </td>
        </tr>
        {/foreach}
    </tbody>
</table>
