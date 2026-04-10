{*

'User Recent Tracks' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Recent Tracks' Template for Libre.fm
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

{include file='header.tpl' subheader='user-header.tpl'}

{userscrobbles userid=$me->uniqueid}
<h3>Recent plays</h3>
{include file="tracklist.tpl" class=#table# items=$scrobbles fimage=true fstream=true fartist=true flove=true ftime=true}

<p><a href="/user/{$me->name}/library/scrobbles" class="btn btn-primary">Full listening history...</a></p>


{include file='footer.tpl'}
