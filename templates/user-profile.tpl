{*

'User Profile' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Profile' Template for Libre.fm
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

{include file='header.tpl' subheader='user-header.tpl' showbio=true}


{if $nowplaying}
<div class="alert alert-secondary">
    <p><strong>{t name=$me->name}%1{/t} is currently listening to: </strong></p>

	{if $nowplaying[0].mbid}
    <p><img src="https://coverartarchive.org/release/{$nowplaying[0].mbid}/front-250" title="Image from Cover Art Archive" loading="lazy" alt="" style="background: whitesmoke url(https://turtle.libre.fm/spinner.gif); background-position: center center; background-repeat: no-repeat; " width="120" height="120"></p>
	{else}
    <p><img src="https://turtle.libre.fm/cover.php?artist={$nowplaying[0].artist}&album={$nowplaying[0].album}" loading="lazy" alt="" style="background: whitesmoke url(https://turtle.libre.fm/spinner.gif); background-position: center center; background-repeat: no-repeat; " width="120" height="120"></p>
    {/if}

    <p><a class="alert-link" href="{$nowplaying[0].trackurl}">
            {$nowplaying[0].track}
        </a>
        by
        <a class="alert-link" href="{$nowplaying[0].artisturl}">
            {$nowplaying[0].artist}
        </a>
    </p>

    {if ($isme)}<a href="/user/{$this_user->name}/now">An image to embed this in another webpage</a><br><textarea class="form-control">&lt;a href="https://libre.fm/user/{$this_user->name}/"&gt;&lt;img src="https://libre.fm/user/{$this_user->name}/now" alt loading="lazy" style="width: 100%; max-width: 480px; height: auto;"&gt;&lt;/a&gt;</textarea>{/if}

</div>
{/if}

<h3 class="mt-3 mb-3">Recent plays</h3>

{include file="tracklist.tpl" class=#table# items=$scrobbles fimage=true fstream=true fartist=true flove=true ftime=true}

{if $topartists}

<p><a href="/user/{$me->name}/recent-tracks" class="btn btn-primary">More recent plays...</a></p>


<h3>{t name=$me->name}%1{/t}'s top 5 artists</h3>

<ul class="list-group">
{foreach $topartists as $topartist}
<li class="list-group-item d-flex justify-content-between align-items-center">
    <a href="{$topartist['artisturl']}">{$topartist['artist']}</a>
    <span class="badge text-bg-primary rounded-pill">{$topartist['freq']}</span>
</li>
{/foreach}
</ul>

<h3 class="mt-3 mb-3">Plays over the last 7 days</h3>

<ul class="list-group mb-3">
        {foreach $topplaybydays as $day}
<li class="list-group-item d-flex justify-content-between align-items-center">
<time datetime="{$day['date']}">
    {$day['date']|date_format:"%B %e, %Y"}</time>
    <span class="badge text-bg-primary rounded-pill">{$day['count']}</span>
</li>
{/foreach}
</ul>

<h3 class="mt-3 mb-3">Top tracks over the last 7 days</h3>

<table class="endtimes-table table table-condensed table-sortable table-striped table-hover library tracklist">
    <thead>
        <tr>
            <th class="title w-50" scope="col">Track</th>
            <th class="artist w-25" scope="col">Artist</th>
            <th class="time w-25" scope="col">Count</th>
        </tr>
    </thead>
    <tbody>
        {foreach $toptracksdata as $i}
        <tr>
            <td class="name">
                {if $i.tracklibraryurl}
                <a href="{$i.tracklibraryurl|escape:'html'}">{$i.track|unescape:'html'}</a>
                {else}
                <a href="{$i.trackurl|escape:'html'}">{$i.track|unescape:'html'}</a>
                {/if}
            </td>
            <td>
                {if $i.artistlibraryurl}
                <a href="{$i.artistlibraryurl|escape:'html'}">{$i.artist|unescape:'html'}</a>
                {else}
                <a href="{$i.artisturl|escape:'html'}">{$i.artist|unescape:'html'}</a>
                {/if}
            </td>

            <td class="count">
                {$i.freq}
            </td>
        </tr>
        {/foreach}
    </tbody>
</table>

<p><a href="/user/{$me->name}/stats" class="btn btn-primary">More stats...</a></p>

{/if}

<!--
{if !empty($lovedArtists)}
	<h4>{t name=$me->name}Libre artists that %1 loves{/t}</h4>
	<ul>
		{section name=i loop=$lovedArtists}
			<li><a href='{$lovedArtists[i].pageurl}'>{$lovedArtists[i].name}</a></li>
		{/section}
	</ul>
{/if}

{if !empty($recommendedArtists)}
	<h4>{t name=$me->name}Libre artists that %1 might like{/t}</h4>
	<ul>
		{foreach from=$recommendedArtists item=artist}
			<li><a href='{$artist.url}'>{$artist.artist}</a></li>
		{/foreach}
	</ul>
{/if} -->

{include file='footer.tpl'}
