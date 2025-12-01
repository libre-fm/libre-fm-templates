{include file='header.tpl' subheader='user-header.tpl'}

<h2>Library</h2> {include file='submenu.tpl' submenu=$page->menu}

{if $page->scrobbles}
	{include file='tracklist.tpl' class=#librarytable# items=$page->scrobbles thead=true fartist=true ftag=true ftime=true fbutton=true flove=true fstream=true type='scrobble'}
{/if}

{include file='footer.tpl'}
