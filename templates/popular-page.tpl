{*

Template based on 'Popular Page (not currently used)' Template for GNU FM
Copyright (c) 2009 Free Software Foundation, Inc

'Popular Page (not currently used)' Template for Libre.fm
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

<div id="tag-cloud-box">

<h2>Weekly Libre.fm stats &mdash; updated every Sunday afternoon</h2>
<ul>
<li><a href="#top-tracks">Top tracks</a></li>
<li><a href="#artists">Top artists</a></li>
<li><a href="#listeners">Top Libre.fm accounts by unique artists</a></li>
<li><a href="#top-albums">Top albums of the week</a></li>
</ul>

{$stats}

</div>

{include file='footer.tpl'}
