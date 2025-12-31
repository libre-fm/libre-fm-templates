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
