{*

'Menu' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Menu' Template for Libre.fm
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

<ul id="nav" class="navbar-nav ms-auto">
    {if ($logged_in)}
    <li class="nav-item">{if "" != $this_user->getAvatar(24)}<a class="edit-profile-link" href="/user/{$this_user->name}"><img src="{$this_user->getAvatar(24)}" width="24" height="24" alt loading="lazy" title="Go to your profile {if ($thisusertotaltracks)}({$thisusertotaltracks} tracks scrobbled){/if}"></a> &nbsp;{/if}<a class="edit-profile-link" title="Go to your profile {if ($thisusertotaltracks)}({$thisusertotaltracks} tracks scrobbled){/if}" href="/user/{$this_user->name}">{$this_user->name}</a></li>
    <li class="nav-item"><i class="bi bi-clock"></i> <a href="/user/{$this_user->name}/recap/2025" title="Your 2025 recap">2025</a>{if ($this_user_first_year)}{if ($this_user_first_year < 2024)}&mdash;<a href="/user/{$this_user->name}/recap/{$this_user_first_year}" title="Your first year of data recapped!">{$this_user_first_year}</a>{/if}{/if}</li>
    <li class="nav-item"><i class="bi bi-info-circle"></i> <a target="_blank" href="https://libre.fm/donate.php">Donate</a></li>
    <li class="nav-item"><i class="bi bi-music-player"></i> <a href="/popular">Popular</a></li>
    <li class="nav-item"><i class="bi bi-info-circle"></i> <a href="/about">Help</a></li>
    <li class="nav-item"><i class="bi bi-envelope"></i> <a href="mailto:support@libre.fm">support@libre.fm</a></li>
    {else}
    <li class="nav-item"><i class="bi bi-envelope"></i> <a href="mailto:support@libre.fm">support@libre.fm</a></li>
    <li class="nav-item"><i class="bi bi-person-circle"></i> <a href="{$base_url}/login.php">
            {t}Log in{/t}
        </a></li>
    <li class="nav-item"><a href="{$base_url}/register.php">
            {t}Register{/t}
        </a></li>
    {/if}
</ul>
