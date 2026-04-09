{*

'User Single Scrobble (plain text)' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Single Scrobble (plain text)' Template for Libre.fm
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

{if $scrobbledata}
## {$me->name} <https: //libre.fm/user/{$me->name}>

    Listened to {$scrobbledata['track']} {if $scrobbledata['artist']}by {$scrobbledata['artist']}{/if}{if $scrobbledata['album']} on {$scrobbledata['album']}{/if}

    {$stomp}
    {/if}
