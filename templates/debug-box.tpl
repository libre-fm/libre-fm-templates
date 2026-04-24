{if ($logged_in)}
{literal}
<script>
     // getDomPath by neurino at Stack Overflow CC BY-SA 4.0
     // https://stackoverflow.com/a/69104350

     function getDomPath(el) {
       let nodeName = el.nodeName.toLowerCase();
       if (el === document.body) return 'body';
       if (el.id) nodeName += '#' + el.id;
       else if (el.classList.length)
         nodeName += '.' + [...el.classList].join('.');
       return getDomPath(el.parentNode) + ' ' + nodeName;
     };

     //cssPath by asselin on Stack Overflow CC BY-SA 4.0
     // https://stackoverflow.com/a/12222317

     var cssPath = function(el) {
       if (!(el instanceof Element))
         return;
       var path = [];
       while (el.nodeType === Node.ELEMENT_NODE) {
         var selector = el.nodeName.toLowerCase();
         if (el.id) {
           selector += '#' + el.id;
           path.unshift(selector);
           break;
         } else {
           var sib = el,
             nth = 1;
           while (sib = sib.previousElementSibling) {
             if (sib.nodeName.toLowerCase() == selector)
               nth++;
           }
           if (nth != 1)
             selector += ":nth-of-type(" + nth + ")";
         }
         path.unshift(selector);
         el = el.parentNode;
       }
       return path.join(" > ");
     }


     // Libre.fm specific code
     // AGPLv3 or later, by Matt Lee <mattl@cnuk.org>

     const bugbutton = document.getElementById("bugbutton");

     bugbutton.addEventListener("click", () => {

       const debugCSS = document.createElement('link');
       debugCSS.rel = 'stylesheet';
       debugCSS.href = 'https://libre.fm/themes/2024-end-times/assets/css/librefm-debug.css';
       debugCSS.id = 'librefm-debug-css';

       document.head.append(debugCSS);

       //var debugBox = "<div id='librefm-debug-box'>Hello world</div>";
       const debugBox = document.createElement('div');
       debugBox.id = 'librefm-debug-box';
       debugBox.innerHTML = `<h2>Report a bug/feature request/improvement to Libre.fm</h2><h3 id="lfm-bug-click">Click on things on the page to reference them</h3>
<p>Please do not use this form for support requests. Posts are submitted to a non-monitored location.</p>
          <form id='debug-form' target='_blank' action='https://turtle.libre.fm/debug-box.php' method='post'>
          <textarea style='visibility: hidden; height: 1px;' class='mb-3' name='lfm-el' id='librefm-debug-box-elements'></textarea>
          <label for='librefm-debug-box-bug'>
          <textarea rows='5' class='mb-3' name='lfm-bug' required id='librefm-debug-box-bug' placeholder='Describe your bug/feature request/suggestion here'></textarea>
          </label>
          <p>Please do not submit any generative or third-party content. This will result in your Libre.fm account being closed.</p>
{/literal}
<input type='hidden' name='lfm-user' value='{$this_user->uniqueid}'>
<input type='hidden' name='lfm-url' value='{$smarty.server.REQUEST_URI}'>
{literal}
          <input class='btn btn-success btn-lg' type='submit' value='Submit!'>
          <p>(will open a new window/tab)</p>
          </form>
          <div class='warning'>&nbsp;</div>
        `;

       const header = document.getElementById("home");
       const container = header.getElementsByClassName('container')[0];


       const debugBoxId = document.getElementById('librefm-debug-box');

       if (!debugBoxId) {

         header.insertBefore(debugBox, container);
         document.body.classList.add('debug-body');
         bugbutton.classList.remove('btn-success');
         bugbutton.classList.add('btn-info');

       } else {
         debugBoxId.parentNode.removeChild(debugBoxId);
         document.body.classList.remove('debug-body');
         bugbutton.classList.remove('btn-info');
         bugbutton.classList.remove('debug-style');
          bugbutton.classList.add('btn-success');
       }


       document.addEventListener('click', (event) => {

         // console.log(event.srcElement.style);

         const debugBoxId = document.getElementById('librefm-debug-box');


         if (event.srcElement.parentNode != debugBoxId) {


           console.log(event.srcElement.getAttribute("class"));

           if (event.srcElement.classList.contains("debug-style")) {

             event.srcElement.classList.remove("debug-style");

           } else {

             if (event.srcElement.parentNode.id != debugBoxId.id && event.srcElement.parentNode.parentNode.parentNode.id != debugBoxId.id) {

             event.srcElement.classList.add("debug-style");

             list = document.getElementsByClassName("debug-style");

             const itemList = [];

             console.log("list of things");
             for (let item of list) {
               itemList.push('************ damaged goods:' + cssPath(item.parentNode) + '\n' + item.parentNode.innerHTML + '\n');
             }

             console.log("end of list of things");
             document.getElementById('librefm-debug-box-elements').value = itemList; // item.cssPath + '\n';
           }

         }

         }

       });


     });
</script>
  {/literal}

{/if}



