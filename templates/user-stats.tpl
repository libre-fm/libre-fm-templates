{*

'User Stats' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Stats' Template for Libre.fm
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

<h3 class="mb-5 mt-5">Total tracks: {$totaltracks}</h3>

<p><mark>Sorry this page looks kind of empty and ugly right now. I am working on it. 17 year old JavaScript was very broken.</mark></p>

<ul>
<li><a href="#stats_by_artist">Top artists</a></li>
<li><a href="#stats_by_track">Top tracks</a></li>
<li><a href="#top-scrobble-days">Top scrobble days</a></li>
<li><a href="#stats_by_day">Scrobbles by day</a></li>
</ul>

<h4 class="mb-5 mt-5" id="stats_by_artist">Last 6 months: {t name=$me->name|escape:'html':'UTF-8'}%1's most played artists{/t} {$timeperiod}</h4>

<ul class="list-group">
{foreach $topartists as $topartist}
<li class="list-group-item d-flex justify-content-between align-items-center">
    <a href="{$topartist['artisturl']}">{$topartist['artist']}</a>
    <span class="badge text-bg-primary rounded-pill">{$topartist['freq']}</span>
</li>
{/foreach}
</ul>

<h4 class="mb-5 mt-5" id="stats_by_track">Last 6 months: {t name=$me->name|escape:'html':'UTF-8'}%1's top tracks{/t}</h4>

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

<h4 class="mb-5 mt-5" id="top-scrobble-days">Last 6 months: Top scrobble days</h4>

<ul class="list-group">
        {foreach $sortdays as $day}
<li class="list-group-item d-flex justify-content-between align-items-center">
<time datetime="{$day['date']}">
    {$day['date']|date_format:"%B %e, %Y"}</time>
    <span class="badge text-bg-primary rounded-pill">{$day['count']}</span>
</li>
{/foreach}
</ul>

<h4 class="mb-5 mt-5" id="stats_by_day">Last 6 months: {t name=$me->name|escape:'html':'UTF-8'}%1's scrobbles by day{/t}</h4>

<ul class="list-group">
        {foreach $topplaybydays as $day}
<li class="list-group-item d-flex justify-content-between align-items-center">
<time datetime="{$day['date']}">
    {$day['date']|date_format:"%B %e, %Y"}</time>
    <span class="badge text-bg-primary rounded-pill">{$day['count']}</span>
</li>
{/foreach}
</ul>

{include file='footer.tpl'}
