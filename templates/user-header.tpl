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

{if $totaltracks < 10}
    {if ($logged_in)}
    {if $isme}
            <div class="alert alert-danger">
                Please configure your <a href="https://wiki.libre.fm/Clients">music client</a> to post to Libre.fm or use <a href="https://webscrobbler.com">Web Scrobbler</a>. Need help? <a href="mailto:support@libre.fm">support@libre.fm</a>.
            </div>
    {/if}
    {/if}
{/if}


<div class="h-card alert alert-dark">
<div class="card-group mb-3">
<div class="card">
<div class="card-body">
<h2 class="p-name">{$me->name}</h2>
    <p><img class="u-photo" loading="lazy" height="170" width="170" src="{$me->getAvatar(170)}" alt></p>

{if $me->fullname}
    <p class="mb-2 text-body-secondary">
    <strong><span class="p-name card-title">{$me->fullname}</span></strong>
    </p>
    {/if}
    {if $totaltracks}
    <p class="mb-2 text-body-secondary">
        <strong>{$totaltracks}</strong> tracks
        &middot; <span class="h-geo">{if $me->location}{$me->location}{else}Cyberspace{/if}</span>
        &middot; Joined {$me->created|date_format:"%B %e, %Y"}
    </p>
    {/if}
    {if $totaltracks > 10}
    {if $me->homepage}
    {if $me->bio}
    <div class="alert alert-light">
    {$me->bio}
    </div>
    {/if}
    <ul class="list-inline">
        <li class="list-inline-item"><a class="u-url card-link btn-success badge rounded-pill bg-primary" rel="me nofollow" title="Link to {$me->homepage}" style="text-decoration: none !important" href="{$me->homepage}" target="_blank">Personal website</a></li>
        {if $me->laconica_profile}
        <li class="list-inline-item"><a class="u-url card-link badge rounded-pill bg-secondary" rel="me nofollow" title="Link to {$me->laconica_profile}" style="text-decoration: none !important" href="{$me->laconica_profile}" target="_blank">Social Web Profile</a></li>
        {/if}
    </ul>
    {/if}
    {/if} 

</div>
</div>

{if ($isme)}
<div class="card">
<div class="card-body text-center text-wrap">
<h2>Update your profile</h2>
<p><a class="edit-profile-link btn btn-success btn-lg" href="/user-edit.php">Edit your profile</a></p>

<p>You can also change your password, connect to other services, add a link to your personal website and social web profiles and more...</p>

</div>
</div>
{/if}

</div><!-- closing div -->


{include file='submenu.tpl'}
