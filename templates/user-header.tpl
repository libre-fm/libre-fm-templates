{*

'User Header' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Header' Template for Libre.fm
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

<div class="h-card alert alert-dark">
    <h2 class="p-name">{$me->name}</h2>    
    <p><img class="u-photo" loading="lazy" height="170" width="170" src="{$me->getAvatar(170)}" alt></p>
    <p class="d-inline-flex gap-1 card-subtitle mb-2 text-body-secondary">{if $me->fullname}
    <span class="p-name card-title">{$me->fullname}</span>
    {/if}
    {if $totaltracks}
        &middot; <strong>{$totaltracks}</strong> tracks
    {/if}
    {if $me->location}
        &middot; <span class="h-geo">{$me->location}</span>
    {/if}
    </p>

    {if $totaltracks > 10}{if $me->homepage}
    <p class="d-inline-flex gap-1 card-subtitle mb-2">
        <a class="u-url card-link" rel="me nofollow" href="{$me->homepage}" target="_blank">Personal website</a>
        {if $me->laconica_profile}
        &middot; <a class="u-url card-link" rel="me nofollow" href="{$me->laconica_profile}" target="_blank">Social Web Profile</a>
        {/if}
    </p>
    {/if}
    {else}
    {if ($logged_in)}
    {if $isme}
            <div class="alert alert-danger">
                Please configure your <a href="https://wiki.libre.fm/Clients">music client</a> to post to Libre.fm or use <a href="https://webscrobbler.com">Web Scrobbler</a>. Need help? <a href="mailto:support@libre.fm">support@libre.fm</a>.
            </div>
    {/if}
    {/if}
    {/if} 

</div>

{include file='submenu.tpl'}
