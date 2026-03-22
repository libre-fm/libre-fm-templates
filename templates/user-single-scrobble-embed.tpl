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

{if $track}
<blockquote class="h-embed" cite="https://libre.fm/users/{$me->name}/scrobble/{$scrobble}">
    <div class="h-entry">
        <h2 class="p-name"><a href="https://libre.fm/user/{$me->name}">{$me->name}</a></h2>
        <p><img class="u-photo" src="{$me->getAvatar(48)}" alt="[ {$me->name} avatar ]"></p>

        <p>Listened to <span class="p-music-track">{$track}</span> {if $artist}by <span class="p-music-artist">{$artist}</span>{/if}{if $album} on <span class="p-music-album">{$album}</span>{/if}</p>

        <time datetime="{$stamp}">{$stomp}</time>

        <p><small><a href="https://creativecommons.org/licenses/by/4.0/" rel="license">CC BY 4.0</a> &middot; {$me->name}/Libre.fm</small></p>

    </div>
</blockquote>

{/if}
