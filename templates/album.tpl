{*

'Album' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Album' Template for Libre.fm
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

{include file='header.tpl' subheader='album-header.tpl'}

<h4>Tracks</h4>
{artisttracks artist=$album->artist_name album=$album->name}
{include file='tracklistish.tpl' class=#table# items=$artisttracks fstream=true}
{if $add_track_link}<a href='{$add_track_link}'><strong>{t}Add new track{/t}</strong></a>{/if}

{* Hack to get an album player for now, $album->isStreamable() would be better *}
{if $artisttracks[0].streamable}
{$streamable = true}
{$album_station = "librefm://artist/{$album->artist_name}/album/{$album->name}"}
{/if}

<p>{if $album->mbid}<a href="https://musicbrainz.org/release-group/{$album->mbid}">{$album->name} on MusicBrainz</a> &middot;
    {/if}<a href="https://www.discogs.com/search?q={$album->artist_name}+{$album->name}">Find {$album->name} on Discogs</a> &middot; <a href="https://bandcamp.com/search?q={$album->artist_name}+{$album->name}&from=results">Find {$album->name} on Bandcamp</a> &middot; <a href="https://www.youtube.com/results?search_query={$album->artist_name}+{$album->name}">Find {$album->name} on YouTube</a></p>



{include file='footer.tpl' sideplayer=true station=$album_station}
