{*

'User Profile' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Profile' Template for Libre.fm
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


{if $nowplaying}
<div class="alert alert-secondary">
    <p><strong>{t name=$me->name}%1{/t} is currently listening to: </strong></p>

	{if $nowplaying[0].mbid}
    <p><img src="https://coverartarchive.org/release/{$nowplaying[0].mbid}/front-250" title="Image from Cover Art Archive" loading="lazy" alt="" style="background: whitesmoke url(https://turtle.libre.fm/spinner.gif); background-position: center center; background-repeat: no-repeat; " width="120" height="120"></p>
	{else}
    <p><img src="https://turtle.libre.fm/cover.php?artist={$nowplaying[0].artist}&album={$nowplaying[0].album}" loading="lazy" alt="" style="background: whitesmoke url(https://turtle.libre.fm/spinner.gif); background-position: center center; background-repeat: no-repeat; " width="120" height="120"></p>
    {/if}

    <p><a class="alert-link" href="{$nowplaying[0].trackurl}">
            {$nowplaying[0].track}
        </a>
        by
        <a class="alert-link" href="{$nowplaying[0].artisturl}">
            {$nowplaying[0].artist}
        </a>
    </p>

    {if ($isme)}<a href="/user/{$this_user->name}/now">An image to embed this in another webpage</a><br><textarea class="form-control">&lt;a href="https://libre.fm/user/{$this_user->name}/"&gt;&lt;img src="https://libre.fm/user/{$this_user->name}/now" alt loading="lazy" style="width: 100%; max-width: 480px; height: auto;"&gt;&lt;/a&gt;</textarea>{/if}

</div>
{/if}

  <div class="card-body">

<h3>Recent plays</h3>

{include file="tracklist.tpl" class=#table# items=$scrobbles fimage=true fstream=true fartist=true flove=true ftime=true}

<div class="card" style="width: 18rem;">
  <!-- <img src="..." class="card-img-top" alt="..."> -->
  <div class="card-body">
{foreach $topartists as $i}
  {if $i@first}
<h5 class="card-title">{$topartists[0].artist}</h5>
    <p class="card-text"></p>
  <ul class="list-group list-group-flush">
  {/if}
<li class="list-group-item"><a href='{$artist.url}'>{$artist.artist}</a></li>

{/foreach}
   <div class="card-body">
    <a href="/user/{$this_user->name}/stats" class="card-link">More stats...</a>   
  </div>
</div>

<!--
{if !empty($lovedArtists)}
	<h4>{t name=$me->name}Libre artists that %1 loves{/t}</h4>
	<ul>
		{section name=i loop=$lovedArtists}
			<li><a href='{$lovedArtists[i].pageurl}'>{$lovedArtists[i].name}</a></li>
		{/section}
	</ul>
{/if}

{if !empty($recommendedArtists)}
	<h4>{t name=$me->name}Libre artists that %1 might like{/t}</h4>
	<ul>
		{foreach from=$recommendedArtists item=artist}
			<li><a href='{$artist.url}'>{$artist.artist}</a></li>
		{/foreach}
	</ul>
{/if} -->

{include file='footer.tpl'}
