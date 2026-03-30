{*

'User Connections (connect to GNU FM, Last.fm)' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Connections (connect to GNU FM, Last.fm)' Template for Libre.fm
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

<h3>{t}Connections to other services{/t}</h3>

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

<div id='connections'>
    {if $connection_added}
    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <strong>{t}Your new connection has been successfully added!{/t}</strong>
    </div>
    {/if}


    <div class="alert alert-info">
        <p>{t}Connections to other services allow us to do nifty things like forwarding your scrobbles to other places around the web.{/t}<br />
            {t}If that sounds cool then simply make a connection below.{/t}</p>
    </div>

    {if !empty($connections)}
    <h2>{t}Current connections{/t}</h2>
    <table class="table">
        <tr>
            <th>{t}Service{/t}</th>
            <th>{t}Username{/t}</th>
            <th>{t}Forward Scrobbles?{/t}</th>
        </tr>
        {foreach from=$connections item=conn}
        <tr>
            <td>{if $conn.webservice_url == 'http://ws.audioscrobbler.com/2.0/'}<a href='http://www.last.fm'>Last.fm</a>{else}<a href='{$conn.webservice_url}'>{$conn.webservice_url}</a>{/if}</td>
            <td>{$conn.remote_username}</td>
            <td><a href='{$base_url}/user-connections.php?forward={if $conn.forward == 1}0{else}1{/if}&service={$conn.webservice_url}'>{if $conn.forward == 1}{t}Yes{/t}{else}{t}No{/t}{/if}</a></td>
        </tr>
        {/foreach}
    </table>
    {/if}

    <h4>{t}Add a connection{/t}</h4>
    {if isset($lastfm_key)}
    <p><a class="btn btn-primary" href='http://www.last.fm/api/auth/?api_key={$lastfm_key}'>{t}Connect to a Last.fm account{/t}</a></p>
    {/if}

    <div class="alert alert-info">
    <h5>How about importing from Last.fm?</h5>
    <p>This does <strong>not</strong> import your history from Last.fm.</p>
    <p>If you wish to use this please email <a href="mailto:support@libre.fm">support@libre.fm</a> and let us know your Libre.fm and Last.fm usernames.</p>
    <p>Recent scrobbles will be imported and future scrobbles too. Your historical scrobbles to Last.fm will be imported later.</p>
    </div>

    {if isset($gnufm_key)}
    <details>
        <summary>Connect to another GNU FM server</summary>
        <form method="post" class="well">
            <div class="form-group">
                <label for="remote_gnufm_url">
                    Connect to a remote GNU FM account
                </label>
                <input class="form-control" id="remote_gnufm_url" name="remote_gnufm_url" type="text" placeholder="http://mygnufmserver.tld" />
            </div>
            <button class="btn btn-primary" type="submit">Connect</button>
        </form>
    </details>
    {/if}
</div>

{include file='footer.tpl'}
