<ul id="nav" class="navbar-nav ms-auto">
{if ($logged_in)}
<li class="nav-item">{if "" != $this_user->getAvatar(24)}<a class="edit-profile-link" href="/user/{$this_user->name}"><img src="{$this_user->getAvatar(24)}" width="24" height="24" alt loading="lazy" title="Go to your profile {if ($thisusertotaltracks)}({$thisusertotaltracks} tracks scrobbled){/if}"></a> &nbsp;{/if}<a class="edit-profile-link" title="Go to your profile {if ($thisusertotaltracks)}({$thisusertotaltracks} tracks scrobbled){/if}" href="/user/{$this_user->name}">{$this_user->name}</a></li>
<li class="nav-item"><a href="/user/{$this_user->name}/recap/2025" title="Your 2025 recap">2025</a>{if ($this_user_first_year)}{if ($this_user_first_year < 2024)}&mdash;<a href="/user/{$this_user->name}/recap/{$this_user_first_year}" title="Your first year of data recapped!">{$this_user_first_year}</a>{/if}{/if}</li>
<li class="nav-item"><a class="edit-profile-link" href="/user-edit.php">Edit my profile</a></li>
<li class="nav-item"><a target="_blank" href="https://libre.fm/donate.php">Donate</a></li>
<li class="nav-item"><a href="/about">Help</a></li>
<li class="nav-item"><a class="logout-profile-link" href="{$base_url}/login.php?action=logout">{t}Logout{/t}</a></li>
{else}
	  <li class="nav-item"><a href="{$base_url}/login.php">
	    {t}Log in{/t}
	</a></li>
<li class="nav-item"><a href="{$base_url}/register.php">
	    {t}Register{/t}
	</a></li>
<li class="nav-item"><a href="/about">Help</a></li>
<li class="nav-item"><a target="_blank" href="https://libre.fm/donate.php">Donate</a></li>
{/if}

</ul>
