{*

Template based on 'Album Header' Template for GNU FM
Copyright (c) 2009 Free Software Foundation, Inc

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

<div class="card mb-3">
<div class="card-body">
<h2>
    {$album->name}
</h2>

{if $album->mbid}
<img class="img-lazy img-thumbnail" width="250" height="250" src="https://turtle.libre.fm/cover.php?mbid={$album->mbid}&album={$album->name|escape:'url'}&artist={$artist->name|escape:'url'}" alt="" loading="lazy">
{else}
<!-- <p>No MusicBrainz ID found for {$album->name}. Checking now.</p> -->
<img class="img-lazy img-thumbnail" width="250" height="250" src="https://turtle.libre.fm/cover.php?album={$album->name|escape:'url'}&artist={$artist->name|escape:'url'}" alt="" loading="lazy">
{/if}

<p>by <a href="{$artist->getURL()}">{$artist->name}</a></p>
</div>
<div class="card-footer">
{if $album->releasedate}
<p>Released on {$album->releasedate|date_format:"%Y-%m-%d"}</p>
{/if}

<p><small>Artist MBID: <a href="https://musicbrainz.org/mbid/{$artist->mbid}" target="_blank">{$artist->mbid}</a> | LFMID: {$artist->plainid}</small></p>
{if $album->mbid}
<p><small>Album MBID: <a href="https://musicbrainz.org/mbid/{$album->mbid}" target="_blank">{$album->mbid}</a> | LFMID: {$album->plainid}</small></p>
{else}
<p><mark>Please help find the MusicBrainz ID for this album!</mark> (LFMID {$album->plainid})</p>
{/if}

</div>
</div>

{include file='submenu.tpl'}
