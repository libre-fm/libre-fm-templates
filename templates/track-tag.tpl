{*

'Track tag' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Track tag' Template for Libre.fm
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

{include file='header.tpl' subheader='track-header.tpl'}

<div about="{$track->id|escape:'html':'UTF-8'}" typeof="mo:Track" class="haudio">
    {if !empty($tagcloud)}
    <h3 class="text-center">{t}Popular tags other people used to describe this track{/t}</h3>
    <ul class="tagcloud">
        {section name=i loop=$tagcloud}
        <li><a href='{$tagcloud[i].pageurl}' rel='tag'>{$tagcloud[i].name} ({$tagcloud[i].count})</a></li>
        {/section}
    </ul>
    {/if}
    {if !empty($mytags)}
    <h3 style="text-center">{t}Tags you've used for this track{/t}</h3>
    <ul class="tagcloud">
        {section name=i loop=$mytags}
        <li>{$mytags[i].tag}</li>
        {/section}
    </ul>
    {/if}
    <br />
    <div class="row">
        <div class="col-sm-8">
            <form action='' method='post'>
                <div class="form-group">
                    <label class="add-on" for='tags'>
                        {t}Add tags:{/t}
                    </label>
                    <div class="input-group">
                        <input class="form-control" type='text' name='tags' id='tags' placeholder="guitar, violin, female vocals, piano" />
                        <span class="input-group-btn">
                            <button class="btn btn-default" type='submit' name='tag' id='tag' value='tag'>{t}Tag{/t}</button>
                        </span>
                    </div>
                </div>
            </form>
        </div>

        <br />
    </div>

    {include file='footer.tpl'}
