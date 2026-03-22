{*

'404 Error' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'404 Error' Template for Libre.fm
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

<a target="_blank" href="https://wiki.libre.fm/Clients"><img src="/themes/2024-end-times/image1-7.png" class="about-img img-fluid
float-lg-end m-1 p-1" style="width: 500px" alt loading="lazy" decoding="async"></a>

{if ($thisusertotaltracks > 3)} {include file='getting-started-help.tpl'} {/if}


{if (!$logged_in)} {include file='getting-started-help.tpl'} {/if}

<h2>Frequently Asked Questions</h2>

<h3>How do I listen to music?</h3>

<p>We don't offer any streamed music on this site.</p>

<p>At present, no. Historically, some musicians share their music with the
    world with some <a href="https://creativecommons.org" target="_blank">Creative
    Commons</a> licenses and we supported streaming and downloading some of those
    songs. This is currently unavailable. If there's demand (let us know!) this may
    return someday.</p>

<h3>Can I import my listening habits from Last.fm, etc?</h3>

<p>Yes... soon. This is something we hope to start to offer to more people in the first few months of 2026.</p>

<p>But, if you've been a user of Libre.fm for a few years, have more than a few thousand scrobbles on here and have a Last.fm account and would like to scrobble there and have those scrobbles appear on Libre.fm, please email support. Especially if you're on IRC.</p>

<p>New users: hold tight, we want to make sure this works well first but it is very much coming. It will be offered to everyone in due course.</p>

<h3>Can I export my data?</h3>

<p>You can! We're working out the best format to deliver that in, but you can
    request your data today by emailing support.</p>

<h3>Do you support any social media features?</h3>

<p>You can <a href="https://libre.fm/user/mattl/scrobble/1733371909" target="_blank">share a link showing any song you've listened to</a> the
    Fediverse and Bluesky. You can also share and embed an image of your currently
    playing songs. You'll find this on your profile when logged in and playing a
    song, but it lives at <a href="https://libre.fm/user/mattl/now">/now</a> on your
    profile. I occasionally think about additional social media features but I'm
    not sure what else would be useful.</p>

<h3>I accidentally scrobbled something I want to get rid of...</h3>

<p>Any <a href="https://libre.fm/user/mattl/scrobble/1733371909" target="_blank">individual scrobble</a> has a delete option at the bottom (if
    it's your scrobble). Check your profile for links to your latest scrobbles.</p>

<h3>How do I change my username or password?</h3>

<p>Contact <a href="mailto:support@libre.fm">support@libre.fm</a>. I'll be
    happy to help you in any way possible.</p>

<h3>Do you support...?</h3>

<p>If you can send scrobbles to us, yes. Particularly if you are doing things
    on a cool/old/retro/vintage system...</p>
<p>Any/all operating systems are
    supported.</p>

<h3>You're blocking my VPN! Why?</h3>

<p>We don't block any VPNs. But we do block traffic from <strong>lots</strong>
    of web hosting companies. These are often used by bots and scrapers and they
    send us lots and lots of traffic.</p>
<p>In accordance with the <a href="/ai">AI
        policy</a>, these things are blocked. We're happy to help, and reach out to
    support if you think we're blocking something we shouldn't. Every page should
    have an IP address or Cloudflare Ray ID at the bottom. These are both useful
    things to let us know. You can also check the IP address yourself at <a href="https://www.abuseipdb.com" target="_blank">AbuseIPDB</a> and see what's
    going on.</p>

<p>Libre.fm is a service for humans.</p>

<h3>Are you on Discord, Twitter, Facebook, Bluesky, Mastodon, MySpace?</h3>

<p>No. Not any more.</p>

<p>You will find mattl in #libre.fm on <a target="_blank" href="https://libera.chat">libera.chat</a> or in #internet on <a target="_blank" href="https://home.omg.lol/info/irc">omg.lol's IRC server</a>.</p>

<p>Please note that I cannot offer support beyond very casual guidance on IRC.
    Support requests should be sent via email.</p>

<h3>What are some good songs to listen to?</h3>

<p>Anything you like of course... but, some songs I like include:</p>

<ul>

    <li><a href="https://www.youtube.com/watch?v=2Am-BF7ObCI" target="_blank">Birdhouse In Your Soul</a> by They Might Be Giants</li>

    <li><a href="https://www.youtube.com/watch?v=pANNkrWZ8_s" target="_blank">All
            The Girls Are Complicated</a> by Laura Cantrell</li>

    <li><a href="https://www.youtube.com/watch?v=c1GxjzHm5us" target="_blank">Blue Monday</a> by New Order</li>

    <li>And really anything by <a href="https://www.youtube.com/@welovepulp" target="_blank">Pulp</a> or <a target="_blank" href="https://www.youtube.com/@HalfManHalfBiscuitOfficial">Half Man Half
            Biscuit</a>...</li>

</ul>

<p>But that's just <a href="/user/mattl">stuff I like</a>. You should listen to
    whatever you like, but you should really give Half Man Half Biscuit a listen
    sometime.</p>

<h3>How do I delete my account?</h3>

<p>Edit your profile, scroll to the bottom and there's a way to delete your
    account. We'll send you a confirmation email first.</p>

</details>

{include file='footer.tpl'}
