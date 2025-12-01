{include file='header.tpl' subheader='user-header.tpl'}

<h3>Total tracks: {$totaltracks}</h3>

<!--
<h4 id="stats_by_artist">{t name=$me->name|escape:'html':'UTF-8'}%1's most played artists{/t} {$timeperiod}</h4>

<h4 id="stats_by_track">{t name=$me->name|escape:'html':'UTF-8'}%1's top tracks{/t} {$timeperiod}</h4>

<h4 id="stats_by_day">{t name=$me->name|escape:'html':'UTF-8'}%1's scrobbles by day{/t}</h4>

{$graphtopartists->$artists};
{$graphtopartists->artists_data};
{$graphtopartists->tick_interval};
{$graphtopartists->max_x_axis};
{$graphtoptracks->tracks};
{$graphtoptracks->tracks_data};
{$graphtoptracks->tick_interval};
{$graphtoptracks->max_x_axis};
{$graphplaysbydays->plays_by_days}; -->

{include file='footer.tpl'}
