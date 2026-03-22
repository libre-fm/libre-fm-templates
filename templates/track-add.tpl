{*

'404 Error' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'404 Error' Template for Libre.fm
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

{include file='header.tpl'}

{if isset($errors)}
<div id="errors">
    {section loop=$errors name=error}
    <div class="alert alert-danger">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <p>{$errors[error]}</p>
    </div>
    {/section}
</div>
{/if}

<div about="{$id}" typeof="mo:Record" class="haudio">

    <div class="vcard">
        <form action='' method='post'>
            <div class="form-group">
                <label for='name'>Track Name</label>
                <input class="form-control" type='text' name='name' id='name' {if $edit}disabled{/if} value='{$name|escape:'htmlall'}' />
                <p class="help-block">The name of the track</p>
            </div>

            <div class="form-group">
                <label for='url'>Streaming URL</label>
                <input class="form-control" type='text' name='streaming_url' id='streaming_url' value='{$streaming_url|escape:'htmlall'}' />
                <p class="help-block">A link to an Ogg Vorbis file hosted on <a href='http://archive.org'>archive.org</a></p>
            </div>

            <button class="btn btn-primary" type='submit' name='submit' value='{if $edit}Edit{else}Create{/if} Track'>
                {if $edit}Edit{else}Create{/if} Track
            </button>
        </form>
    </div>
</div>

{include file='footer.tpl'}
