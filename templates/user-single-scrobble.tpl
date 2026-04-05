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

{if $track}

<div class="h-entry alert alert-dark">

    <h2 class="p-name"><a href="/user/{$me->name}">{$me->name}</a></h2>

    <p><a href="/user/{$me->name}"><img loading="lazy" class="u-photo" width="48" height="48" src="{$me->getAvatar(48)}" alt="{$me->name}'s profile"></a></h2>

{if $album->mbid}
<p><a href="{$url}"><img class="img-responsive" src="https://coverartarchive.org/release-group/{$album->mbid}/front-250" alt="" height="250" loading="lazy" /></a></p>
{else}
    <p><img style="background: #666; border: 1px solid white;" width="250" height="250" src="https://turtle.libre.fm/cover.php?album={$album|escape:'url'}&artist={$artist|escape:'url'}" alt="" loading="lazy" /></p>
{/if}
{if $artist->name}
    <p class="lead">Listened to <a href="{$track->getURL()}"><span class="p-music-track">{$track->name|escape:'html':'UTF-8'}</span> {if $track->artist_name}by <span class="p-music-artist">{$track->artist_name|escape:'html':'UTF-8'}</span>{/if}{if $album} on <span class="p-music-album">{$album->name|escape:'html':'UTF-8'}</span>{/if}</a></p>
    {else}
    <p class="lead">Listened to <span class="p-music-track">{$track|escape:'html':'UTF-8'}</span> {if $artist}by <span class="p-music-artist">{$artist|escape:'html':'UTF-8'}</span>{/if}{if $album} on <span class="p-music-album">{$album|escape:'html':'UTF-8'}</span>{/if}</a></p>
    <!-- <p class="text-center">Listened to <span class="p-music-track">{$track->name|escape:'html':'UTF-8'}</span> {if $track->artist_name}by <span class="p-music-artist"><a href="/artist/{$artist|escape:'html':'UTF-8'}">{$track->artist_name|escape:'html':'UTF-8'}</a></span>{/if}</p> -->
{/if}

    <p><time datetime="{$stamp}">{$stomp}</time></p>

</div>

{if $album->mbid}
<ul class="list-inline">
    {section name=i loop=$extra_head_links}
    <li class="list-inline-item"><a rel="{$extra_head_links[i].rel|escape:'html':'UTF-8'}" href="{$extra_head_links[i].href|escape:'UTF-8'}" type="{$extra_head_links[i].type|escape:'html':'UTF-8'}">{$extra_head_links[i].title|escape:'html':'UTF-8'}</a></li>
    {/section}
</ul>
{/if}

{if ($logged_in)}
{if $isme}
<div class="alert alert-warning">
    This is a new feature that gives you a unique URL for each song you've ever listened to. You can share it elsewhere and it can also be embedded on another website.
</div>

<h3>Embed this anywhere</h3>

<p class="lead">Embed this scrobble as an image on another website.</p>

<h4>HTML</h4>

<div class="mb-3">
    <textarea class="form-control" rows="6">
<a href="{$bob}"><img loading="lazy" src="{$bob}/image" width="480" height="90" alt="{$me->name} listened to {$track|escape:'html':'UTF-8'} by {$artist|escape:'html':'UTF-8'} ({$album|escape:'html':'UTF-8'})"></a>
</textarea>
</div>

<h4>BBCode</h4>

<div class="mb-3">
    <textarea class="form-control" rows="6">
[url={$bob}][img width="480" height="90" alt="{$me->name} listened to {$track|escape:'html':'UTF-8'} by {$artist|escape:'html':'UTF-8'} ({$album|escape:'html':'UTF-8'})"]{$bob}/image[/img][/url]
</textarea>
</div>
{/if}
{/if}

{/if}

{if ($logged_in)}
{if $isme}
<div class="alert alert-danger">
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
