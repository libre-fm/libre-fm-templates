{*

'Add API key' Template for GNU FM
Copyright (c) 2026 Free Software Foundation, Inc

'Add API key' Template for Libre.fm
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

{include file='mini-header.tpl'}
<h2 class="mb-3">Get an API key for Libre.fm</h2>

<form class="form-signin mt-1" method="post" action=''>
    <fieldset>
        <div class="mb-3">
            <label class="form-label" for='description'>{t}Describe the application you're working on{/t}</label>
            <input type="text" class="form-control form-control-lg" id="description" name="description" required />
        </div>

        <div class="mb-3 form-check">
            <input class="form-check-input" type="checkbox" required value="remember-me" id="foo-check" name="foo-check">
            <label class="form-check-label" for="foo-check">I agree to the <a href="/terms" target="_blank">terms and conditions</a> and <a href="/privacy" target="_blank">privacy policy</a>. I am over 18 years of age and a human being. Gen AI is trash. LLMs are trash. Open Web forever.</label>
        </div>
        <div class="mb-3 form-check">
            <input class="form-check-input" type="checkbox" required value="remember-me" id="foo2-check" name="foo2-check">
            <label class="form-check-label" for="foo2-check">I understand Libre.fm is run by one person. I will be kind and patient.</label>
        </div>
        <div class="mb-3">
            <button class="btn btn-lg btn-success" name="register" type="submit" value="Key an API key">Get an API key</button>
        </div>
    </fieldset>

</form>

{include file='mini-footer.tpl'}
