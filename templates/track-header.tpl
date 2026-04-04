{*

'Track header' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Track header' Template for Libre.fm
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

{if $album}

{if $album->mbid}
<img class="img-responsive" src="https://coverartarchive.org/release-group/{$album->mbid}/front-250" alt="" height="250" loading="lazy" />
{else}
<p><img style="background: #666; border: 1px solid white;" width="250" height="250" src="https://turtle.libre.fm/cover.php?album={$album->name|escape:'url'}&artist={$artist->name|escape:'url'}" alt="" loading="lazy" /></p>
{/if}
<!--
<details><summary>Debugging</summary><p class="text-center"><small><a target="_blank" href="https://github.com/libre-fm/libre-fm/issues/68">Album art feedback</a> or <a target="_blank"href="https://turtle.libre.fm/cover.php?album={$album->name|escape:'url'}&artist={$artist->name|escape:'url'}&stop=1">debug</a></small></p></details> -->

<h2>
    {$track->name}
</h2>
<h3>from <a href="{$album->getURL()}">{$album->name}</a></h3>
<h4>by <a href="{$artist->getURL()}">{$artist->name}</a></h4>
{else}
<h2>
    {$track->name}
</h2>
<h3><a href="{$artist->getURL()}">{$artist->name}</a></h3>
{/if}


{include file='submenu.tpl'}
