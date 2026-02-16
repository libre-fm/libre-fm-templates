{config_load file='theme.conf' scope='global'}
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="refresh" content="90">
    <title>Libre.fm &mdash; Track your listening habits, discover new music</title>
    <meta name="description" content="Libre.fm lets you keep track of your music listening habits." />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="author" content="FooCorp catalogue number FOO200 and contributors" />
    <link rel="alternate" type="application/rss+xml" title="RSS Feed" href="https://libre.fm/feed.xml">
    <meta name="theme-color" content="#c7354b">
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
    <link rel="stylesheet" href="/themes/2024-end-times/assets/css/lineicons.css" />
    <link rel="stylesheet" href="/themes/2024-end-times/assets/css/frontpage.css" />
    <link rel="stylesheet" href="/themes/2024-end-times/assets/css/main.css" />
	<link rel="stylesheet" href="/themes/2024-end-times/assets/css/librefm.css" />
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
                </a>
                <button
                  class="navbar-toggler"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#navbarSupportedContent"
                  aria-controls="navbarSupportedContent"
                  aria-expanded="false"
                  aria-label="Toggle navigation"
                >
                  <span class="toggler-icon"></span>
                  <span class="toggler-icon"></span>
                  <span class="toggler-icon"></span>
                </button>

                <div
                  class="collapse navbar-collapse sub-menu-bar"
                  id="navbarSupportedContent"
                >
                  <ul id="nav" class="navbar-nav ms-auto">
                    <li class="nav-item">
                      <a class="page-scroll active" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                      <a class="page-scroll" href="/#how">How it works</a>
                    </li>
                    <li class="nav-item">
                      <a class="page-scroll" href="/#features">Features</a>
                    </li>
                    <li class="nav-item">
                      <a class="page-scroll" href="/about/">Help/FAQ</a>
                    </li>
   

                    <li class="nav-item">
                      <a class="page-scroll" href="https://libre.fm/login.php">Login</a>
                    </li>
                    <li class="nav-item">
                      <a class="page-scroll" href="https://libre.fm/waitlist.php">Register</a>
                    </li>
                  </ul>
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
    <section id="home" class="hero-section">
      <div class="container">
        <div class="row align-items-center position-relative">
          <div class="col-lg-6">
            <div class="hero-content">
              <h1>
                Track your listening habits, discover new music
              </h1>
              {if ($totals)}
              <p>
                Since 2009, {$totals} We think that's something to be proud of.
              </p>
              {/if}


            </div>
          </div>
          <div class="col-lg-6">
            <div class="hero-img">
              <img src="/themes/2024-end-times/scrobble.png" style="max-width: 800px;" alt="" />
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ======== hero-section end ======== -->

    <!-- ======== feature-section start ======== -->
    <section id="how" class="feature-section pt-70">
      <div class="container">
        <div class="row justify-content-center">
                <h2 class="text-center">
          How it works
        </h2>
        </div>
        <div class="row justify-content-center">
          <div class="col-lg-4 col-md-8 col-sm-10">
            <div class="single-feature">
              <div class="icon">
				      <i class="lni lni-headphone"></i>
              </div>
              <div class="content">
                <h3>Listen to your music</h3>
                <p>
                  Many music player apps already support Libre.fm, and for streaming music there's Web Scrobbler. You sign into one of these using your Libre.fm account.
                </p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-8 col-sm-10">
            <div class="single-feature">
              <div class="icon">
                <i class="lni lni-php"></i>
              </div>
              <div class="content">
                <h3>Open Source</h3>
                <p>
                  The music player app reports what you're listening to to Libre.fm and we show it on your profile and on the community page. Want to do this in private? Libre.fm is 100% open source so you can run your own server instead.
                </p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-8 col-sm-10">
            <div class="single-feature">
              <div class="icon">
                <i class="lni lni-creative-commons"></i>
              </div>
              <div class="content">
                <h3>Track your listening habits</h3>
                <p>
                  See what you've listened to weeks or even years ago and via the community page you can see what other people are listening to. 
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ======== feature-section end ======== -->



    <!-- ======== feature-section start ======== -->
    <section id="features" class="feature-extended-section pt-100">
      <div class="feature-extended-wrapper">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-xxl-10 col-xl-10 col-lg-10 col-md-9">
              <div class="section-title text-center mb-60">
                <h2 class="mb-25">
                  Why use Libre.fm over something else?
                </h2>
                 {if ($daily)}
                <p>
                  {$daily}
                </p>
                 {/if}
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-lg-4 col-md-6">
              <div class="single-feature-extended">
                <div class="icon">
                  <i class="lni lni-shield"></i>
                </div>
                <div class="content">
                  <h3>Humans only</h3>
                  <p>
                    We block so-called "AI" scrapers and bots and provide Libre.fm for humans only. We block IP addresses, entire networks, bots and more using Cloudflare and our own in-house data. If you're having any issues, please contact us and we will help you.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="single-feature-extended">
                <div class="icon">
                  <i class="lni lni-cloud"></i>
                </div>
                <div class="content">
                  <h3>Hosted in the UK</h3>
                  <p>
                    Libre.fm is generously hosted in York, UK by our good friends at <a href="https://www.bytemark.co.uk/company/sponsorships/">Bytemark</a>, a hosting company with a long-standing commitment to a free and open society.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="single-feature-extended">
                <div class="icon">
                  <i class="lni lni-user"></i>
                </div>
                <div class="content">
                  <h3>Human support</h3>
                  <p>
                    When you <a href="mailto:support@libre.fm">email us for support</a>, you're speaking to <a href="https://mat.tl">Matt Lee</a>, the co-founder of Libre.fm. Matt cares deeply about the indieweb, accessibility, standards and open source software.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="single-feature-extended">
                <div class="icon">
                  <i class="lni lni-javascript"></i>
                </div>
                <div class="content">
                  <h3>Minimal JavaScript</h3>
                  <p>
                    Libre.fm is designed to work <em>without</em> JavaScript. This means the site is faster to load and has no invasive trackers. We support any and all operating systems. If you can GET and POST, you're in.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="single-feature-extended">
                <div class="icon">
                  <i class="lni lni-layers"></i>
                </div>
                <div class="content">
                  <h3>Essential Features Only</h3>
                  <p>
                    Lots of sites are bogged down with unwanted features, aggressive advertising and trackers. We aren't. We spun off the social networking aspects of Libre.fm a long time ago (as <a href="https://en.wikipedia.org/wiki/GNU_social#GNU_social">GNU social</a>) which became a founding part of the <a href="https://socialwebfoundation.org/">modern social web</a>.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="single-feature-extended">
                <div class="icon">
                  <i class="lni lni-rocket"></i>
                </div>
                <div class="content">
                  <h3>Optimized for speed</h3>
                  <p>
                    Libre.fm caches as much as possible to give you the fastest experience no matter where you are.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ======== feature-section end ======== -->

    <!-- ======== subscribe-section start ======== -->
    <!-- <section id="contact" class="subscribe-section pt-120">
      <div class="container">
        <div class="subscribe-wrapper img-bg">
          <div class="row align-items-center">
            <div class="col-xl-7 col-lg-6">
              <div class="section-title mb-15">
                <h2 class="text-white mb-25">Join the waitlist</h2>
                <p class="text-white pr-5">
                  We're slowly adding new users who <a href="/waitlist.php">join the waitlist</a> for an account. <a href="/donate.php">Donors</a> can get an account even quicker. Developers, <a href="mailto:support@libre.fm">reach out to us</a> and we'll get you going.
                </p>
              </div>
            </div>
            <div class="col-xl-5 col-lg-5 text-center">

                <a href="https://libre.fm/waitlist.php" class="main-btn btn-hover">
                  Register now
              </a>
            </div>
          </div>
        </div>
      </div>
    </section> -->
    <!-- ======== subscribe-section end ======== --> 

        {include file="footer-footer.tpl"}

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
  </body>
</html>
