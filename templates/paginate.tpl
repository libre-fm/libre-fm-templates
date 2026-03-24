{*

'Paginate' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Paginate' Template for Libre.fm
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

	<ul class="pager">
	    <li class="previous {if $page->page_number <= 1}disabled{/if}">
	        <a href="{$page->urls.page_prev}">
	            <span class="glyphicon glyphicon-chevron-left"></span>
	        </a>
	    </li>
	    <li class="next">
	        <a href="{$page->urls.page_next}">
	            <span class="glyphicon glyphicon-chevron-right"></span>
	        </a>
	    </li>
	</ul>
	<p class="text-center">page <span class="badge">{$page->page_number}</span></p>
