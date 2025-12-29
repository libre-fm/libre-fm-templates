{include file='header.tpl' subheader='user-header.tpl' showbio=true}

<h2>Libre.fm recap for {$year}</h2>

{if !empty($scrobblecount)}
   <div class="alert alert-info">
	<span class="lead"><a href="/user/{t name=$me->name}%1{/t}">{t name=$me->name}%1{/t}</a> listened to {$scrobblecount} songs in {$year}</span>
	&nbsp;(That's approximately {$scrobblemins} hours of music!)
</div>
{else}
<div class="alert alert-danger">
<span class="lead">No listening data for {$year}</span>
</div>
{/if}

{if !empty($topsongs)}
<div class="alert alert-secondary">
	<span class="lead">{t name=$me->name}%1{/t} had one favorite song in {$year}: <a href="{$topsongs[0].trackurl}">{$topsongs[0].track} by {$topsongs[0].artist}</a> with {$topsongs[0].freq} plays</span>
</div>
{else}
<div class="alert alert-danger">
<span class="lead">No top song data for {$year}</span>
</div>
{/if}

	<h3>Top artists for {$year}</h3>
{if !empty($topartists)}
	<ol class="list-group">
		{section name=i loop=$topartists}
            {if ($topartists[i].freq > 1)}
			<li class="list-group-item"><a href="{$topartists[i].artisturl}">{$topartists[i].artist}</a> ({$topartists[i].freq} plays)</li>
	        {/if}
		{/section}
	</ol>
{else}
<div class="alert alert-danger">
<span class="lead">No top artist data for {$year}</span>
</div>
{/if}

{if ($user_first_year < 2024)}

{if ($user_first_year > 2002)}

<h3>Previous year recaps</h3>

<ul>
{for $var=2024 to $user_first_year step -1}
 <li><a href="/user/{t name=$me->name}%1{/t}/recap/{$var}">{$var} recap</a></li>
{/for}
</ul>
{/if}
{/if}

{include file='footer.tpl'}
