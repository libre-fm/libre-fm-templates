{*

'Track' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Track' Template for Libre.fm
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

  <div class="card-body">

<ul>
    {if !empty($track->duration)}<li property="mo:durationXSD" datatype="xsd:duration" content="PT{$track->duration}S">Duration: {$duration}</li>{/if}
    <li property="rdfs:comment">{t}Playcount {/t} <span class="badge">{$track->getPlayCount()}</span></li>
    <li property="rdfs:comment">{t}Listeners {/t} <span class="badge">{$track->getListenerCount()}</span></li>
</ul>

{if $logged_in}
{if $isloved}
<form action='' method='post'>
    <button class="btn btn-danger btn-sm" type='submit' name='unlove' id='unlove' value='{t}Unlove this track{/t}'>
        <i class="bi bi-heartbreak-fill"></i>
        {t}Unlove this track{/t}
    </button>
</form>
{else}
<form action='' method='post'>
    <button class="btn btn-primary btn-sm" type='submit' name='love' id='love' value='{t}Love this track{/t}'>
        <i class="bi bi-heart-fill"></i>
        {t}Love this track{/t}
    </button>
</form>
{/if}
{/if}

<hr/>

{if !empty($tagcloud)}
<h3 class="text-center">{t}Tags used to describe this track{/t}</h3>
<ul class="tagcloud">
    {section name=i loop=$tagcloud}
    <li><a href='{$tagcloud[i].pageurl}' rel='tag'>{$tagcloud[i].name} ({$tagcloud[i].count})</a></li>
    {/section}
</ul>
{/if}

</div>
</div>
</div>

<p>{if $album->mbid}<a href="https://musicbrainz.org/release-group/{$album->mbid}" class="btn btn-success" target="_blank">Show on MusicBrainz</a>{/if}</p>


{include file='footer.tpl' sideplayer=true station='track'}
