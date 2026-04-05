{*

'User Recap (new for 2025)' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Recap (new for 2025)' Template for Libre.fm
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

{include file='header.tpl' subheader='user-header.tpl' showbio=true}

<h2 class="mt-3 mb-4">Libre.fm recap for {$year}</h2>

{if !empty($scrobblecount)}
<div class="alert alert-info">
    <span class="lead"><a href="/user/{t name=$me->name}%1{/t}">{t name=$me->name}%1{/t}</a> listened to {$scrobblecount} songs in {$year}</span>
    &nbsp;(That's approximately {$scrobblemins} hours of music!)
</div>
{else}
<div class="alert alert-danger">
    <span class="lead">No listening data for {$year}</span>
</div>
{/if}

{if !empty($topsongs)}
<div class="alert alert-secondary">
    <span class="lead">{t name=$me->name}%1{/t} had one favorite song in {$year}: <a href="{$topsongs[0].trackurl}">{$topsongs[0].track} by {$topsongs[0].artist}</a> with {$topsongs[0].freq} plays</span>
</div>
{else}
<div class="alert alert-danger">
    <span class="lead">No top song data for {$year}</span>
</div>
{/if}

<h3>Top artists for {$year}</h3>
{if !empty($topartists)}
<ol class="list-group">
    {section name=i loop=$topartists}
    {if ($topartists[i].freq > 1)}
    <li class="list-group-item"><a href="{$topartists[i].artisturl}">{$topartists[i].artist}</a>
    <span class="badge text-bg-primary rounded-pill">{$topartists[i].freq} <span class="visually-hidden">plays</span></span></li>
    {/if}
    {/section}
</ol>
{else}
<div class="alert alert-danger">
    <span class="lead">No top artist data for {$year}</span>
</div>
{/if}

<h2>By month</h2>
<div class="alert alert-secondary">
    {for $var=1 to 12}

    {$topartists = $monthlyartists[$var]}
    {$toptrack = $monthlytracks[$var]}
    {$topmonthlycount = $monthlycount[$var]}

    {if !empty($topmonthlycount)}
    <details>
        <summary>{$months[$var]} {$year} ({$topmonthlycount} scrobbles)</summary>

        {if !empty($toptrack)}
        <div class="alert alert-secondary">
            <span class="lead">{t name=$me->name}%1{/t} had one favorite song in {$months[$var]} {$year}: <a href="{$toptrack[0].trackurl}">{$toptrack[0].track} by {$toptrack[0].artist}</a> with {$toptrack[0].freq} plays</span>
        </div>
        {else}
        <div class="alert alert-danger">
            <span class="lead">No top song data for {$months[$var]} {$year}</span>
        </div>
        {/if}

        <ol class="list-group">
            {section name=i loop=$topartists}
            {if ($topartists[i].freq > 1)}
            <li class="list-group-item"><a href="{$topartists[i].artisturl}">{$topartists[i].artist}</a> ({$topartists[i].freq} plays)</li>
            {/if}
            {/section}
        </ol>


    </details>
    {/if}



    {/for}
</div>

{if ($user_first_year < 2024)}

{if ($user_first_year > 2002)}

<h3>Previous year recaps</h3>

<ul>
    {for $var=2024 to $user_first_year step -1}
    <li><a href="/user/{t name=$me->name}%1{/t}/recap/{$var}">{$var} recap</a></li>
    {/for}
</ul>
{/if}
{/if}

{include file='footer.tpl'}
