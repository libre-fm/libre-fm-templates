{*

'Popular (not currently used)' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Popular (not currently used)' Template for Libre.fm
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

	<h2>What's popular on Libre.fm?</h2>
	<p class="text-center">The artists loved by Libre.fm users</p>

	<ul id="popular">
	    {section name=i loop=$tagcloud}
		{$tagcloud|@print_r}
	    <li style='display: inline; font-size:{$tagcloud[i].size}'><a href='{$tagcloud[i].pageurl|escape:'html'}' title='{t loves=$tagcloud[i].count}This artist was loved %1 times{/t}' rel='tag'>{$tagcloud[i].name}</a></li>
	    {/section}
	</ul>
