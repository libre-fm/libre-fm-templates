{*

'Tag list' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Tag list' Template for Libre.fm
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

{*	------------------
	taglist.tpl
	------------------
	Dynamic smarty template intended to be used on any page with a list of tags.

	@param array  items           Array of tracks ((tag, image, taglibraryurl, tagurl, freq) .. )
	@param string class           CSS table class (if class equals 'library' *libraryurl will be used instead of *url)
	@param bool   thead           Show table header
	@param bool   fimage          Show image field, used by $i.image
	@param bool   fcount          Show count field, used by $i.freq
	@param string url_sort_name   URL string to toggle sort order by name
	@param string url_sort_count  URL string to toggle sort order by count
*}
<table class="{$class} taglist">
    {if $thead}
    <thead>
        <tr>
            {if $fimage}
            <th></th>
            {/if}
            <th class="title">Tag</th>
            {if $fcount}
            <th class="count">Count</th>
            {/if}
        </tr>
    </thead>
    {/if}
    <tbody>
        {foreach from=$items item=i}
        <tr>
            {if $fimage}
            <td class="image"><img src="{$i.image}" /></td>
            {/if}
            <td class="name">
                {if $i.taglibraryurl}
                <a href="{$i.taglibraryurl}">{$i.tag}</a>
            </td>
            {else}
            <a href="{$i.tagurl}">{$i.tag}</a></td>
            {/if}
            {if $fcount}
            <td class="count"><span>{$i.freq}</span></td>
            {/if}
        </tr>
        {/foreach}
    </tbody>
</table>
