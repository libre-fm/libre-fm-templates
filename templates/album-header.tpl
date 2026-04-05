{*

'Album Header' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Album Header' Template for Libre.fm
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

<div class="alert alert-info">

{if $album->mbid}
{$album->mbid|coverartexists:250:"":""}
{else}
<!-- <p>No MusicBrainz ID found for {$album->name}. Checking now.</p> -->
<img style="background: whitesmoke url(https://turtle.libre.fm/spinner.gif); background-position: center center; background-repeat: no-repeat; border: 1px solid white;" width="250" height="250" src="https://turtle.libre.fm/cover.php?album={$album->name|escape:'url'}&artist={$artist->name|escape:'url'}" alt="" loading="lazy" />
{/if}

<h2>
    {$album->name}
</h2>
<p>by <a href="{$artist->getURL()}">{$artist->name}</a></p>
{if $album->releasedate}
<p>Released on {$album->releasedate|date_format:"%Y-%m-%d"}</p>
{/if}

</div>

{include file='submenu.tpl'}
