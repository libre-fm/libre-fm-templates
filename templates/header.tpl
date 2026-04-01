{*

'Header' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Header' Template for Libre.fm
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

{config_load file='theme.conf' scope='global'}
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">

<head>
    <meta charset="utf-8" />
    {if !($pagetitle)}
    <title>{$site_name} &mdash; the open source music community for keeping track of your music listening habits</title>
    {else}
    <title>{$pagetitle|escape:'html':'UTF-8'} &middot; {$site_name} &mdash; the open source music community</title>
    {/if}
    <meta name="description" content="Libre.fm lets you keep track of your music listening habits." />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="author" content="FooCorp catalogue number FOO200 and contributors" />
    <link rel="alternate" type="application/rss+xml" title="RSS Feed" href="https://libre.fm/feed.xml">

    <meta property="og:title" content="Libre.fm">
    <meta property="og:description" content="Libre.fm lets you keep track of your music listening habits.">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Libre.fm">
    <meta property="og:url" content="https://libre.fm">
    <meta property="og:image" content="https://libre.fm/themes/2024-end-times/social.png">
    <!--

    Dear Mr McGee,

    Please find enclosed the latest demo from Liquid Greek.

    Derided by the mainstream as ‘shoegazing also-rans’, the band
    have nevertheless persevered with their off-kilter-or-nothing
    policy in the hope that someone like your good self will
    eventually realise, and thus promote, this violent yet
    ultimately beautiful genre which we have dubbed ‘new noise’.

    The first track is based upon the high-pitched lamentations of
    an unbalanced Lincoln woman, who nurses injured buzzards back
    to health inside her dead child’s wardrobe.

    We hope you like it.

    Yours sincerely,

    Liquid Greek

    P.S. – We don’t like sport of any kind, and friends at school
    were very much thin on the ground

    -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="https://libre.fm/themes/2024-end-times/assets/css/lineicons.css" />
    <link rel="stylesheet" href="https://libre.fm/themes/2024-end-times/assets/css/main.css" />
    <link rel="stylesheet" href="https://libre.fm/themes/2024-end-times/assets/css/librefm.css" />

</head>

<body>

    <a href="#home" class="a11y-helper" tabindex="0">Skip to main content</a>

    <!-- ======== header start ======== -->
    <header class="header">
        <div class="navbar-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand" href="/">
                                <img src="/themes/2024-end-times/assets/img/logo/logo.svg" alt="Libre.fm" />
                                <span title="17 years of independence on  the web!" style="font-size: 10px; padding-left: 1.5vh; overflow: hidden;">Since 2009</span>
                            </a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                                {include file='menu.tpl'}

                            </div>
                            <!-- navbar collapse -->
                        </nav>
                        <!-- navbar -->
                    </div>
                </div>
                <!-- row -->
            </div>
            <!-- container -->
        </div>
        <!-- navbar area -->
    </header>
    <!-- ======== header end ======== -->

    <!-- ======== hero-section start ======== -->
    <section id="home" class="hero-section hero-section-app" style="padding: 0px 0 50px">
        &nbsp;
    </section>
    <!-- ======== hero-section end ======== -->

    <!-- ======== feature-section start ======== -->
    <section id="how" class="feature-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 mt-20">

                    <!-- <div class="alert alert-danger text-center text-wrap">
Libre.fm support will be taking a break for the holidays from Dec 23-27th, so unless there's a server issue I'll get back to you in a few days
</div> -->

                    {if (!$logged_in)}
                    <div class="alert alert-success text-center text-wrap">
                        Please consider <a href="/donate.php">making a donation</a> to help keep the lights on.
                        {else}
                        {if ($thisusertotaltracks < 3)}
                            <div class="alert alert-info text-center text-wrap">
                                {include file='getting-started-help.tpl'}
                                <hr>
                                <p>Once you've successfully scrobbled a few songs, this help box will move to <a href="/about/">the help page</a></p>
                                {/if}
                                {/if}
                            </div>


                            {if $nosidebar}
                            <!-- nosb -->
                            {else}
                            {if isset($subheader)}
                            <header>

                                {include file="$subheader"}

                            </header>
                            {/if}
                            <section>
                                {/if}
