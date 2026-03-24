{*

'Login form' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'Login form' Template for Libre.fm
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

  <fieldset>
      <div class="mb-3">
          <label class="form-label" for='username'>{t}Username{/t}</label>
          <input class="form-control form-control-lg" id='username' name='username' type='text' value='{$username}' required autofocus>
      </div>
      <div class="mb-3">
          <label class="form-label" for='password'>{t}Password{/t}</label>
          <input class="form-control form-control-lg" id='password' name='password' type='password' value='' required>
      </div>

      <div class="mb-3 form-check">
          <input class="form-check-input" type='checkbox' checked name='remember' id='remember' />
          <label class="form-check-label" for='remember'> {t}Remember my login{/t}</label>
      </div>
      <input name="return" type="hidden" value="{$return|htmlentities}" />
      <p><button class="btn btn-success btn-lg" type='submit' name='login' value='{t}Login{/t}' />{t}Login{/t}</button></p>
  </fieldset>

  <p><a href="/reset.php">Reset your password</a> or <a href="mailto:support@libre.fm">support@libre.fm</a> if you're having any issues</p>
