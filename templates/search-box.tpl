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

<form class="navbar-form navbar-right" action='/search.php' method='get' role='search'>
    <div class="form-group">
        <input class="form-control" name='search_term' type='text' value='{$search_term|escape:'html':'UTF-8'}' />
    </div>
    <div class="form-group">
        <select class="form-control" name='search_type'>
            <option value='artist' {if $search_type == 'artist'}selected{/if}>{t}Artist{/t}</option>
            <option value='user' {if $search_type == 'user'}selected{/if}>{t}User{/t}</option>
            <option value='tag' {if $search_type == 'tag'}selected{/if}>{t}Tag{/t}</option>
        </select>
    </div>
    <div class="form-group">
        <button class="btn btn-default" type='submit' id='search_button'>
            <span class="glyphicon glyphicon-search"></span>
            {t}Search{/t}
        </button>
    </div>
</form>
