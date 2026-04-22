{*

'Artist' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Artist' Template for Libre.fm
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

{include file='header.tpl' subheader='artist-header.tpl'}
</div>

{if $artist->mbid}

<div about="{$id}" typeof="mo:MusicArtist">

    <div class="vcard">

        {if $bio_summary}
        <div class="note" id="bio" property="bio:olb" datatype="" style='clear: left;'>
            <h4>{t}Biography{/t}</h4>
            <p class="lead">{$bio_summary}</p>
        </div>
        {/if}
    </div>



{if $mbdata}

<h2>Albums and compilations</h2>

<ul class="list-group h-feed mb-3">
{foreach from=$mbdata item=i}
  <li class="list-group-item d-flex justify-content-between align-items-center">
    <a href="./album/{$i.title|replace:' ':'+'|escape:'html'}" rel="bookmark">{$i.title} {if $i.country}({$i.country}){/if} {if $i.disambiguation}[{$i.disambiguation}]{/if}</a> {if $i.date}({$i.date}){/if}
  </li>
{/foreach}
</ul>

{/if}

    {if $artistpopular && $toptracks && $artisttoplisteners}

  <h3 class="mb-4 mt-4">Recent popular tracks</h3>

<ul class="list-group h-feed mb-3">
{foreach from=$toptracks item=i}
  <li class="list-group-item d-flex justify-content-between align-items-center">
    <a href="{$i.trackurl}">{$i.track}</a>
    <span class="badge text-bg-primary rounded-pill">{$i.freq}</span>
  </li>{/foreach}
</ul>



    <section class="h-feed" id="tops">
        <h3  class="mb-4 mt-4" id="listeners">Recent top listeners</h3>
        <ul class="list-group list-group-flush">
            {foreach from=$artisttoplisteners item=i}
            <li class="list-group-item h-entry d-flex justify-content-between align-items-center">
                <a class="u-url" href="{$i.userurl}">{$i.username}</a>
                <span class="badge text-bg-primary rounded-pill">{$i.freq}</span>
            </li>
            {/foreach}
        </ul>
    </section>
    {/if}


    <div class="alert alert-info">
        {if $artist->mbid}
        <p><a href="https://musicbrainz.org/artist/{$artist->mbid}">{$artist->name} on MusicBrainz</a> (<a href="https://musicbrainz.org/artist/{$artist->mbid}/edit#external-links-editor-container">Add/edit links on MusicBrainz</a>)</p>
        {/if}
        {if $image}
        <p><small>Image credit: <a href="https://en.wikipedia.org/wiki/{$artist->name}">{$artist->name} at Wikipedia</a></small></p>
        {/if}
        {if $bio_summary}
        <p><small>Biography: <a href="https://last.fm/artist/{$artist->name}/+wiki">Last FM wiki</a> (CC BY-SA 3.0)</a></small></p>
        {/if}
    </div>


{else}
<p>No MusicBrainz ID found for this artist. Work is underway to improve the matching of artists, if you'd like to help with your favorite artist please email <a href="mailto:support@libre.fm">support@libre.fm</a></p>

<p><a href="https://musicbrainz.org/search?query={$artist->name|escape:html}&type=artist&method=indexed" class="btn btn-success" target="_blank">Search MusicBrainz for '{$artist->name}'</a></p>

<p>If you find something you think matches, please send an email with the LFMID ({$artist->plainid}) and a link to the MusicBrainz artist page.</p>

<p>An example, here is <a href="https://musicbrainz.org/artist/b10bbbfc-cf9e-42e0-be17-e2c3e1d2600d" target="_blank">the MusicBrainz artist page for The Beatles</a>.</p>

{/if}

</div>
</div>
</div>

{include file='footer.tpl' sideplayer=true}
