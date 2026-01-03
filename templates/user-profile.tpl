{include file='header.tpl' subheader='user-header.tpl' showbio=true}

{if !($isme)}<div class="alert alert-info"><h2>What did {$me->name} listen to in 2025?</h2><p class="lead"><a class="btn btn-success" href="/user/{$me->name}/recap/2025">See {$me->name}'s 2025 recap</a></p></div>{/if}

{if $nowplaying}
<div class="alert alert-secondary">
<p><strong>{t name=$me->name}%1{/t} is currently listening to: </strong></p>

<p><img src="https://turtle.libre.fm/cover.php?artist={$nowplaying[0].artist}&album={$nowplaying[0].album}" loading="lazy" alt="" style="background: whitesmoke url(https://turtle.libre.fm/spinner.gif); background-position: center center; background-repeat: no-repeat; " width="120" height="120"></p>

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

<h2>Recent plays</h2>

{include file="tracklist.tpl" class=#table# items=$scrobbles fimage=true fstream=true fartist=true flove=true ftime=true}

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
