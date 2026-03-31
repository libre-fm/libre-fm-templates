{*

'Submenu' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Submenu' Template for Libre.fm
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

{if isset($submenu)}
<ul class="nav nav-pills nav-fill mb-3">
    {foreach $submenu as $i}
    <li class='nav-item'>
        <a class="nav-link{if $i.active} active{/if}" {if $i.active}aria-current="page" {/if} href='{$i.url|escape:'html'}'>{$i.name}</a>
    </li>
    {/foreach}

</ul>
{else}&nbsp;
{/if}
