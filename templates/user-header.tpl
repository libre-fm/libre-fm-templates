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
    {if $me->fullname}
    <h2>{$me->name}</p>
    <p><span class="p-name card-title">{$me->fullname}</span></p>
    {else}
    <h2 class="p-name card-title">{$me->name}</h2>
    {/if}
    <p><img class="u-photo" style="background: whitesmoke url(https://turtle.libre.fm/spinner.gif); background-position: center center; background-repeat: no-repeat; " loading="lazy" height="170" width="170" src="{$me->getAvatar(170)}" alt></p>



    {if $totaltracks}
    <p class="card-subtitle mb-2 text-body-secondary">
        <strong>{$totaltracks}</strong> tracks recorded
    </p>
    {else}
    {if ($logged_in)}
    {if $isme}
    {if $totaltracks < 10}
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-xs-12 mt-20 alert alert-danger">
                Please configure your <a href="https://wiki.libre.fm/Clients">music client</a> to post to Libre.fm or use <a href="https://webscrobbler.com">Web Scrobbler</a>. Need help? <a href="mailto:support@libre.fm">support@libre.fm</a>.
            </div>
        </div>
    </div>
    {/if}
    {/if}
    {/if}
    {/if}

    {if $totaltracks}
    {if $me->bio}
    <p class="p-note" id="bio">
        {$me->bio|escape:'html':'UTF-8'}
    </p>
    <p class="h-geo">
        {$me->location}
    </p>
    

    <ul>
        {if $me->homepage}
        <li class="card-text">Personal website: <a class="u-url card-link" rel="me nofollow" href="{$me->homepage}">{$me->homepage}</a></li>
        {/if}
        {if $me->laconica_profile}
        <li class="card-text">Fediverse profile: <a class="u-url card-link" rel="me nofollow" href="{$me->laconica_profile}">{$me->laconica_profile}</a></li>
        {/if}

        {/if}
    </ul>
    {/if}

</div>

{include file='submenu.tpl'}
