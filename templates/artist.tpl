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

{include file='header.tpl' subheader='artist-header.tpl'}

<div about="{$id}" typeof="mo:MusicArtist">

    <div class="vcard">

        {if $fastmode != "1"}
        <!-- slow mode -->
        {else}
        <!-- fast mode -->
        {/if}

        {* We load player in sidebar instead, see footer include at bottom of file
		{if $fastmode != "1" && $streamable}
		<div id='player-container'>
		{include file='player.tpl'}
		</div>
		{/if}
*}

        {if $bio_summary}
        <div class="note" id="bio" property="bio:olb" datatype="" style='clear: left;'>
            <h4>{t}Biography{/t}</h4>
            <p>{$bio_summary}</p>
        </div>
        {/if}
    </div>
    {if $fastmode != "1"}

    <h3>{t}Albums{/t}</h3>
    <!-- <p><small>Limited to 25 albums</small></p> -->
    <ul class="album-list">
        {section name=i loop=$albums max=100}
        {if $albums[i]->name}
        <li about="{$albums[i]->id}" property="dc:title" content="{$albums[i]->name|escape:'html':'UTF-8'}" typeof="mo:Record" class="haudio">
            {if $albums[i]->mbid}
            {$albums[i]->mbid|coverartexists:100:"{$artist->name} / {$albums[i]->name|escape:'html':'UTF-8'}":{$albums[i]->getURL()}}
            {else}
            {"404"|coverartexists:100:"{$albums[i]->name|escape:'html':'UTF-8'}":{$albums[i]->getURL()}}
            {/if}
        </li>{/if}
        {/section}
    </ul>
    {if $add_album_link}<a href='{$add_album_link}'><strong>[{t}Add new album{/t}]</strong></a>{/if}


    {/if}

    {if $fastmode != "1" && !empty($similarArtists)}
    <h3>{t}Similar free artists{/t}</h3>
    <ul class="long-list">
        {section name=i loop=$similarArtists}
        <li><a href='{$similarArtists[i].url}'>{$similarArtists[i].artist}</a></li>
        {/section}
    </ul>
    {/if}


    {if $fastmode != "1" && !empty($tagcloud)}
    <h3>{t}Tags used to describe this artist{/t}</h3>
    <ul class="long-list">
        {section name=i loop=$tagcloud}
        <li><a href='{$tagcloud[i].pageurl}' rel='tag'>{$tagcloud[i].name} ({$tagcloud[i].count})</a></li>
        {/section}
    </ul>
    {/if}

    <hr>

    {if $fastmode != "1" && $artist->getListenerCount()}
    <section class="h-feed" id="tops">
        <h3 id="listeners">Top listeners</h3>
        <ul>
            {foreach from=$artist->getTopListeners() item=i}
            <li class="h-entry">
                <a class="u-url" href="{$i.userurl}">{$i.username}</a>
            </li>
            {/foreach}
        </ul>
    </section>
    {/if}

    {if $fastmode != "1"}

    <h3>Elsewhere</h3>

    <ul class="long-list">
        <li><a href="https://www.youtube.com/results?search_query={$artist->name}">Find {$artist->name} on YouTube</a></li>
        {if $fastmode != "1" && $mblinks}
        {foreach from=$mblinks item=v}
        <li><a href="{$v}" rel="nofollow">{$artist->name} on {$v|get_domain_name_from_url}</a></li>
        {/foreach}
        {/if}
    </ul>

    <div class="credits-box">
        {if $mblinks}
        <p><a href="https://musicbrainz.org/artist/{$artist->mbid}">{$artist->name} on MusicBrainz</a> (<a href="https://musicbrainz.org/artist/{$artist->mbid}/edit#external-links-editor-container">Add/edit links on MusicBrainz</a>)</p>
        {/if}
        {if $image}
        <p><small>Image credit: <a href="https://en.wikipedia.org/wiki/{$artist->name}">{$artist->name} at Wikipedia</a></small></p>
        {/if}
        {if $bio_summary}
        <p><small>Biography: <a href="https://last.fm/artist/{$artist->name}/+wiki">Last FM wiki</a> (CC BY-SA 3.0)</a></small></p>
        {/if}
    </div>

    {/if}

    <!--

https://www.discogs.com/search?q=new+order&type=artist&strict=true&page=1

	<a href="https://www.discogs.com/search?q={$artist->name}&type=artist">Find {$artist->name} on Discogs</a> | <a href="https://bandcamp.com/search?q={$artist->name}&item_type=b&from=results">Find {$artist->name} on Bandcamp</a> | <a href="https://www.youtube.com/results?search_query={$artist->name}">Find {$artist->name} on YouTube</a></p>
	 -->

</div>

{if $fastmode != "1"}
{include file='footer.tpl' sideplayer=true}
{/if}
