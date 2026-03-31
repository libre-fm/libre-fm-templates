{*

'User Stats' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Stats' Template for Libre.fm
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

{include file='header.tpl' subheader='user-header.tpl'}
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js" integrity="sha512-jGsMH83oKe9asCpkOVkBnUrDDTp8wl+adkB2D+//JtlxO4SrLoJdhbOysIFQJloQFD+C4Fl1rMsQZF76JjV0eQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="{$base_url}/js/stats/user.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqPlot/1.0.9/jquery.jqplot.min.js" integrity="sha512-FQKKXM+/7s6LVHU07eH2zShZHunHqkBCIcDqodXfdV/NNXW165npscG8qOHdxVsOM4mJx38Ep1oMBcNXGB3BCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqPlot/1.0.9/jquery.jqplot.min.css" integrity="sha512-x1sYGOeCnohzDAuU02Ecjrjcyiy3iYTGGQjuiFenhGpoQsEtK2V+/ELYnOGFjFY7LDx609Ndm6O01CzRBkZsxA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqPlot/1.0.9/plugins/jqplot.barRenderer.min.js" integrity="sha512-3bSkTDeICvspsuOVk5OoL165Cw/+7/9l2dBLQfSxdEni9mqsU8bClh1jE6qkoP77m21dfNU3Nh7hpYo3XPNEEw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqPlot/1.0.9/plugins/jqplot.canvasAxisLabelRenderer.min.js" integrity="sha512-jyWWi85r3j7GnE61AF6IHvTcwsqNC++XaC8HpzQzUs930S/ndGKo1uMx3YuGWqgtomnp3HdrQc/NN9AbNYK1HQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqPlot/1.0.9/plugins/jqplot.dateAxisRenderer.min.js" integrity="sha512-yJjgvCexVLrfcNiaB+R/82eXqsyGO4zAde3AWF1rGYPxBWFGLpNkVw5iFz/2DLyTPq7qcC2/Ujzzg/77I1OMJQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqPlot/1.0.9/plugins/jqplot.pointLabels.min.js" integrity="sha512-F+8GbJQ3NDhRUC5Rj8En/Qdmtvu5KJ+DFdFR1LSU1Wf/yLWnaL7dm4RYeScH6rN8tnoDjRPQCWd1MVxbdt+DCg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<h3>Total tracks: {$totaltracks}</h3>

<h4 id="stats_by_artist">{t name=$me->name|escape:'html':'UTF-8'}%1's most played artists{/t} {$timeperiod}</h4>

<h4 id="stats_by_track">{t name=$me->name|escape:'html':'UTF-8'}%1's top tracks{/t} {$timeperiod}</h4>

<h4 id="stats_by_day">{t name=$me->name|escape:'html':'UTF-8'}%1's scrobbles by day{/t}</h4>

{$graphtopartists|@var_dump}

{$graphtopartists->$artists};

<!-- {$graphtopartists->$artists};
{$graphtopartists->artists_data};
{$graphtopartists->tick_interval};
{$graphtopartists->max_x_axis};
{$graphtoptracks->tracks};
{$graphtoptracks->tracks_data};
{$graphtoptracks->tick_interval};
{$graphtoptracks->max_x_axis};
{$graphplaysbydays->plays_by_days}; -->

{include file='footer.tpl'}
