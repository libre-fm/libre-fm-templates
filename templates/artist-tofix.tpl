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

	<h4>{t}Albums{/t}</h4>
	{artistalbums artist=$artist->name}
	{include file='albumlist.tpl' class=#table# items=$artistalbums fimage=true fstream=true ftime=true}
	{if $add_album_link}<a href='{$add_album_link}'><strong>{t}Add new album{/t}</strong></a>{/if}

	<h4>{t}Tracks{/t}</h4>
	{artisttracks artist=$artist->name}
	{include file='tracklist.tpl' class=#table# items=$artisttracks fimage=true fstream=true}
