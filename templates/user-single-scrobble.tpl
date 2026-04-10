{*

'User Single Scrobble (HTML)' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Single Scrobble (HTML)' Template for Libre.fm
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

{include file='header.tpl'}

<div class="card mb-3 h-entry" style="width: 100%; max-width: 700px; margin: 1em auto;">
  <div class="row g-0">
    <div class="col-md-6 p-4">
      <img src="https://turtle.libre.fm/cover.php?mbid={$scrobbledata['mbid']}&album={$scrobbledata['album']|escape:'url'}&artist={$scrobbledata['artist']|escape:'url'}" alt="" loading="lazy" width="250" height="250" class="img-thumbnail img-lazy img-fluid rounded-start" alt>

      <p><small>Image provided by Cover Art Archive</small></p>

    </div>
    <div class="col-md-6">
      <div class="card-body">
        <div class="d-flex flex-row">
            <div class="p-2"><a href="/user/{$me->name}"><img loading="lazy" class="u-photo img-lazy" width="48" height="48" src="{$me->getAvatar(48)}" alt="{$me->name}'s profile"></a></div>
            <div class="p-2">
              <h2 class="mb-0 p-name" style="font-size: 1.5rem">{if $me->fullname}{$me->fullname}{else}{$me->name}{/if}</h2>
              <p>
                <small><a href="/user/{$me->name}">{$me->name}</a></small>
              </p>
            </div>
          </div>
          {if $track->artist_name}
          <h3 class="card-title" style="font-size: 1.25rem"><span class="p-music-track">{$track->name|escape:'html':'UTF-8'}</span></h3>
              <p class="card-text">{if $track->artist_name}by <span class="p-music-artist">{$track->artist_name|escape:'html':'UTF-8'}</a></span>{/if}{if $album} on <span class="p-music-album">{$album->name|escape:'html':'UTF-8'}</span>{/if}</p>
          {else}
              <h3 class="card-title" style="font-size: 1.25rem"><span class="p-music-track">{$scrobbledata['track']|escape:'html':'UTF-8'}</span></h3>
              <p class="card-text">{if $scrobbledata['artist']}by <span class="p-music-artist">{$scrobbledata['artist']|escape:'html':'UTF-8'}</span>{/if}{if $scrobbledata['album']} on <span class="p-music-album">{$scrobbledata['album']|escape:'html':'UTF-8'}</span>{/if}</p>
          {/if}
          
          <p class="card-text"><small class="text-muted"><time datetime="{$stamp}">{$stomp}</time></small></p>
        </div>
      </div>
    </div>
</div>

{if $isme}
<div class="alert alert-info">
    This is a new feature that gives you a unique URL for each song you've ever listened to. You can share it elsewhere and it can also be embedded on another website.
</div>
{/if}

<ul class="list-group">
    {section name=i loop=$extra_head_links}
    <li class="list-group-item"><a rel="{$extra_head_links[i].rel|escape:'html':'UTF-8'}" href="{$extra_head_links[i].href|escape:'UTF-8'}" type="{$extra_head_links[i].type|escape:'html':'UTF-8'}">{$extra_head_links[i].title|escape:'html':'UTF-8'}</a></li>
    {/section}
</ul>



{if ($logged_in)}
{if $isme}
<div class="alert alert-danger mt-3 mb-3">
    <h4>Delete this scrobble?</h4>
    <form action="/delete-a-scrobble.php" method="post">
        <input type="hidden" name="scrobble" value="{$scrobble}">
        <input type="hidden" name="isme" value="{$isme}">
        <input type="hidden" name="username" value="{$me->name}">
        <input type="hidden" name="sid" value="{$me->uniqueid}">
        <div class="form-check">
            <input class="form-check-input" type="checkbox" name="check" id="cb" value="1">
            <label for="cb" class="form-check-label">You must check this box to delete the scrobble</label>
        </div>
        <div class="mb-3">
            <input type="submit" name="submit" value="Delete this scrobble">
        </div>
    </form>
</div>
{/if}
{/if}

{include file='footer.tpl'}
