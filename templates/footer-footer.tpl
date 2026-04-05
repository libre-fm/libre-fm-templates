{*

'Footer (details)' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Footer (details)' Template for Libre.fm
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

<!-- ======== footer start ======== -->
<footer class="footer">
    <div class="container">
        <div class="widget-wrapper">
            <div class="row">
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="footer-widget">
                        <div class="logo mb-30">
                            <a href="/">
                                <img src="/themes/2024-end-times/assets/img/logo/logo.svg" alt="Libre.fm" />
                            </a>
                        </div>
                        <p class="desc mb-30 text-white">
                            Since 2009. <a href="https://hireme.fyi">Made with love in New England</a> but <a href="https://bored.city">we are bored in the city</a>. Libre.fm is supported by <a target="_blank" href="https://www.bytemark.co.uk/company/sponsorships/">Bytemark</a>, <a target="_blank" href="https://corehost.us/">Corehost</a> and <a target="_blank" href="https://archive.org/">The Internet Archive</a>. With thanks to <a target="_blank" href="https://musicbrainz.org/">MusicBrainz</a>, <a target="_blank" href="https://themewagon.com">ThemeWagon</a>, <a target="_blank" href="https://crowdsec.net">Crowdsec</a>, <a target="_blank" href="https://coverartarchive.org/">Cover Art Archive</a> and our <a href="/donate.php">donors</a>.
                        </p>

                        <p class="mb-30 text-white">This page generated in {$page_time} seconds by <a rel="me" href="https://mat.tl">mattl</a>. All your base are belong to us. We're u/libre-fm on reddit now.</p>

                    </div>
                </div>

                <div class="col-xl-2 col-lg-2 col-md-6">
                    <div class="footer-widget">
                        <h3>About Us</h3>
                        <ul class="links">
                            {if (!$logged_in)}
                            <li><a href="/">Home</a></li>
                            <li><a href="/#features">Features</a></li>
                            <li><a href="/#how">About</a></li>
                            {/if}
                            {if ($logged_in)}
                            <li><a href="https://web.libera.chat/?nick=#libre.fm" target="_blank" title="Join us on Libera.chat">IRC #libre.fm</a></li>
                            <li><a href="/recap">Recap</a></li>
                            {/if}
                            <li><a href="/about">Help/FAQ</a></li>
                            <li><a href="mailto:support@libre.fm">support@libre.fm</a></li>
                            <li><a href="https://blog.libre.fm">Blog</a> &amp; <a href="https://roadmap.libre.fm">roadmap</a></li>
                            <li><a href="https://www.youtube.com/@libre-fm">YouTube channel</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-xl-2 col-lg-3 col-md-6">
                    <div class="footer-widget">
                        <h3>Important</h3>
                        <ul class="links">
                            <li><a href="https://status.libre.fm/">Server status</a></li>
                            <li><a href="/privacy">Privacy policy</a></li>
                            <li><a href="/terms">Terms of service</a></li>
                            <li><a href="/ai">&quot;AI&quot; policy (LOL)</a></li>
                            <li><a href="https://wiki.libre.fm/Clients">Clients wiki</a></li>
                            <li><a href="https://developer.libre.fm">Developer wiki</a></li>
                            <li><a href="https://github.com/foocorp/end-times-code/">Open source</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-xl-4 col-lg-3 col-md-6">
                    <div class="footer-widget">
                        <h3>Our friends</h3>
                        <ul class="links">
                            <li><a target="_blank" href="https://alexandragallant.com/">Buy comics and zines</a></li>
                            <li><a target="_blank" href="https://bugsrock.online/">Buy candles</a></li>
                            <li><a target="_blank" href="https://tedium.co/">Tedium</a></li>
                            <li><a target="_blank" href="https://artlung.com">Artlung</a></li>
                            <li><a target="_blank" href="https://home.omg.lol/referred-by/mattl">omg.lol</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
