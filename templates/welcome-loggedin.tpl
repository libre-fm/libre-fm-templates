{*

'Welcome logged in (homepage)' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Welcome logged in (homepage)' Template for Libre.fm
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

<h2 class="text-center mt-5 mb-5">Welcome back, <a href="/user/{t name=$this_user->name}%1{/t}">{t name=$this_user->name}%1{/t}</a>!</h2>

<div class="alert alert-dark">
    <h3>What's new?</h3>

    <ul>
        <li>Happy new year! <a href="/user/{t name=$this_user->name}%1{/t}/recap/2025">See your 2025 music recap</a> (now with monthly breakdowns!)</li>
        <li>New design!</li>
        <li><a href="https://libre.fm/feed.xml">We have an RSS feed!</a>
        <li><a href="https://mat.tl">I quit social media</a>, so I made <a target="_blank" href="https://status.libre.fm">status.libre.fm</a> for server status.</li>
        <li>Libre.fm has a <a target="_blank" href="https://libre.fm/donate.php">donations page</a>.</li>
    </ul>
</div>

{if ($totals)}
<div class="alert alert-primary">
    {$totals}
</div>
{/if}

{if ($recents)}
<h3>Recently listened to by the Libre.fm community (and it is a community)</h3>
{$recents}
{/if}

{include file='footer.tpl'}
