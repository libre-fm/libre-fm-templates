{*

Template based on 'Album' Template for GNU FM
Copyright (c) 2009 Free Software Foundation, Inc

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
</div>

<ul>
    {if !empty($album->duration)}<li property="mo:durationXSD" datatype="xsd:duration" content="PT{$album->duration}S">Duration: {$duration}</li>{/if}
    <li property="rdfs:comment">{t}Playcount {/t} <span class="badge">{$album->getPlayCount()}</span></li>
</ul>


{if $albumtracks}
<p>This is a list from <a href="https://musicbrainz.org/mbid/{$album->mbid}" target="_blank">MusicBrainz</a>, so some (or even all) of these may not yet exist in the Libre.fm database yet until someone listens to them.</p>
    <h4>Tracks</h4>
    <ol class="list-group list-group-numbered mb-3">
    {foreach $albumtracks as $track}
        <li class="list-group-item"><a href="/artist/{$artist->name|replace:' ':'+'|escape:'html'}/album/{$album->name|replace:' ':'+'|escape:'html'}/track/{$track.title|replace:' ':'+'|escape:'html'}" rel="bookmark">{$track.title}</a></li>
    {/foreach}
    </ol>
{/if}

<p>{if $album->mbid}<a href="https://musicbrainz.org/mbid/{$album->mbid}" class="btn btn-success" target="_blank">Show on MusicBrainz</a>{/if}</p>


</div>

{include file='footer.tpl' sideplayer=true station=$album_station}
