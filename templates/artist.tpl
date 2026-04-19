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

<div about="{$id}" typeof="mo:MusicArtist">

    <div class="vcard">

        {if $bio_summary}
        <div class="note" id="bio" property="bio:olb" datatype="" style='clear: left;'>
            <h4>{t}Biography{/t}</h4>
            <p>{$bio_summary}</p>
        </div>
        {/if}
    </div>



<div class="alert alert-info">
<p>Artist pages have been temporarily minimized for performance reasons. I'm actively working on improving the performance and adding more indexes to the database.</p>
</div>


   
  

    
    
   


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

</div>
</div>
</div>

{include file='footer.tpl' sideplayer=true}
