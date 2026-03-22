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


{if $image}
<p><img style="width: 100%; max-width: 250px !important; background: whitesmoke url(https://turtle.libre.fm/spinner.gif); background-position: center center; background-repeat: no-repeat; " loading="lazy" class="wikipedia-profile-image" src="{$image}" alt="" /></p>
{/if}

<h2>{$artist->name}</h2>

{if $artist->homepage}
<p><a href="{$artist->homepage}">{$artist->homepage}</a></p>
{/if}
