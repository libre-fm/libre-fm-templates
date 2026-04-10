{*

'Mini Footer (used on login, register, etc)' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Mini Footer (used on login, register, etc)' Template for Libre.fm
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

<div class="alert alert-secondary">

    <h3 style="color: black" class="pt-20">General tips</h3>

    <ul>
        <li>Have you tried <a href="https://webscrobbler.com" target="_blank">Web Scrobbler</a>? It helps you scrobble from streaming services like Spotify and Apple Music</li>
        <li>See <a href="https://wiki.libre.fm">the wiki for a list of known clients</a> and please add to it.</li>
        <li>Please consider using email privacy/relay services where possible. The less we know about you the better (said in the nicest of ways)</li>
        <li>Please consider using an ad-blocker on every browser and device you use. We don't show ads but others do.</li>
        <li>Using Last.fm? We can import your recent and future scrobbles right now. Just email your Libre.fm and Last.fm usernames to <a href="mailto:support@libre.fm">support@libre.fm</a></li>
    </ul>
</div>

{if $nosidebar != true}
<aside>
    {include file="sidebar.tpl" player=$sideplayer}
</aside>
{/if}
</main>
</div>
</div>
</section>
<!-- ======== feature-section end ======== -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>

</html>
