{*

'Search results template (not currently used)' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Search results template (not currently used)' Template for Libre.fm
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

{if $results}

<h2>Search results</h2>

<ul class="list-group list-group-flush">
    {section name=i loop=$results}
    {if $search_type == 'artist'}
    <li class="list-group-item">
        <p class="search-result-head">
            <a href='{$results[i].url}'>{$results[i].name|htmlentities|unescape:'html':'UTF-8'}</a>
        </p>
        <p><small>{$results[i].bio_summary|htmlentities|unescape:'html':'UTF-8'}</small></p>
    </li>
    {elseif $search_type == 'user'}
    <li class="list-group-item">
        <p class="search-result-head">
            <a href='{$results[i].url}'>{$results[i].username|htmlentities|unescape:'html':'UTF-8'}</a>
            {if $results[i].fullname} &mdash; {$results[i].fullname|htmlentities|unescape:'html':'UTF-8'}{/if}
        </p>
        <p><small>
            {$results[i].bio|escape:'html':'UTF-8'}
        </small>
        </p>
    </li>
    {elseif $search_type == 'tag'}
    <li class="list-group-item">
        <p class="search-result-head">
            <a href='{$results[i].url}'>{$results[i].tag|htmlentities|unescape:'html':'UTF-8'}</a>
        </p>
    </li>
    {/if}
    {/section}
</ul>

{else}

<h2>Search Libre.fm</h2>

<form method="get">
<div class="mb-3">
<label for="search_term">Search the site:</label>
<input type="search" id="search_term" name="search_term" maxlength="100">
</div>
<div class="mb-3">
<select name="search_type">
<option value="artist">Artist name</option>
<option value="user">User name</option>
</select>
</div>
<div class="mb-3">
<input type="submit" value="Search">
</div>
</form>

{/if}

{include file='footer.tpl'}
