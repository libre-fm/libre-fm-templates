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

{include file='header.tpl'}

<ul class="list-unstyled">
    {section name=i loop=$results}
    {if $search_type == 'artist'}
    <li>
        <p class="search-result-head">
            <a href='{$results[i].url}'>{$results[i].name|escape:'html':'UTF-8'}</a>
        </p>
        <p class>{$results[i].bio_summary|escape:'html':'UTF-8'}</p>
    </li>
    {elseif $search_type == 'user'}
    <li>
        <p class="search-result-head">
            <a href='{$results[i].url}'>{$results[i].username|escape:'html':'UTF-8'}</a>
            {if $results[i].fullname} &mdash; {$results[i].fullname|escape:'html':'UTF-8'}{/if}
        </p>
        <p>
            {$results[i].bio|escape:'html':'UTF-8'}
        </p>
    </li>
    {elseif $search_type == 'tag'}
    <li>
        <p class="search-result-head">
            <a href='{$results[i].url}'>{$results[i].tag|escape:'html':'UTF-8'}</a>
        </p>
    </li>
    {/if}
    {/section}
</ul>

{include file='footer.tpl'}
