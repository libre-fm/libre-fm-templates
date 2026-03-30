{*

'User Profile Edit' Template for GNU FM
Copyright (c) 2009-2026 Free Software Foundation, Inc

'User Profile Edit' Template for Libre.fm
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

<div class="alert alert-primary text-center" role="alert">
    Got Last.fm? <a href='{$base_url}/user-connections.php'>Connect your account</a> and tracks you scrobble to Libre.fm go to both services!</strong>
</div>

<h2>Edit your profile</h2>

{if $me->homepage}
{if $me->laconica_profile}
<p class="bd-callout bd-callout-info">Hey! Glad to see you're using Libre.fm's new personal website and Fediverse features! Why not <a href="https://indieweb.org/discuss">join the IndieWeb discussion</a> (Slack, Discord, IRC).</p>
{/if}
{/if}

<!-- <p><a class="btn btn-success btn-lg" href='{$base_url}/artist-signup.php'>Get an artist account</a></p> -->

<!-- <p><a class="btn btn-default btn-lg" href='{$base_url}/artist-signup.php'>Change my password</a></p>

<p><a class="btn btn-warning btn-lg" href='{$base_url}/artist-signup.php'>Change my email address</a></p>

<p><button class="btn btn-danger btn-lg" href='{$base_url}/artist-signup.php'>Delete my account</button></p> -->

{if isset($errors)}
{section loop=$errors name=error}
<p>{$errors[error]}</p>
{/section}
{/if}

<form class="form-signin" action='{$base_url}/user-edit.php' method='post'>

    <div class="form-group mb-3">
        {if "" != $this_user->getAvatar(128)}<p><img class="img-thumbnail" src="{$this_user->getAvatar(128)}" width="128" height="128" alt loading="lazy"></p>{/if}
        <p class="d-inline-flex gap-1">
        <a class="btn btn-small btn-primary" href="https://libravatar.org" target="_blank">Update at Libravatar.org</a>
        <a class="btn btn-small btn-primary" href="https://gravatar.com" target="_blank">Update at Gravatar</a>
        </p>
    </div>

    <div class="form-group mb-3">
        <label class="form-label" for='fullname'>{t}Your name:{/t}</label>
        <input size="40" maxlength="40" type="text" class="form-control form-control-lg" name='fullname' id='fullname' value='{$fullname|escape:'html':'UTF-8'}' />
        <div class="form-text">{t}Enter a name here, if you want to. It'll appear on your profile.{/t}</div>
    </div>

    <div class="form-group mb-3">
        <p><label class="form-label" for='bio'>{t}Mini Biography:{/t}</label></p>
        <textarea cols="40" rows="5" class="form-control form-control-lg" name='bio' id='bio'>{$bio|escape:'html':'UTF-8'}</textarea>
    </div>

    <div class="form-group mb-3">
        <label class="form-label" for='email'>{t}Email address:{/t}</label>
        <p>{$email|lower}</p>
        <div class="form-text">If you need to change it, please email <a href="mailto:support@libre.fm">support@libre.fm</a></div>
    </div>

    <div class="form-group mb-3">
        <label class="form-label" for='location'>{t}Location:{/t}</label>
        <input size="40" maxlength="40" type="text" class="form-control form-control-lg" name='location' id='location' value='{$location|escape:'html':'UTF-8'}' />
        <div class="form-text">{t}Where do you live? (or want to live){/t}</div>
    </div>

    <div class="form-group mb-3">
        <label class="form-label" for='homepage'>{t}Website address:{/t}</label>
        <input size="40" maxlength="255" type="url" class="form-control form-control-lg" placeholder="https://{$me->name}.example.com/" name='homepage' id='homepage' value='{$homepage|escape:'html':'UTF-8'}' />
        <div class="form-text">Got a website? Tell the world! <strong>Shows up on your profile once you start listening to music</strong></div>
    </div>

    <div class="form-group mb-3">
        <label class="form-label" for='laconica_profile'>{t}Fediverse/social web (ie. Mastodon, GNU social, etc.) profile:{/t}</label>
        <input class="form-control form-control-lg" size="40" maxlength="255" type="url" placeholder="https://example.com/@{$me->name}" name='laconica_profile' id='laconica_profile' value='{$laconica_profile|escape:'html':'UTF-8'}' />
        <div class="form-text">Need an account <a href="https://home.omg.lol/referred-by/mattl" target="_blank">join omg.lol</a> and get access to social.lol</div>
    </div>

<div class="form-group mb-3">
<p class="d-inline-flex gap-1">
  <button class="btn btn-success btn-lg" type="submit" value="{t}Change{/t}">{t}Update profile{/t}</button>
  <button class="btn btn-primary" type="button" data-bs-toggle="collapse" href="#change-pw" aria-expanded="false" aria-controls="change-pw">
    Change password
  </button>
  <button class="btn btn-danger" type="button" data-bs-toggle="collapse" data-bs-target="#delete-account" aria-expanded="false" aria-controls="delete-account">
    Delete account
  </button>
</p>
</div>

        <div class="alert alert-secondary collapse" role="alert" id="change-pw">

            <h3>Changing your password</h3>

            <p>Enter your new password in the following two fields:</p>
            <div class="form-group mb-3">
                <label class="form-label" for='password_1'>{t}Password:{/t} (32 characters max)
                    <span>{t}Leave this blank if you don't want to change your password.{/t}</span>
                </label>
                <input class="form-control form-control-lg" name='password_1' id='password_1' size="32" maxlength="32" type='password' autocomplete="off" value='' />
            </div>
            <div class="form-group mb-3">
                <label class="form-label" for='password_2'>{t}Confirm Password:{/t}</label>
                <input class="form-control form-control-lg" name='password_2' id='password_2' size="32" maxlength="32" type='password' autocomplete="off" value='' />
            </div>
        </div>

        <div class="alert alert-danger mb-3 collapse" id="delete-account">
            <h3>Delete your account?</h3>
            <div class="form-check">
                <label for='delete' class="form-check-label">Danger Zone: {t}Delete my account{/t}</label>
                <input type='checkbox' class="form-check-input" id='delete_account_broken' name='delete_account' id='delete' />
            </div>
        </div>

  <input name='submit' value='1' type='hidden' />

</form>

{include file='footer.tpl'}
