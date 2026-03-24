{*

'Artist Tag' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Artist Tag' Template for Libre.fm
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

{include file='header.tpl' subheader='artist-header.tpl'}

<div about="{$id}" typeof="mo:MusicArtist">

    {if !empty($tagcloud)}
    <h3 style='text-align: center; clear: left;'>{t}Popular tags other people used to describe this artist{/t}</h3>
    <ul class="tagcloud">
        {section name=i loop=$tagcloud}
        <li><a href='{$tagcloud[i].pageurl}' title='{t uses=$tagcloud[i].count}This tag was used %1 times{/t}' rel='tag'>{$tagcloud[i].name}</a></li>
        {/section}
    </ul>
    {/if}

    {if !empty($mytags)}
    <h3 style='text-align: center; clear: left;'>{t}Tags you've used for this artist{/t}</h3>
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
                    <label for='tags'>{t}Add tags:{/t}</label>
                    <div class="input-group">
                        <input class="form-control" type='text' name='tags' id='tags' placeholder="guitar, violin, female vocals, piano" />
                        <span class="input-group-btn">
                            <button class="btn btn-default" type='submit' name='tag' id='tag' value='tag'>
                                {t}Tag{/t}
                            </button>
                        </span>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

{include file='footer.tpl'}
