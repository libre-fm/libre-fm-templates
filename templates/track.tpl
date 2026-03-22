{*

'404 Error' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'404 Error' Template for Libre.fm
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

{include file='header.tpl' subheader='track-header.tpl'}

<h4>Appears on</h4>
{trackalbums artist=$track->artist_name track=$track->name}

{include file='albumlist.tpl' class=#table# items=$trackalbums fimage=false fstream=true ftime=true}

<ul>
    {if !empty($track->duration)}<li property="mo:durationXSD" datatype="xsd:duration" content="PT{$track->duration}S">Duration: {$duration}</li>{/if}
    <li property="rdfs:comment">{t}Playcount {/t} <span class="badge">{$track->getPlayCount()}</span></li>
    <li property="rdfs:comment">{t}Listeners {/t} <span class="badge">{$track->getListenerCount()}</span></li>
</ul>

{if $track->licenseurl && $track->license}
<p id='license'><a rel=":license" href="{$track->licenseurl}"><img class="img-responsive" src="{$img_url}/licenses/{$track->license}.png" alt="[ Track License ]" /></a></p>
{/if}



{if $track->streamable}
{if $track->downloadurl}
<p>
    <a class="btn btn-primary btn-xs" href='{$track->downloadurl}'>
        <span class="glyphicon glyphicon-download-alt"></span>
        {t}Download track{/t}
    </a>
</p>
{elseif $track->streamurl}
<p>
    <a class="btn btn-primary btn-xs" href='{$track->streamurl}'>
        <span class="glyphicon glyphicon-download-alt"></span>
        {t}Download track{/t}
    </a>
</p>
{/if}
{/if}


{if $logged_in}
<h3>Love this track?</h3>
{if $isloved}
<form action='' method='post'>
    <button class="btn btn-danger btn-xs" type='submit' name='unlove' id='unlove' value='{t}Unlove this track{/t}'>
        {t}Unlove this track{/t}
    </button>
</form>
{else}
<form action='' method='post'>
    <button class="btn btn-danger btn-xs" type='submit' name='love' id='love' value='{t}Love this track{/t}'>
        <span class="glyphicon glyphicon-heart"></span>
        {t}Love this track{/t}
    </button>
</form>
{/if}
{/if}



{if !empty($tagcloud)}
<h3 class="text-center">{t}Tags used to describe this track{/t}</h3>
<ul class="tagcloud">
    {section name=i loop=$tagcloud}
    <li><a href='{$tagcloud[i].pageurl}' rel='tag'>{$tagcloud[i].name} ({$tagcloud[i].count})</a></li>
    {/section}
</ul>
{/if}

{* Hack to get player if track is streamable *}
{if $track->streamable}
{$streamable = true}
{/if}

<p>{if $album->mbid}<a href="https://musicbrainz.org/release-group/{$album->mbid}">{$album->name} on MusicBrainz</a> &middot;{/if} <a href="https://www.discogs.com/search?q={$track->artist_name}+{$track->name}">Find {$track->name} on Discogs</a> &middot; <a href="https://bandcamp.com/search?q={$track->artist_name}+{$track->name}&from=results">Find {$track->name} on Bandcamp</a> &middot; <a href="https://www.youtube.com/results?search_query={$track->artist_name}+{$track->name}">Find {$track->name} on YouTube</a></p>



{include file='footer.tpl' sideplayer=true station='track'}
