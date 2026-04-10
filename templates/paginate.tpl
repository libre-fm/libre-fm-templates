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

<hr>

{if $page->urls.sort_name}
<a href="$page->urls.sort_name}" class="btn btn-success">Sort by name</a>
{/if}

{if $page->urls.sort_count}
<a href="$page->urls.sort_count}" class="btn btn-success">Sort by play count</a>
{/if}

<nav class="mt-2 mb-2" aria-label="Page navigation">
  <ul class="pagination justify-content-center">
    <li class="page-item {if $page->page_number <= 1}disabled{/if}">
      <a class="page-link" href="{$page->urls.page_prev}">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="?page={$page->page_number+1}">{$page->page_number+1}</a></li>
    <li class="page-item"><a class="page-link" href="?page={$page->page_number+2}">{$page->page_number+2}</a></li>
    <li class="page-item"><a class="page-link" href="?page={$page->page_number+3}">{$page->page_number+3}</a></li>
    <li class="page-item">
      <a class="page-link" href="{$page->urls.page_next}">Next</a>
    </li>
  </ul>
</nav>

	<!-- <ul class="pager">
	    <li class="previous {if $page->page_number <= 1}disabled{/if}">
	        <a href="{$page->urls.page_prev}">
	           &larr;
	        </a>
	    </li>
	    <li class="next">
	        <a href="{$page->urls.page_next}">
	            &rarr;
	        </a>
	    </li>
	</ul>
	<p class="text-center">page <span class="badge">{$page->page_number}</span></p> -->
