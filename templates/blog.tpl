{include file='header.tpl'}

{if $post}
{$post}
{else}
<h2>Blog post not found!</h2>
<p><a href="/blog">Check the blog for the latest post...</a></p>
{/if}


{include file='footer.tpl'}
