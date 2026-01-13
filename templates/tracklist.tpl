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
			{if $i.tracklibraryurl}
				<a href="{$i.tracklibraryurl|escape:'html'}">{$i.track|escape:'html'}</a>
			{else}
				<a href="{$i.trackurl|escape:'html'}">{$i.track|escape:'html'}</a>
			{/if}
</td>
<td>
			{if $fartist}
				{if $i.artistlibraryurl}
					<a href="{$i.artistlibraryurl|escape:'html'}">{$i.artist}</a>
				{else}
					<a href="{$i.artisturl|escape:'html'}">{$i.artist}</a>
				{/if}
			{/if}
                {if $me->uniqueid}
                  <!-- <span class="shareable">
                    &nbsp; <small><a aria-label="Share listening to {$i.track} by {$i.artist}, {$i.timehuman}" title="Share {$i.track} by {$i.artist}" href="/user/{$me->name}/scrobble/{$i.time}">Share</a></small>
                  </span> -->
                {/if}
		</td>

		<td class="time">
		{if $me->uniqueid}
                    <a href="/user/{$me->name}/scrobble/{$i.time}">{$i.timehuman}</a>
                {else}
		    {$i.timehuman}
                {/if}
		</td>
	</tr>
	{/foreach}
	</tbody>
</table>
