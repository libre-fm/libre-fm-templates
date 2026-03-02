<style>
  #color-scheme {
display: block;
height: 3px;
width: 3px;
position: absolute;
bottom: 0;
right: 0;
}

@media (prefers-color-scheme: light) {
  #color-scheme {
  background-image: url(/color.php?scheme=light);
}

@media (prefers-color-scheme: dark) {
  #color-scheme {
  background-image: url(/color.php?scheme=dark);
}
</style>
  <div id="color-scheme" title="This is just a box to figure out if more people use Libre.fm with dark mode or light mode">&nbsp;</div>

