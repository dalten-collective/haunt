::  haunt - lets get haunted
::
/-  *haunt
/+  rudder
::
^-  (page:rudder channel:rss action)
|_  [bol=bowl:gall odo=order:rudder can=channel:rss]
++  final  (alert:rudder 'haunt' build)
++  argue
  |=  [headers=header-list:http body=(unit octs)]
  ^-  $@(brief:rudder action)
  =/  args=(map @t @t)
    ?~(body ~ (frisk:rudder q.u.body))
  ?.  (~(has by args) 'REPLACE ME')
    'unsatisfactory post action'
  ?>  authenticated.odo
  'REPLACE ME'
++  build
  |=  $:  args=(list [@t @t])
          megs=(unit [gud=? txt=@t])
      ==
  ^-  reply:rudder
  |^  [%page page]
  ++  page
    ^-  manx
    ;html
      ;head
        ;title:"lgh library"
        ;style:"{(trip styl)}"
        ;meta(charset "utf-8");
        ;meta
          =name     "viewport"
          =content  "width=device-width, initial-scale=1";
      ==
    ::
      ;body
        ;div(class "banner")
          ;img(src "https://images.squarespace-cdn.com/content/v1/5eb9e7e9e21c7641cdca5a6e/1589241889520-VIMFYXSRXGVOO6RUEERA/LGH-SQUARE-LOGO.jpg?format=1500w");
        ==
      ::
        ::  example shelf
        :: ;div(class "bookshelf")
        ::   ;div(class "book")
        ::     ;div(class "side spine")
        ::       ;span(class "spine-title"):"Title"
        ::       ;span(class "spine-author"):"23"
        ::     ==
        ::   ::
        ::     ;div(class "side top");
        ::     ;div(class "side cover");
        ::     ;div(class "side wash");
        ::   ==
        :: ==
        ;div(id "openBook", class "open")
          ;+  open
        ==
      ::
        ;div(class "room")
          ;*  shel
        ==
      ::
        ;div(class "firefly");
        ;div(class "firefly");
        ;div(class "firefly");
        ;div(class "firefly");
        ;div(class "firefly");
        ;div(class "firefly");
        ;div(class "firefly");
        ;div(class "firefly");
        ;div(class "firefly");
        ;div(class "firefly");
        ;div(class "firefly");
        ;div(class "firefly");
      ::
        ;script:"{(trip java)}"
      ==
    ==
  ::
  ++  open
    ;div(class "scene")
      ;div(class "book-wrap")
        ;div(class "left-side")
          ;div(class "book-cover-left");
        ::
          ;div(class "layer1")
            ;div(class "page-left");
          ==
        ::
          ;div(class "layer2")
            ;div(class "page-left");
          ==
        ::
          ;div(class "layer3")
            ;div(class "page-left");
          ==
        ::
          ;div(class "layer4")
            ;div(class "page-left");
          ==
        ::
          ;div(class "layer-text")
            ;div(class "page-left-2")
              ;div(class "corner");
              ;div(class "corner2");
              ;div(class "corner-fold");
              ;div(class "page-text w-richtext")
                ;h3
                  ;strong(id "epiTitle"):"Title"
                ==
              ::
                ;div(id "audioPlayer");
              ==
            ==
          ==
        ==
      ::
        ;div(class "center");
      ::
        ;div(class "right-side")
          ;div(class "book-cover-right");
        ::
          ;div(class "layer1 right")
            ;div(class "page-right");
          ==
        ::
          ;div(class "layer2 right")
            ;div(class "page-right");
          ==
        ::
          ;div(class "layer3 right")
            ;div(class "page-right");
          ==
        ::
          ;div(class "layer4 right")
            ;div(class "page-right");
          ==
        ::
          ;div(class "layer-text right")
            ;div(class "page-right-2")
              ;div(class "page-text w-richtext")
                ;p(id "epiDesc"):"text of episode"
              ==
            ==
          ==
        ==
      ==
    ==
  ++  pars
    |%
    ++  enjs
      =,  enjs:format
      |%
      ++  item
        |=  i=item:rss
        :-  (scot %da published.i)
        %-  pairs
        :~  title+s/title.i
            link+s/link.i
            description+s/description.i
        ==
      ++  channel
        |=  c=channel:rss
        %-  pairs
        :~  title+s/title.c
            link+s/link.c
            description+s/description.c
            items+(pairs (turn items.c item))
        ==
      --
    ++  title
      ;~  pfix
        ;~(plug (star alp) ace episode col ace)
        (star prn)
      ==
    ++  episode
      ;~  pose
        ;~(plug dem ace (jest '1/2'))
        ;~(plug dem dot dem ace)
        ;~(plug dem dot dem)
        ;~(plug dem ace)
        dem
      ==
    --
  ::
  ++  shel
    =+  books=`marl`(flop (book items.can))
    =+  rng=~(. og eny.bol)
    =|  m=marl
    |-  ^-  marl
    ?~  books  m
    =/  [a=@ b=_rng]  (rads:rng 2)
    %=    $
      rng    b
      books  (oust [0 (add a 5)] `marl`books)
    ::
        m
      :_  m
      ;div(class "bookshelf")
        ;*  (scag (add a 5) `marl`books)
      ==
    ==
  ::
  ++  book
    |=  it=items:rss
    =|  c=_1
    =|  m=marl
    =.  it  (flop it)
    |-  ^-  marl
    ?~  it  m
    =/  title
      =-  ?~  hav=-
            ~&  >>>  title.i.it
            (trip title.i.it)
          u.hav
      (rush title.i.it title:pars)
    %=    $
      c   +(c)
      it  t.it
    ::
        m
      :_  m
      ;div(class "book", onclick "openBook('{(scow %da published.i.it)}')")
        ;div(class "side spine")
          ;span(class "spine-title"):"Iss. {(a-co:co c)}"
          ;span(class "spine-author")
            Year
            {(a-co:co y:(yore published.i.it))}
          ==
        ==
      ::
        ;div(class "side top");
        ;div(class "side cover");
        ;div(class "side wash")
          ;span(class "title")
            {(trip title.i.it)}
          ==
        ==
      ==
    ==
  ::  +jays: get json from state
  ::
  ++  jays
    %-  crip
    """
    //  add episode data as a json blob
    const episodeData = {(en-json:html (channel:enjs:pars can))};
    console.log(episodeData);

    function openBook(key) \{
      console.log(key);
      const value = episodeData['items'][key];
      console.log(value);
      //  set up the episode book
      const titleElem = document.getElementById("epiTitle")
      titleElem.innerHTML = value.title;

      const descElem = document.getElementById("epiDesc")
      descElem.innerHTML = value.description;

      const audioElem = document.getElementById("audioPlayer");
      const newAudio = document.createElement('audio');
      newAudio.setAttribute('src', value.link);
      newAudio.setAttribute('controls', 'controls');
      newAudio.setAttribute('preload', 'auto');
      newAudio.style.width = "28vw";
      newAudio.style.maxWidth = "230px";
      audioElem.appendChild(newAudio);

      showBook();
    }
    """
  ::  +java: scripts for page
  ++  java
    %^  cat  3  jays
    '''
    // Handle open/close book

    function showBook() {
      var epiBook = document.getElementById("openBook");
      var disBook = window.getComputedStyle(epiBook).display;
      if (disBook === "none") {
        console.log("fixing display properties")
        epiBook.style.opacity = 0;
        epiBook.style.display = "block";
        setTimeout(function() {
          epiBook.style.opacity = 1;
          document.addEventListener("click", clickHandler);
        }, 50);
      } else {
        epiBook.style.opacity = 0;
        document.removeEventListener("click", clickHandler);
        setTimeout(function() {
          epiBook.style.display = "none";

          const audioElem = document.getElementById("audioPlayer");
          audioElem.innerHTML = '';
        }, 500);
      }
    }

    function clickHandler(event) {
      var epiBook = document.getElementById("openBook");
      if (!epiBook.contains(event.target)) {
        epiBook.style.opacity = 0;
        document.removeEventListener("click", clickHandler);
        setTimeout(function() {
          epiBook.style.display = "none";

          const audioElem = document.getElementById("audioPlayer");
          audioElem.innerHTML = '';
        }, 500);
      }
    }

    // Get all CSS rules for the document using Array methods
    function getRootCssStyles(rootRule = ':root') {
      const cssVars = [];
      [...document.styleSheets].forEach((styleSheet) => {
        try {
          [...styleSheet.cssRules].forEach((rule) => {
            if (rule.selectorText === rootRule) {
              [...rule.style].forEach((style) => {
                if (style.startsWith('--spine-') && !cssVars.includes(style)) {
                  cssVars.push(style);
                }
              });
            }
          });
        } catch (e) {}
      });
      return cssVars;
    }

    function getRandomInt(min, max) {
      return Math.floor(Math.random() * (max - min + 1)) + min;
    }

    function randomChoice(array) {
      return array[Math.floor(Math.random() * array.length)];
    }

    // Assign a random height, pattern, and color to each book
    const spines = Array.from(document.getElementsByClassName('spine'));
    const covers = Array.from(document.getElementsByClassName('cover'));
    const washes = Array.from(document.getElementsByClassName('wash'));
    const tops = Array.from(document.getElementsByClassName('top'));

    const availablePatterns = getRootCssStyles();
    const availableColors = [
      '#422d20', '#421220', '#5a3925', '#81613b', '#774c3a', '#271d20',
      '#b6aca8', '#2b271c', '#321f19', '#5a2827', '#a8835d', '#241b24',
      '#5c343b', '#22151f', '#5b3630',
    ];

    spines.forEach((s, i) => {
      const randomHeight = getRandomInt(220, 290);
      s.style.height = `${randomHeight}px`;
      s.style.top = `${280 - randomHeight}px`;

      const randomPattern = randomChoice(availablePatterns);
      s.style.backgroundImage = `var(${randomPattern})`;

      const randomColor = randomChoice(availableColors);
      s.style.backgroundColor = randomColor;

      covers[i].style.height = `${randomHeight}px`;
      covers[i].style.top = `${280 - randomHeight}px`;

      washes[i].style.height = `${randomHeight}px`;
      washes[i].style.top = `${280 - randomHeight}px`;

      tops[i].style.top = `${280 - randomHeight}px`;
    });
    '''
  ::  +styl: css styling
  ::
  ++  styl
    '''
    // reset styles

    /* http://meyerweb.com/eric/tools/css/reset/ 
      v2.0 | 20110126
      License: none (public domain)
    */

    html, body, div, span, applet, object, iframe,
    h1, h2, h3, h4, h5, h6, p, blockquote, pre,
    a, abbr, acronym, address, big, cite, code,
    del, dfn, em, img, ins, kbd, q, s, samp,
    small, strike, strong, sub, sup, tt, var,
    b, u, i, center,
    dl, dt, dd, ol, ul, li,
    fieldset, form, label, legend,
    table, caption, tbody, tfoot, thead, tr, th, td,
    article, aside, canvas, details, embed, 
    figure, figcaption, footer, header, hgroup, 
    menu, nav, output, ruby, section, summary,
    time, mark, audio, video {
      margin: 0;
      padding: 0;
      border: 0;
      font-size: 100%;
      font: inherit;
      vertical-align: baseline;
    }
    /* HTML5 display-role reset for older browsers */
    article, aside, details, figcaption, figure, 
    footer, header, hgroup, menu, nav, section {
      display: block;
    }
    body {
      line-height: 1;
    }
    ol, ul {
      list-style: none;
    }
    blockquote, q {
      quotes: none;
    }
    blockquote:before, blockquote:after,
    q:before, q:after {
      content: '';
      content: none;
    }
    table {
      border-collapse: collapse;
      border-spacing: 0;
    }

    // then apply this
    * {
      margin: 0px;
    }

    body {
      overflow-x: hidden;
      background: linear-gradient(-45deg, #421204, #4e1a2e, #0e3543, #024031);
      background-size: 400% 400%;
      animation: gradient 15s ease infinite;
      height: 100vh;
    }

    @keyframes gradient {
      0% {
        background-position: 0% 50%;
      }
      50% {
        background-position: 100% 50%;
      }
      100% {
        background-position: 0% 50%;
      }
    }

    .banner {
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .banner img {
      width: 40vw;
      max-width: 300px;
    }

    :root {
      --spine-pyramid:
        linear-gradient(315deg, transparent 75%, rgba(255, 255, 255, 0.1) 0),
        linear-gradient(45deg, transparent 75%, rgba(255, 255, 255, 0.1) 0),
        linear-gradient(135deg, rgba(255, 255, 255, 0.2) 166px, transparent 0),
        linear-gradient(45deg, rgba(0, 0, 0, 0.1) 75%, transparent 0);
      background-size: 20px 20px;
      --spine-stairs:
        repeating-linear-gradient(
          63deg,
          rgba(255, 255, 255, 0.1),
          rgba(255, 255, 255, 0.1) 1px,
          transparent 3px,
          transparent 0
        ),
        linear-gradient(
          127deg,
          rgba(255, 255, 255, 0.1),
          rgba(255, 255, 255, 0.1) 90px,
          transparent 55%,
          transparent 0
        ),
        linear-gradient(transparent 51%, rgba(0, 0, 0, 0.1) 170px);
      background-size: 70px 120px;
      --spine-argyle:
        repeating-linear-gradient(
          120deg,
          rgba(255, 255, 255, 0.1),
          rgba(255, 255, 255, 0.1) 1px,
          transparent 1px,
          transparent 60px
        ),
        repeating-linear-gradient(
          60deg,
          rgba(255, 255, 255, 0.1),
          rgba(255, 255, 255, 0.1) 1px,
          transparent 1px,
          transparent 60px
        ),
        linear-gradient(
          60deg,
          rgba(0, 0, 0, 0.1) 25%,
          transparent 25%,
          transparent 75%,
          rgba(0, 0, 0, 0.1) 75%,
          rgba(0, 0, 0, 0.1)
        ),
        linear-gradient(
          120deg,
          rgba(0, 0, 0, 0.1) 25%,
          transparent 25%,
          transparent 75%,
          rgba(0, 0, 0, 0.1) 75%,
          rgba(0, 0, 0, 0.1)
        );
      background-size: 70px 120px;
      --spine-tartan:
        repeating-linear-gradient(
          transparent,
          transparent 50px,
          rgba(0, 0, 0, 0.4) 50px,
          rgba(0, 0, 0, 0.4) 53px,
          transparent 53px,
          transparent 63px,
          rgba(0, 0, 0, 0.4) 63px,
          rgba(0, 0, 0, 0.4) 66px,
          transparent 66px,
          transparent 116px,
          rgba(0, 0, 0, 0.5) 116px,
          rgba(0, 0, 0, 0.5) 166px,
          rgba(255, 255, 255, 0.2) 166px,
          rgba(255, 255, 255, 0.2) 169px,
          rgba(0, 0, 0, 0.5) 169px,
          rgba(0, 0, 0, 0.5) 179px,
          rgba(255, 255, 255, 0.2) 179px,
          rgba(255, 255, 255, 0.2) 182px,
          rgba(0, 0, 0, 0.5) 182px,
          rgba(0, 0, 0, 0.5) 232px,
          transparent 232px
        ),
        repeating-linear-gradient(
          270deg,
          transparent,
          transparent 50px,
          rgba(0, 0, 0, 0.4) 50px,
          rgba(0, 0, 0, 0.4) 53px,
          transparent 53px,
          transparent 63px,
          rgba(0, 0, 0, 0.4) 63px,
          rgba(0, 0, 0, 0.4) 66px,
          transparent 66px,
          transparent 116px,
          rgba(0, 0, 0, 0.5) 116px,
          rgba(0, 0, 0, 0.5) 166px,
          rgba(255, 255, 255, 0.2) 166px,
          rgba(255, 255, 255, 0.2) 169px,
          rgba(0, 0, 0, 0.5) 169px,
          rgba(0, 0, 0, 0.5) 179px,
          rgba(255, 255, 255, 0.2) 179px,
          rgba(255, 255, 255, 0.2) 182px,
          rgba(0, 0, 0, 0.5) 182px,
          rgba(0, 0, 0, 0.5) 232px,
          transparent 232px
        ),
        repeating-linear-gradient(
          125deg,
          transparent,
          transparent 2px,
          rgba(0, 0, 0, 0.2) 2px,
          rgba(0, 0, 0, 0.2) 3px,
          transparent 3px,
          transparent 5px,
          rgba(0, 0, 0, 0.2) 5px
        );
    }

    .room {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      overflow: hidden;
    }

    .bookshelf {
      width: 95%;
      max-width: 500px;
      padding-top: 15px;
      padding-bottom: 15px;
      padding-left: 10px;
      padding-right: 10px;
      position: relative;
      display: flex;
      flex-wrap: nowrap;
      justify-content: center;
      background-color: #795548;
      -moz-box-shadow:    0px 3px 2px 1px #CCC;
      -webkit-box-shadow: 0px 3px 2px 1px #CCC;
      box-shadow:         0px 3px 2px 1px #CCC;
    }
    .bookshelf:before {
      content: " ";
      background: linear-gradient(0deg, rgb(0 0 0 / 45%) 20%, rgb(113 56 28 / 55%) 62%, rgb(131 71 16 / 64%) 96%);
      top: 24px;
      width: 88%;
      max-width: 405px;
      height: 88%;
      position: absolute;
      border: 2px solid #49240a;
    }
    .bookshelf:after {
      content: " ";
      border: inset #76380678;
      border-width: 24px 55px 15px 55px;
      top: 0px;
      width: 88%;
      max-width: 408px;
      height: 89%;
      position: absolute;
    }

    .book {
      z-index: 10;
      width: 50px;
      height: 280px;
      position: relative;
      margin-top: 20px;
      margin-bottom: 10px;
      margin-left: 5px;
      margin-right: 5px;
      transform-style: preserve-3d;
      transform: translateZ(0) rotateY(0);
      transition: transform 1s;
    }

    .side {
      position: absolute;
      border: 2px solid black;
      border-radius: 3px;
      font-weight: bold;
      color: black;
      text-align: center;
      transform-origin: center left;
    }


    .spine {
      position: relative;
      width: 50px;
      height: 280px;
      /* Patterns from: https://projects.verou.me/css3patterns/ */
      background-image: var(--tartan);
      transform: rotateY(0deg) translateZ(0px);
    }

    .spine-title {
      margin: 2px;
      position: absolute;
      top: 5px;
      left: 0px;
      font-size: 20px;
      color: gold;
      writing-mode: vertical-rl;
      text-orientation: mixed;
    }

    .spine-author {
      position: absolute;
      color: goldenrod;
      bottom: 10px;
      left: 1%;
    }

    .top {
      width: 50px;
      height: 190px;
      top: -2px; /* hmm, why -2 and not 0? */
      background-image: linear-gradient(90deg, white 90%, gray 10%);
      background-size: 5px 5px;
      transform: rotateX(90deg) translateZ(95px) translateY(-95px);
    }

    .cover {
      width: 190px;
      height: 280px;
      top: 0px;
      background-image: url('https://i1.sndcdn.com/artworks-000510689547-co88ej-t3000x3000.jpg');
      background-size: cover;
      background-position: center;
      backgorund-repeat: no-repeat;
      left: 50px;
      transform: rotateY(90deg) translateZ(0);
      transition: transform 1s;
    }

    .wash {
      width: 190px;
      height: 280px;
      top: 0px;
      left: 50px;
      background: linear-gradient(90deg, rgba(0,0,0,1) 19%, rgb(170 126 3) 9%, rgba(65,11,11,1) 20%);
      transform: rotateY(90deg) translateZ(0);
      transition: transform 1s;
      opacity: 85%;
    }
    
    .title {
      margin: 2px;
      position: absolute;
      top: 10px;
      left: 0px;
      font-size: 20px;
      color: gold;
      writing-mode: horizontal;
      text-orientation: mixed;
    }

    .book:hover {
      z-index: 30;
      transform: rotateX(-25deg) rotateY(-40deg) rotateZ(-15deg) translateY(50px)
        translateX(-30px);
    }


    /* Open Book */
    .w-block {
      display: block;
    }
    .w-inline-block {
      max-width: 100%;
      display: inline-block;
    }

    .w-webflow-badge,
    .w-webflow-badge * {
      position: static;
      left: auto;
      top: auto;
      right: auto;
      bottom: auto;
      z-index: auto;
      display: block;
      visibility: visible;
      overflow: visible;
      overflow-x: visible;
      overflow-y: visible;
      box-sizing: border-box;
      width: auto;
      height: auto;
      max-height: none;
      max-width: none;
      min-height: 0;
      min-width: 0;
      margin: 0;
      padding: 0;
      float: none;
      clear: none;
      border: 0 none transparent;
      border-radius: 0;
      background: none;
      background-image: none;
      background-position: 0% 0%;
      background-size: auto auto;
      background-repeat: repeat;
      background-origin: padding-box;
      background-clip: border-box;
      background-attachment: scroll;
      background-color: transparent;
      box-shadow: none;
      opacity: 1.0;
      transform: none;
      transition: none;
      direction: ltr;
      font-family: inherit;
      font-weight: inherit;
      color: inherit;
      font-size: inherit;
      line-height: inherit;
      font-style: inherit;
      font-variant: inherit;
      text-align: inherit;
      letter-spacing: inherit;
      text-decoration: inherit;
      text-indent: 0;
      text-transform: inherit;
      list-style-type: disc;
      text-shadow: none;
      font-smoothing: auto;
      vertical-align: baseline;
      cursor: inherit;
      white-space: inherit;
      word-break: normal;
      word-spacing: normal;
      word-wrap: normal;
    }
    .w-webflow-badge {
      position: fixed !important;
      display: inline-block !important;
      visibility: visible !important;
      opacity: 1 !important;
      z-index: 2147483647 !important;
      top: auto !important;
      right: 12px !important;
      bottom: 12px !important;
      left: auto !important;
      color: #AAADB0 !important;
      background-color: #fff !important;
      border-radius: 3px !important;
      padding: 6px 8px 6px 6px !important;
      font-size: 12px !important;
      opacity: 1.0 !important;
      line-height: 14px !important;
      text-decoration: none !important;
      transform: none !important;
      margin: 0 !important;
      width: auto !important;
      height: auto !important;
      overflow: visible !important;
      white-space: nowrap;
      box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.1), 0px 1px 3px rgba(0, 0, 0, 0.1);
    }
    .w-webflow-badge > img {
      display: inline-block !important;
      visibility: visible !important;
      opacity: 1 !important;
      vertical-align: middle !important;
    }

    .w-richtext:before,
    .w-richtext:after {
      content: " ";
      display: table;
    }
    .w-richtext:after {
      clear: both;
    }
    .w-richtext[contenteditable="true"]:before,
    .w-richtext[contenteditable="true"]:after {
      white-space: initial;
    }

    /*-----------------------*/

    h3 {
      margin-top: 20px;
      margin-bottom: 10px;
      font-size: 24px;
      line-height: 30px;
      font-weight: bold;
    }

    h6 {
      margin-top: 10px;
      margin-bottom: 10px;
      font-size: 12px;
      line-height: 18px;
      font-weight: bold;
    }

    p {
      margin-top: 0;
      margin-bottom: 10px;
    }

    a {
      text-decoration: underline;
    }

    .open {
      display: none;
      opacity: 0;
      z-index: 20;
      position: absolute;
      transition: opacity 0.5s ease-in-out;
    }

    .scene {
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      height: 54vw;
      -webkit-box-pack: center;
      -webkit-justify-content: center;
      -ms-flex-pack: center;
      justify-content: center;
      -webkit-box-align: stretch;
      -webkit-align-items: stretch;
      -ms-flex-align: stretch;
      align-items: stretch;
      -webkit-perspective: 4000px;
      perspective: 4000px;
      -webkit-perspective-origin: 50% 0%;
      perspective-origin: 50% 0%;
      position: fixed;
      top: 37%;
      left: 50%;
      transform: translate(-50%, -50%);
      z-index: 9999; /* set a high z-index to ensure it floats on top of other elements */
    }

    .book-wrap {
      position: relative;
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      width: 57vw;
      margin-top: 8vw;
      margin-bottom: 8vw;
      padding-right: 1%;
      padding-left: 1%;
      -webkit-box-pack: center;
      -webkit-justify-content: center;
      -ms-flex-pack: center;
      justify-content: center;
      -webkit-perspective: 4000px;
      perspective: 4000px;
      -webkit-perspective-origin: 50% 50%;
      perspective-origin: 50% 50%;
      -webkit-transform: translate3d(0px, 5%, -264px) rotateX(27deg) rotateY(0deg) rotateZ(-10deg);
      transform: translate3d(0px, 5%, -264px) rotateX(27deg) rotateY(0deg) rotateZ(-10deg);
      -webkit-transition: -webkit-transform 2000ms cubic-bezier(.165, .84, .44, 1);
      transition: -webkit-transform 2000ms cubic-bezier(.165, .84, .44, 1);
      transition: transform 2000ms cubic-bezier(.165, .84, .44, 1);
      transition: transform 2000ms cubic-bezier(.165, .84, .44, 1), -webkit-transform 2000ms cubic-bezier(.165, .84, .44, 1);
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
    }

    .book-wrap:hover {
      -webkit-transform: translate3d(0px, 5%, -264px) rotateX(13deg) rotateY(0deg) rotateZ(-3deg);
      transform: translate3d(0px, 5%, -264px) rotateX(13deg) rotateY(0deg) rotateZ(-3deg);
    }

    .book-cover-left {
      -webkit-box-flex: 1;
      -webkit-flex: 1;
      -ms-flex: 1;
      flex: 1;
      border-top-left-radius: 4%;
      border-bottom-left-radius: 4%;
      background-color: #2e1800;
      box-shadow: inset 4px -4px 4px 1px #635648, inset 7px -7px 4px 0 #221b14;
      -webkit-perspective: 4000px;
      perspective: 4000px;
      -webkit-transform: translate3d(0px, 0px, -1px);
      transform: translate3d(0px, 0px, -1px);
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
    }

    .book-cover-right {
      -webkit-box-flex: 1;
      -webkit-flex: 1;
      -ms-flex: 1;
      flex: 1;
      border-top-right-radius: 4%;
      border-bottom-right-radius: 4%;
      background-color: #2e1800;
      box-shadow: inset -4px -4px 4px 1px #635648, inset -7px -7px 4px 0 #221b14;
    }

    .layer1 {
      position: fixed;
      left: 0px;
      top: 0px;
      right: 0px;
      bottom: 0px;
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      margin: 20px 10px 10px;
      -webkit-box-pack: start;
      -webkit-justify-content: flex-start;
      -ms-flex-pack: start;
      justify-content: flex-start;
      -webkit-transform: translate3d(0px, 0px, 5px);
      transform: translate3d(0px, 0px, 5px);
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
    }

    .page-left {
      -webkit-box-flex: 1;
      -webkit-flex: 1;
      -ms-flex: 1;
      flex: 1;
      border-top-left-radius: 1%;
      border-bottom-left-radius: 1%;
      background-color: #fff;
      box-shadow: inset 0 0 26px 2px #d8cccc, -1px 1px 13px 0 rgba(34, 27, 20, .81);
    }

    .layer-text {
      position: fixed;
      left: 0px;
      top: 0px;
      right: 0px;
      bottom: 0px;
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      width: 97%;
      margin: 20px 10px 18px;
      -webkit-box-pack: start;
      -webkit-justify-content: flex-start;
      -ms-flex-pack: start;
      justify-content: flex-start;
      -webkit-backface-visibility: hidden;
      backface-visibility: hidden;
      -webkit-perspective: 4000px;
      perspective: 4000px;
      -webkit-perspective-origin: 50% 50%;
      perspective-origin: 50% 50%;
      -webkit-transform: translate3d(0px, 0px, 32px);
      transform: translate3d(0px, 0px, 32px);
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
    }

    .layer-text.right {
      -webkit-transform: translate3d(-37px, 0px, 32px);
      transform: translate3d(-37px, 0px, 32px);
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
    }

    .page-left-2 {
      position: relative;
      -webkit-box-flex: 1;
      -webkit-flex: 1;
      -ms-flex: 1;
      flex: 1;
      border-top-left-radius: 18%;
      border-bottom-left-radius: 1%;
      background-color: #fff;
      box-shadow: inset 0 0 7px 4px hsla(0, 13%, 82%, .43), -1px 1px 13px 0 rgba(34, 27, 20, .49);
      -webkit-backface-visibility: hidden;
      backface-visibility: hidden;
      -webkit-transform: rotateX(0deg) rotateY(17deg) rotateZ(0deg);
      transform: rotateX(0deg) rotateY(17deg) rotateZ(0deg);
      -webkit-transform-origin: 100% 50%;
      -ms-transform-origin: 100% 50%;
      transform-origin: 100% 50%;
      -webkit-transition: -webkit-transform 650ms cubic-bezier(.165, .84, .44, 1);
      transition: -webkit-transform 650ms cubic-bezier(.165, .84, .44, 1);
      transition: transform 650ms cubic-bezier(.165, .84, .44, 1);
      transition: transform 650ms cubic-bezier(.165, .84, .44, 1), -webkit-transform 650ms cubic-bezier(.165, .84, .44, 1);
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
    }

    .page-left-2:hover {
      -webkit-transform: rotateX(0deg) rotateY(7deg) rotateZ(0deg);
      transform: rotateX(0deg) rotateY(7deg) rotateZ(0deg);
    }

    .left-side {
      position: relative;
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      width: 49%;
      -webkit-backface-visibility: hidden;
      backface-visibility: hidden;
      -webkit-perspective: 4000px;
      perspective: 4000px;
      -webkit-perspective-origin: 0% 50%;
      perspective-origin: 0% 50%;
      -webkit-transform: rotateX(0deg) rotateY(20deg) rotateZ(0deg);
      transform: rotateX(0deg) rotateY(20deg) rotateZ(0deg);
      -webkit-transform-origin: 100% 50%;
      -ms-transform-origin: 100% 50%;
      transform-origin: 100% 50%;
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
    }

    .right-side {
      position: relative;
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      width: 49%;
      -webkit-perspective: 4000px;
      perspective: 4000px;
      -webkit-perspective-origin: 0% 50%;
      perspective-origin: 0% 50%;
      -webkit-transform: rotateX(0deg) rotateY(-1deg) rotateZ(0deg);
      transform: rotateX(0deg) rotateY(-1deg) rotateZ(0deg);
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
    }

    .center {
      width: 3%;
      background-image: -webkit-radial-gradient(circle farthest-corner at 56% -8%, #fff 8%, transparent 0), -webkit-radial-gradient(circle farthest-corner at 50% 108%, #fff 8%, transparent 0), -webkit-linear-gradient(0deg, #635648, #2e1800 21%, #635648 30%, #2e1800 48%, #635648 68%, #2e1800 79%, #635648);
      background-image: radial-gradient(circle farthest-corner at 56% -8%, #fff 8%, transparent 0), radial-gradient(circle farthest-corner at 50% 108%, #fff 8%, transparent 0), linear-gradient(90deg, #635648, #2e1800 21%, #635648 30%, #2e1800 48%, #635648 68%, #2e1800 79%, #635648);
    }

    .corner-fold {
      position: absolute;
      left: 0px;
      top: 0px;
      width: 30px;
      height: 30px;
      border-right: 1px solid hsla(0, 13%, 82%, .55);
      border-bottom: 1px solid hsla(0, 13%, 82%, .55);
      background-image: -webkit-linear-gradient(315deg, transparent 47%, #f0f0f0 48%, #fff 55%, #f6f6f6);
      background-image: linear-gradient(135deg, transparent 47%, #f0f0f0 48%, #fff 55%, #f6f6f6);
      box-shadow: 6px 6px 9px -4px hsla(0, 13%, 82%, .53);
    }

    .corner {
      position: absolute;
      left: 0px;
      top: 27px;
      width: 5vw;
      height: 5vw;
      background-image: -webkit-linear-gradient(315deg, #fff 30%, transparent);
      background-image: linear-gradient(135deg, #fff 30%, transparent);
      box-shadow: inset 13px 0 17px -12px hsla(0, 13%, 82%, .43);
    }

    .corner2 {
      position: absolute;
      left: 28px;
      top: 0px;
      width: 5vw;
      height: 5vw;
      background-image: -webkit-linear-gradient(315deg, #fff 31%, transparent);
      background-image: linear-gradient(135deg, #fff 31%, transparent);
      box-shadow: inset 0 13px 17px -12px hsla(0, 13%, 82%, .43);
    }

    .page-text {
      height: -webkit-fill-available;
      position: relative;
      display: block;
      width: 80%;
      max-width: -webkit-fill-available;
      margin-top: 25px;
      margin-right: auto;
      margin-left: auto;
      font-family: Georgia, Times, 'Times New Roman', serif;
    }

    .page-text p {
      margin-bottom: 0px;
      font-size: 0.85vw;
      line-height: 1.5;
    }

    .page-text h3 {
      font-family: 'Palatino Linotype', 'Book Antiqua', Palatino, serif;
      font-style: italic;
    }

    .page-text h6 {
      font-family: 'PT Sans', sans-serif;
      font-size: 9px;
      text-decoration: none;
    }

    .page-text a {
      color: #da5a13;
    }

    .layer2 {
      position: fixed;
      left: 0px;
      top: 0px;
      right: 0px;
      bottom: 0px;
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      margin: 20px 10px 13px;
      -webkit-box-pack: start;
      -webkit-justify-content: flex-start;
      -ms-flex-pack: start;
      justify-content: flex-start;
      -webkit-transform: translate3d(2px, 0px, 10px);
      transform: translate3d(2px, 0px, 10px);
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
    }

    .layer2.right {
      -webkit-transform: translate3d(-5px, 0px, 10px);
      transform: translate3d(-5px, 0px, 10px);
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
    }

    .layer3 {
      position: fixed;
      left: 0px;
      top: 0px;
      right: 0px;
      bottom: 0px;
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      margin: 20px 10px 13px;
      -webkit-box-pack: start;
      -webkit-justify-content: flex-start;
      -ms-flex-pack: start;
      justify-content: flex-start;
      -webkit-transform: translate3d(4px, 0px, 20px);
      transform: translate3d(4px, 0px, 20px);
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
    }

    .layer3.right {
      -webkit-transform: translate3d(-10px, 0px, 20px);
      transform: translate3d(-10px, 0px, 20px);
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
    }

    .layer4 {
      position: fixed;
      left: 0px;
      top: 0px;
      right: 0px;
      bottom: 0px;
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      margin: 20px 10px 15px;
      -webkit-box-pack: start;
      -webkit-justify-content: flex-start;
      -ms-flex-pack: start;
      justify-content: flex-start;
      -webkit-transform: translate3d(6px, 0px, 30px);
      transform: translate3d(6px, 0px, 30px);
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
    }

    .layer4.right {
      -webkit-transform: translate3d(-15px, 0px, 30px);
      transform: translate3d(-15px, 0px, 30px);
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
    }

    .page-right-2 {
      overflow: scroll;
      position: relative;
      -webkit-box-flex: 1;
      -webkit-flex: 1;
      -ms-flex: 1;
      flex: 1;
      border-top-right-radius: 1%;
      border-bottom-right-radius: 1%;
      background-color: #fff;
      box-shadow: inset 0 0 7px 4px hsla(0, 13%, 82%, .43), 1px 1px 13px 0 rgba(34, 27, 20, .49);
      -webkit-backface-visibility: hidden;
      backface-visibility: hidden;
      -webkit-transform: rotateX(0deg) rotateY(-3deg) rotateZ(0deg);
      transform: rotateX(0deg) rotateY(-3deg) rotateZ(0deg);
      -webkit-transform-origin: 0% 50%;
      -ms-transform-origin: 0% 50%;
      transform-origin: 0% 50%;
      -webkit-transition: -webkit-transform 850ms ease;
      transition: -webkit-transform 850ms ease;
      transition: transform 850ms ease;
      transition: transform 850ms ease, -webkit-transform 850ms ease;
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
    }

    .page-right-2:hover {
      -webkit-transform: rotateX(0deg) rotateY(-17deg) rotateZ(0deg);
      transform: rotateX(0deg) rotateY(-17deg) rotateZ(0deg);
    }

    .page-right {
      -webkit-box-flex: 1;
      -webkit-flex: 1;
      -ms-flex: 1;
      flex: 1;
      border-top-right-radius: 1%;
      border-bottom-right-radius: 1%;
      background-color: #fff;
      box-shadow: inset 0 0 26px 2px #d8cccc, 1px 1px 13px 0 rgba(34, 27, 20, .81);
    }

    @media (max-width: 991px) {
      .scene {
        height: 56vw;
      }
      .book-wrap {
        width: 62vw;
      }
      .page-left-2 {
        border-top-left-radius: 20%;
      }
      .corner-fold {
        left: 0%;
        top: -1%;
        width: 3.5vw;
        height: 3.5vw;
        max-height: 35px;
        background-image: -webkit-linear-gradient(315deg, transparent 50%, #f0f0f0 51%, #fff 52%, #f6f6f6);
        background-image: linear-gradient(135deg, transparent 50%, #f0f0f0 51%, #fff 52%, #f6f6f6);
      }
      .corner {
        top: 8%;
      }
      .page-text h3 {
        margin-top: 2vw;
        margin-bottom: 1vw;
        font-size: 3vw;
      }
      .page-text h6 {
        margin-top: 1vw;
        margin-bottom: 1vw;
        font-size: 1vw;
      }
      .page-right-2 {
        padding-left: 9%;
      }
    }

    @media (max-width: 767px) {
      .book-wrap {
        width: 80vw;
        margin-bottom: 2vw;
      }
      .layer-text {
        width: 94%;
        -webkit-transform: translate3d(0px, 0px, 20px);
        transform: translate3d(0px, 0px, 20px);
      }
      .layer-text.right {
        -webkit-box-pack: end;
        -webkit-justify-content: flex-end;
        -ms-flex-pack: end;
        justify-content: flex-end;
        -webkit-transform: translate3d(-34px, 0px, 24px);
        transform: translate3d(-34px, 0px, 24px);
      }
      .page-left-2 {
        border-top-left-radius: 23%;
        -webkit-transform: rotateX(0deg) rotateY(17deg) rotateZ(0deg) translate(9px, 0px);
        transform: rotateX(0deg) rotateY(17deg) rotateZ(0deg) translate(9px, 0px);
      }
      .corner-fold {
        width: 4.5vw;
        height: 4.5vw;
        max-height: 29px;
        min-width: 29px;
        background-image: -webkit-linear-gradient(310deg, transparent 48%, #f0f0f0 49%, #fff 50%, #f6f6f6);
        background-image: linear-gradient(140deg, transparent 48%, #f0f0f0 49%, #fff 50%, #f6f6f6);
      }
      .page-text {
        margin-top: 2vw;
      }
      .page-text h3 {
        margin-top: 0vw;
        font-size: 3vw;
      }
      .layer2 {
        -webkit-transform: translate3d(2px, 0px, 6px);
        transform: translate3d(2px, 0px, 6px);
      }
      .layer2.right {
        -webkit-transform: translate3d(-5px, 0px, 6px);
        transform: translate3d(-5px, 0px, 6px);
      }
      .layer3 {
        -webkit-transform: translate3d(4px, 0px, 12px);
        transform: translate3d(4px, 0px, 12px);
      }
      .layer3.right {
        -webkit-transform: translate3d(-10px, 0px, 12px);
        transform: translate3d(-10px, 0px, 12px);
      }
      .layer4 {
        -webkit-transform: translate3d(6px, 0px, 18px);
        transform: translate3d(6px, 0px, 18px);
      }
      .layer4.right {
        -webkit-transform: translate3d(-15px, 0px, 18px);
        transform: translate3d(-15px, 0px, 18px);
      }
      .page-right-2 {
        width: 92%;
        -webkit-box-flex: 0;
        -webkit-flex: 0 auto;
        -ms-flex: 0 auto;
        flex: 0 auto;
      }
    }

    @media (max-width: 479px) {
      .scene {
        height: 69vw;
      }
      .corner-fold {
        width: 5.5vw;
        height: 5.5vw;
        min-width: 21px;
      }
    }

    .firefly {
      position: fixed;
      left: 50%;
      top: 50%;
      width: 0.4vw;
      height: 0.4vw;
      margin: -0.2vw 0 0 9.8vw;
      animation: ease 200s alternate infinite;
      pointer-events: none;
    }
    .firefly::before, .firefly::after {
      content: "";
      position: absolute;
      width: 100%;
      height: 100%;
      border-radius: 50%;
      transform-origin: -10vw;
    }
    .firefly::before {
      background: black;
      opacity: 0.4;
      animation: drift ease alternate infinite;
    }
    .firefly::after {
      background: white;
      opacity: 0;
      box-shadow: 0 0 0vw 0vw yellow;
      animation: drift ease alternate infinite, flash ease infinite;
    }

    .firefly:nth-child(1) {
      animation-name: move1;
    }
    .firefly:nth-child(1)::before {
      animation-duration: 17s;
    }
    .firefly:nth-child(1)::after {
      animation-duration: 17s, 7543ms;
      animation-delay: 0ms, 6186ms;
    }

    @keyframes move1 {
      0% {
        transform: translateX(17vw) translateY(32vh) scale(0.28);
      }
      4.5454545455% {
        transform: translateX(-18vw) translateY(-15vh) scale(0.71);
      }
      9.0909090909% {
        transform: translateX(-34vw) translateY(-9vh) scale(0.91);
      }
      13.6363636364% {
        transform: translateX(-11vw) translateY(45vh) scale(0.75);
      }
      18.1818181818% {
        transform: translateX(-36vw) translateY(26vh) scale(0.41);
      }
      22.7272727273% {
        transform: translateX(-4vw) translateY(-48vh) scale(0.64);
      }
      27.2727272727% {
        transform: translateX(23vw) translateY(-32vh) scale(0.98);
      }
      31.8181818182% {
        transform: translateX(-9vw) translateY(28vh) scale(0.77);
      }
      36.3636363636% {
        transform: translateX(8vw) translateY(-11vh) scale(0.56);
      }
      40.9090909091% {
        transform: translateX(19vw) translateY(14vh) scale(0.89);
      }
      45.4545454545% {
        transform: translateX(-41vw) translateY(14vh) scale(0.51);
      }
      50% {
        transform: translateX(-10vw) translateY(45vh) scale(0.78);
      }
      54.5454545455% {
        transform: translateX(10vw) translateY(-30vh) scale(0.84);
      }
      59.0909090909% {
        transform: translateX(46vw) translateY(-24vh) scale(0.32);
      }
      63.6363636364% {
        transform: translateX(7vw) translateY(46vh) scale(0.84);
      }
      68.1818181818% {
        transform: translateX(43vw) translateY(-33vh) scale(0.35);
      }
      72.7272727273% {
        transform: translateX(-18vw) translateY(8vh) scale(0.81);
      }
      77.2727272727% {
        transform: translateX(-39vw) translateY(14vh) scale(0.81);
      }
      81.8181818182% {
        transform: translateX(-2vw) translateY(-3vh) scale(0.44);
      }
      86.3636363636% {
        transform: translateX(-46vw) translateY(33vh) scale(0.64);
      }
      90.9090909091% {
        transform: translateX(-30vw) translateY(16vh) scale(0.41);
      }
      95.4545454545% {
        transform: translateX(-42vw) translateY(39vh) scale(0.67);
      }
      100% {
        transform: translateX(29vw) translateY(-6vh) scale(0.54);
      }
    }
    .firefly:nth-child(2) {
      animation-name: move2;
    }
    .firefly:nth-child(2)::before {
      animation-duration: 16s;
    }
    .firefly:nth-child(2)::after {
      animation-duration: 16s, 10596ms;
      animation-delay: 0ms, 5506ms;
    }

    @keyframes move2 {
      0% {
        transform: translateX(38vw) translateY(39vh) scale(0.9);
      }
      5.2631578947% {
        transform: translateX(-35vw) translateY(-8vh) scale(0.52);
      }
      10.5263157895% {
        transform: translateX(47vw) translateY(5vh) scale(0.85);
      }
      15.7894736842% {
        transform: translateX(5vw) translateY(-19vh) scale(0.96);
      }
      21.0526315789% {
        transform: translateX(5vw) translateY(29vh) scale(0.91);
      }
      26.3157894737% {
        transform: translateX(-14vw) translateY(16vh) scale(0.57);
      }
      31.5789473684% {
        transform: translateX(-26vw) translateY(19vh) scale(0.88);
      }
      36.8421052632% {
        transform: translateX(5vw) translateY(42vh) scale(0.4);
      }
      42.1052631579% {
        transform: translateX(-18vw) translateY(-30vh) scale(0.5);
      }
      47.3684210526% {
        transform: translateX(26vw) translateY(37vh) scale(0.78);
      }
      52.6315789474% {
        transform: translateX(9vw) translateY(21vh) scale(0.58);
      }
      57.8947368421% {
        transform: translateX(11vw) translateY(-7vh) scale(0.74);
      }
      63.1578947368% {
        transform: translateX(47vw) translateY(41vh) scale(0.43);
      }
      68.4210526316% {
        transform: translateX(-30vw) translateY(-6vh) scale(0.3);
      }
      73.6842105263% {
        transform: translateX(1vw) translateY(-6vh) scale(0.92);
      }
      78.9473684211% {
        transform: translateX(37vw) translateY(3vh) scale(0.76);
      }
      84.2105263158% {
        transform: translateX(-23vw) translateY(31vh) scale(0.66);
      }
      89.4736842105% {
        transform: translateX(-5vw) translateY(39vh) scale(0.87);
      }
      94.7368421053% {
        transform: translateX(46vw) translateY(10vh) scale(0.97);
      }
      100% {
        transform: translateX(44vw) translateY(2vh) scale(0.32);
      }
    }
    .firefly:nth-child(3) {
      animation-name: move3;
    }
    .firefly:nth-child(3)::before {
      animation-duration: 11s;
    }
    .firefly:nth-child(3)::after {
      animation-duration: 11s, 5588ms;
      animation-delay: 0ms, 4766ms;
    }

    @keyframes move3 {
      0% {
        transform: translateX(12vw) translateY(22vh) scale(0.76);
      }
      3.5714285714% {
        transform: translateX(-37vw) translateY(20vh) scale(0.49);
      }
      7.1428571429% {
        transform: translateX(-31vw) translateY(20vh) scale(1);
      }
      10.7142857143% {
        transform: translateX(-17vw) translateY(34vh) scale(0.34);
      }
      14.2857142857% {
        transform: translateX(-4vw) translateY(23vh) scale(0.28);
      }
      17.8571428571% {
        transform: translateX(5vw) translateY(-31vh) scale(0.6);
      }
      21.4285714286% {
        transform: translateX(12vw) translateY(20vh) scale(0.26);
      }
      25% {
        transform: translateX(-4vw) translateY(-23vh) scale(0.28);
      }
      28.5714285714% {
        transform: translateX(50vw) translateY(8vh) scale(0.27);
      }
      32.1428571429% {
        transform: translateX(-33vw) translateY(-31vh) scale(0.51);
      }
      35.7142857143% {
        transform: translateX(-12vw) translateY(-36vh) scale(0.93);
      }
      39.2857142857% {
        transform: translateX(-33vw) translateY(34vh) scale(0.88);
      }
      42.8571428571% {
        transform: translateX(-16vw) translateY(-34vh) scale(0.7);
      }
      46.4285714286% {
        transform: translateX(-42vw) translateY(-39vh) scale(0.59);
      }
      50% {
        transform: translateX(7vw) translateY(9vh) scale(0.76);
      }
      53.5714285714% {
        transform: translateX(0vw) translateY(43vh) scale(0.73);
      }
      57.1428571429% {
        transform: translateX(-29vw) translateY(-27vh) scale(0.38);
      }
      60.7142857143% {
        transform: translateX(-14vw) translateY(-34vh) scale(0.53);
      }
      64.2857142857% {
        transform: translateX(31vw) translateY(-15vh) scale(0.87);
      }
      67.8571428571% {
        transform: translateX(49vw) translateY(1vh) scale(0.31);
      }
      71.4285714286% {
        transform: translateX(-30vw) translateY(33vh) scale(0.3);
      }
      75% {
        transform: translateX(23vw) translateY(29vh) scale(0.4);
      }
      78.5714285714% {
        transform: translateX(-10vw) translateY(43vh) scale(0.99);
      }
      82.1428571429% {
        transform: translateX(30vw) translateY(46vh) scale(0.77);
      }
      85.7142857143% {
        transform: translateX(35vw) translateY(-28vh) scale(0.61);
      }
      89.2857142857% {
        transform: translateX(41vw) translateY(-9vh) scale(0.37);
      }
      92.8571428571% {
        transform: translateX(-36vw) translateY(8vh) scale(0.35);
      }
      96.4285714286% {
        transform: translateX(-38vw) translateY(-12vh) scale(0.62);
      }
      100% {
        transform: translateX(-1vw) translateY(-9vh) scale(0.65);
      }
    }
    .firefly:nth-child(4) {
      animation-name: move4;
    }
    .firefly:nth-child(4)::before {
      animation-duration: 17s;
    }
    .firefly:nth-child(4)::after {
      animation-duration: 17s, 8979ms;
      animation-delay: 0ms, 4777ms;
    }

    @keyframes move4 {
      0% {
        transform: translateX(-27vw) translateY(33vh) scale(0.64);
      }
      5% {
        transform: translateX(48vw) translateY(31vh) scale(0.56);
      }
      10% {
        transform: translateX(-36vw) translateY(-19vh) scale(0.58);
      }
      15% {
        transform: translateX(4vw) translateY(14vh) scale(0.86);
      }
      20% {
        transform: translateX(19vw) translateY(-33vh) scale(0.79);
      }
      25% {
        transform: translateX(-34vw) translateY(-37vh) scale(0.98);
      }
      30% {
        transform: translateX(35vw) translateY(-16vh) scale(0.83);
      }
      35% {
        transform: translateX(-17vw) translateY(18vh) scale(0.38);
      }
      40% {
        transform: translateX(-18vw) translateY(1vh) scale(0.41);
      }
      45% {
        transform: translateX(42vw) translateY(-41vh) scale(0.95);
      }
      50% {
        transform: translateX(-38vw) translateY(-18vh) scale(1);
      }
      55% {
        transform: translateX(-21vw) translateY(-48vh) scale(0.31);
      }
      60% {
        transform: translateX(43vw) translateY(-31vh) scale(0.38);
      }
      65% {
        transform: translateX(-33vw) translateY(25vh) scale(0.6);
      }
      70% {
        transform: translateX(10vw) translateY(37vh) scale(0.7);
      }
      75% {
        transform: translateX(-37vw) translateY(50vh) scale(0.49);
      }
      80% {
        transform: translateX(-4vw) translateY(14vh) scale(0.52);
      }
      85% {
        transform: translateX(24vw) translateY(-25vh) scale(0.99);
      }
      90% {
        transform: translateX(-15vw) translateY(19vh) scale(0.64);
      }
      95% {
        transform: translateX(25vw) translateY(35vh) scale(0.93);
      }
      100% {
        transform: translateX(37vw) translateY(-35vh) scale(0.68);
      }
    }
    .firefly:nth-child(5) {
      animation-name: move5;
    }
    .firefly:nth-child(5)::before {
      animation-duration: 9s;
    }
    .firefly:nth-child(5)::after {
      animation-duration: 9s, 9232ms;
      animation-delay: 0ms, 564ms;
    }

    @keyframes move5 {
      0% {
        transform: translateX(-8vw) translateY(19vh) scale(0.32);
      }
      5% {
        transform: translateX(-5vw) translateY(21vh) scale(0.72);
      }
      10% {
        transform: translateX(-4vw) translateY(27vh) scale(0.75);
      }
      15% {
        transform: translateX(-5vw) translateY(-48vh) scale(0.65);
      }
      20% {
        transform: translateX(24vw) translateY(-26vh) scale(0.69);
      }
      25% {
        transform: translateX(-33vw) translateY(10vh) scale(0.42);
      }
      30% {
        transform: translateX(26vw) translateY(25vh) scale(0.84);
      }
      35% {
        transform: translateX(-23vw) translateY(-45vh) scale(0.5);
      }
      40% {
        transform: translateX(-11vw) translateY(-9vh) scale(0.3);
      }
      45% {
        transform: translateX(23vw) translateY(19vh) scale(0.78);
      }
      50% {
        transform: translateX(-10vw) translateY(-20vh) scale(0.39);
      }
      55% {
        transform: translateX(22vw) translateY(-12vh) scale(0.63);
      }
      60% {
        transform: translateX(36vw) translateY(28vh) scale(0.55);
      }
      65% {
        transform: translateX(39vw) translateY(12vh) scale(0.47);
      }
      70% {
        transform: translateX(-13vw) translateY(0vh) scale(0.68);
      }
      75% {
        transform: translateX(-24vw) translateY(20vh) scale(0.65);
      }
      80% {
        transform: translateX(47vw) translateY(7vh) scale(0.99);
      }
      85% {
        transform: translateX(-6vw) translateY(44vh) scale(0.32);
      }
      90% {
        transform: translateX(-10vw) translateY(43vh) scale(0.28);
      }
      95% {
        transform: translateX(-41vw) translateY(-45vh) scale(0.79);
      }
      100% {
        transform: translateX(-45vw) translateY(37vh) scale(0.59);
      }
    }
    .firefly:nth-child(6) {
      animation-name: move6;
    }
    .firefly:nth-child(6)::before {
      animation-duration: 14s;
    }
    .firefly:nth-child(6)::after {
      animation-duration: 14s, 10101ms;
      animation-delay: 0ms, 4833ms;
    }

    @keyframes move6 {
      0% {
        transform: translateX(44vw) translateY(-47vh) scale(0.66);
      }
      5.5555555556% {
        transform: translateX(-30vw) translateY(-45vh) scale(1);
      }
      11.1111111111% {
        transform: translateX(12vw) translateY(29vh) scale(0.93);
      }
      16.6666666667% {
        transform: translateX(-37vw) translateY(9vh) scale(0.93);
      }
      22.2222222222% {
        transform: translateX(44vw) translateY(-16vh) scale(0.87);
      }
      27.7777777778% {
        transform: translateX(-37vw) translateY(7vh) scale(0.27);
      }
      33.3333333333% {
        transform: translateX(-41vw) translateY(-25vh) scale(0.96);
      }
      38.8888888889% {
        transform: translateX(-40vw) translateY(-24vh) scale(0.45);
      }
      44.4444444444% {
        transform: translateX(-41vw) translateY(46vh) scale(0.36);
      }
      50% {
        transform: translateX(46vw) translateY(11vh) scale(0.86);
      }
      55.5555555556% {
        transform: translateX(45vw) translateY(-4vh) scale(0.43);
      }
      61.1111111111% {
        transform: translateX(-43vw) translateY(22vh) scale(0.51);
      }
      66.6666666667% {
        transform: translateX(20vw) translateY(-49vh) scale(0.68);
      }
      72.2222222222% {
        transform: translateX(43vw) translateY(-3vh) scale(0.69);
      }
      77.7777777778% {
        transform: translateX(6vw) translateY(-25vh) scale(0.56);
      }
      83.3333333333% {
        transform: translateX(-6vw) translateY(36vh) scale(0.55);
      }
      88.8888888889% {
        transform: translateX(-31vw) translateY(-31vh) scale(0.98);
      }
      94.4444444444% {
        transform: translateX(19vw) translateY(-3vh) scale(0.73);
      }
      100% {
        transform: translateX(6vw) translateY(26vh) scale(0.37);
      }
    }
    .firefly:nth-child(7) {
      animation-name: move7;
    }
    .firefly:nth-child(7)::before {
      animation-duration: 14s;
    }
    .firefly:nth-child(7)::after {
      animation-duration: 14s, 7155ms;
      animation-delay: 0ms, 4727ms;
    }

    @keyframes move7 {
      0% {
        transform: translateX(-43vw) translateY(-48vh) scale(0.55);
      }
      5.8823529412% {
        transform: translateX(-43vw) translateY(-46vh) scale(0.87);
      }
      11.7647058824% {
        transform: translateX(17vw) translateY(31vh) scale(0.34);
      }
      17.6470588235% {
        transform: translateX(42vw) translateY(-25vh) scale(0.96);
      }
      23.5294117647% {
        transform: translateX(-8vw) translateY(11vh) scale(0.63);
      }
      29.4117647059% {
        transform: translateX(-49vw) translateY(-25vh) scale(0.62);
      }
      35.2941176471% {
        transform: translateX(-25vw) translateY(-39vh) scale(0.97);
      }
      41.1764705882% {
        transform: translateX(-46vw) translateY(-34vh) scale(0.44);
      }
      47.0588235294% {
        transform: translateX(-13vw) translateY(-3vh) scale(0.4);
      }
      52.9411764706% {
        transform: translateX(22vw) translateY(28vh) scale(0.32);
      }
      58.8235294118% {
        transform: translateX(-23vw) translateY(28vh) scale(0.38);
      }
      64.7058823529% {
        transform: translateX(19vw) translateY(49vh) scale(0.81);
      }
      70.5882352941% {
        transform: translateX(-36vw) translateY(31vh) scale(0.38);
      }
      76.4705882353% {
        transform: translateX(-26vw) translateY(24vh) scale(0.99);
      }
      82.3529411765% {
        transform: translateX(-40vw) translateY(-49vh) scale(0.54);
      }
      88.2352941176% {
        transform: translateX(2vw) translateY(29vh) scale(0.65);
      }
      94.1176470588% {
        transform: translateX(-35vw) translateY(14vh) scale(0.44);
      }
      100% {
        transform: translateX(-49vw) translateY(30vh) scale(0.67);
      }
    }
    .firefly:nth-child(8) {
      animation-name: move8;
    }
    .firefly:nth-child(8)::before {
      animation-duration: 9s;
    }
    .firefly:nth-child(8)::after {
      animation-duration: 9s, 8044ms;
      animation-delay: 0ms, 7238ms;
    }

    @keyframes move8 {
      0% {
        transform: translateX(44vw) translateY(43vh) scale(0.64);
      }
      4.347826087% {
        transform: translateX(48vw) translateY(-1vh) scale(0.68);
      }
      8.6956521739% {
        transform: translateX(50vw) translateY(33vh) scale(0.83);
      }
      13.0434782609% {
        transform: translateX(25vw) translateY(-40vh) scale(0.95);
      }
      17.3913043478% {
        transform: translateX(-39vw) translateY(45vh) scale(0.83);
      }
      21.7391304348% {
        transform: translateX(-40vw) translateY(-33vh) scale(0.44);
      }
      26.0869565217% {
        transform: translateX(-3vw) translateY(-36vh) scale(0.71);
      }
      30.4347826087% {
        transform: translateX(-34vw) translateY(-26vh) scale(0.37);
      }
      34.7826086957% {
        transform: translateX(29vw) translateY(13vh) scale(0.32);
      }
      39.1304347826% {
        transform: translateX(-24vw) translateY(15vh) scale(0.5);
      }
      43.4782608696% {
        transform: translateX(-40vw) translateY(-18vh) scale(0.67);
      }
      47.8260869565% {
        transform: translateX(-37vw) translateY(-30vh) scale(0.45);
      }
      52.1739130435% {
        transform: translateX(15vw) translateY(-8vh) scale(0.85);
      }
      56.5217391304% {
        transform: translateX(-17vw) translateY(-35vh) scale(0.71);
      }
      60.8695652174% {
        transform: translateX(18vw) translateY(-23vh) scale(0.66);
      }
      65.2173913043% {
        transform: translateX(2vw) translateY(-9vh) scale(0.55);
      }
      69.5652173913% {
        transform: translateX(-41vw) translateY(34vh) scale(0.81);
      }
      73.9130434783% {
        transform: translateX(17vw) translateY(15vh) scale(0.29);
      }
      78.2608695652% {
        transform: translateX(32vw) translateY(-31vh) scale(0.54);
      }
      82.6086956522% {
        transform: translateX(10vw) translateY(44vh) scale(0.55);
      }
      86.9565217391% {
        transform: translateX(-25vw) translateY(-28vh) scale(0.44);
      }
      91.3043478261% {
        transform: translateX(-10vw) translateY(43vh) scale(0.29);
      }
      95.652173913% {
        transform: translateX(-37vw) translateY(11vh) scale(0.88);
      }
      100% {
        transform: translateX(-8vw) translateY(-45vh) scale(0.72);
      }
    }
    .firefly:nth-child(9) {
      animation-name: move9;
    }
    .firefly:nth-child(9)::before {
      animation-duration: 16s;
    }
    .firefly:nth-child(9)::after {
      animation-duration: 16s, 8539ms;
      animation-delay: 0ms, 4947ms;
    }

    @keyframes move9 {
      0% {
        transform: translateX(-26vw) translateY(19vh) scale(0.37);
      }
      5.5555555556% {
        transform: translateX(23vw) translateY(50vh) scale(0.66);
      }
      11.1111111111% {
        transform: translateX(12vw) translateY(-26vh) scale(0.92);
      }
      16.6666666667% {
        transform: translateX(47vw) translateY(-4vh) scale(0.98);
      }
      22.2222222222% {
        transform: translateX(-29vw) translateY(-25vh) scale(0.87);
      }
      27.7777777778% {
        transform: translateX(2vw) translateY(-2vh) scale(0.56);
      }
      33.3333333333% {
        transform: translateX(-37vw) translateY(42vh) scale(0.33);
      }
      38.8888888889% {
        transform: translateX(-30vw) translateY(25vh) scale(0.87);
      }
      44.4444444444% {
        transform: translateX(42vw) translateY(-8vh) scale(0.7);
      }
      50% {
        transform: translateX(44vw) translateY(-35vh) scale(0.54);
      }
      55.5555555556% {
        transform: translateX(-27vw) translateY(36vh) scale(0.46);
      }
      61.1111111111% {
        transform: translateX(-4vw) translateY(18vh) scale(0.73);
      }
      66.6666666667% {
        transform: translateX(46vw) translateY(25vh) scale(0.45);
      }
      72.2222222222% {
        transform: translateX(-6vw) translateY(-30vh) scale(0.69);
      }
      77.7777777778% {
        transform: translateX(2vw) translateY(-49vh) scale(0.6);
      }
      83.3333333333% {
        transform: translateX(-37vw) translateY(10vh) scale(0.29);
      }
      88.8888888889% {
        transform: translateX(35vw) translateY(-6vh) scale(0.28);
      }
      94.4444444444% {
        transform: translateX(-2vw) translateY(39vh) scale(0.68);
      }
      100% {
        transform: translateX(22vw) translateY(-16vh) scale(0.86);
      }
    }
    .firefly:nth-child(10) {
      animation-name: move10;
    }
    .firefly:nth-child(10)::before {
      animation-duration: 18s;
    }
    .firefly:nth-child(10)::after {
      animation-duration: 18s, 7959ms;
      animation-delay: 0ms, 5634ms;
    }

    @keyframes move10 {
      0% {
        transform: translateX(-43vw) translateY(-13vh) scale(0.76);
      }
      3.5714285714% {
        transform: translateX(44vw) translateY(-43vh) scale(0.67);
      }
      7.1428571429% {
        transform: translateX(-16vw) translateY(-12vh) scale(0.41);
      }
      10.7142857143% {
        transform: translateX(-32vw) translateY(32vh) scale(0.32);
      }
      14.2857142857% {
        transform: translateX(-20vw) translateY(-10vh) scale(0.91);
      }
      17.8571428571% {
        transform: translateX(39vw) translateY(8vh) scale(0.84);
      }
      21.4285714286% {
        transform: translateX(50vw) translateY(-25vh) scale(0.92);
      }
      25% {
        transform: translateX(40vw) translateY(-46vh) scale(0.48);
      }
      28.5714285714% {
        transform: translateX(3vw) translateY(-4vh) scale(0.36);
      }
      32.1428571429% {
        transform: translateX(11vw) translateY(11vh) scale(0.49);
      }
      35.7142857143% {
        transform: translateX(44vw) translateY(-10vh) scale(0.26);
      }
      39.2857142857% {
        transform: translateX(30vw) translateY(45vh) scale(0.51);
      }
      42.8571428571% {
        transform: translateX(-42vw) translateY(31vh) scale(0.5);
      }
      46.4285714286% {
        transform: translateX(43vw) translateY(35vh) scale(0.31);
      }
      50% {
        transform: translateX(50vw) translateY(-15vh) scale(0.44);
      }
      53.5714285714% {
        transform: translateX(-40vw) translateY(23vh) scale(0.54);
      }
      57.1428571429% {
        transform: translateX(-3vw) translateY(49vh) scale(0.89);
      }
      60.7142857143% {
        transform: translateX(-20vw) translateY(43vh) scale(0.56);
      }
      64.2857142857% {
        transform: translateX(-12vw) translateY(-9vh) scale(0.81);
      }
      67.8571428571% {
        transform: translateX(-30vw) translateY(3vh) scale(0.93);
      }
      71.4285714286% {
        transform: translateX(31vw) translateY(35vh) scale(0.61);
      }
      75% {
        transform: translateX(-25vw) translateY(-30vh) scale(0.37);
      }
      78.5714285714% {
        transform: translateX(23vw) translateY(-11vh) scale(0.54);
      }
      82.1428571429% {
        transform: translateX(21vw) translateY(29vh) scale(0.5);
      }
      85.7142857143% {
        transform: translateX(13vw) translateY(27vh) scale(0.9);
      }
      89.2857142857% {
        transform: translateX(-15vw) translateY(-16vh) scale(0.32);
      }
      92.8571428571% {
        transform: translateX(-41vw) translateY(0vh) scale(0.79);
      }
      96.4285714286% {
        transform: translateX(45vw) translateY(7vh) scale(0.55);
      }
      100% {
        transform: translateX(-39vw) translateY(15vh) scale(0.55);
      }
    }
    .firefly:nth-child(11) {
      animation-name: move11;
    }
    .firefly:nth-child(11)::before {
      animation-duration: 17s;
    }
    .firefly:nth-child(11)::after {
      animation-duration: 17s, 9432ms;
      animation-delay: 0ms, 1039ms;
    }

    @keyframes move11 {
      0% {
        transform: translateX(-4vw) translateY(-28vh) scale(0.8);
      }
      5.5555555556% {
        transform: translateX(26vw) translateY(48vh) scale(0.47);
      }
      11.1111111111% {
        transform: translateX(21vw) translateY(27vh) scale(0.36);
      }
      16.6666666667% {
        transform: translateX(27vw) translateY(-28vh) scale(0.35);
      }
      22.2222222222% {
        transform: translateX(-29vw) translateY(33vh) scale(0.62);
      }
      27.7777777778% {
        transform: translateX(7vw) translateY(45vh) scale(0.38);
      }
      33.3333333333% {
        transform: translateX(4vw) translateY(-41vh) scale(0.73);
      }
      38.8888888889% {
        transform: translateX(1vw) translateY(-18vh) scale(0.88);
      }
      44.4444444444% {
        transform: translateX(9vw) translateY(-27vh) scale(0.31);
      }
      50% {
        transform: translateX(-11vw) translateY(38vh) scale(0.83);
      }
      55.5555555556% {
        transform: translateX(-35vw) translateY(-40vh) scale(0.81);
      }
      61.1111111111% {
        transform: translateX(-1vw) translateY(-11vh) scale(0.35);
      }
      66.6666666667% {
        transform: translateX(-26vw) translateY(-43vh) scale(0.45);
      }
      72.2222222222% {
        transform: translateX(0vw) translateY(-18vh) scale(0.79);
      }
      77.7777777778% {
        transform: translateX(-11vw) translateY(20vh) scale(0.88);
      }
      83.3333333333% {
        transform: translateX(-33vw) translateY(15vh) scale(0.83);
      }
      88.8888888889% {
        transform: translateX(-19vw) translateY(-41vh) scale(0.46);
      }
      94.4444444444% {
        transform: translateX(-38vw) translateY(7vh) scale(0.51);
      }
      100% {
        transform: translateX(24vw) translateY(-38vh) scale(0.66);
      }
    }
    .firefly:nth-child(12) {
      animation-name: move12;
    }
    .firefly:nth-child(12)::before {
      animation-duration: 10s;
    }
    .firefly:nth-child(12)::after {
      animation-duration: 10s, 10694ms;
      animation-delay: 0ms, 7848ms;
    }

    @keyframes move12 {
      0% {
        transform: translateX(-36vw) translateY(43vh) scale(0.51);
      }
      5.8823529412% {
        transform: translateX(37vw) translateY(-32vh) scale(0.29);
      }
      11.7647058824% {
        transform: translateX(50vw) translateY(43vh) scale(0.8);
      }
      17.6470588235% {
        transform: translateX(-38vw) translateY(1vh) scale(0.32);
      }
      23.5294117647% {
        transform: translateX(-3vw) translateY(-20vh) scale(0.27);
      }
      29.4117647059% {
        transform: translateX(-35vw) translateY(9vh) scale(0.56);
      }
      35.2941176471% {
        transform: translateX(-11vw) translateY(26vh) scale(0.4);
      }
      41.1764705882% {
        transform: translateX(-1vw) translateY(49vh) scale(0.66);
      }
      47.0588235294% {
        transform: translateX(-12vw) translateY(-10vh) scale(0.35);
      }
      52.9411764706% {
        transform: translateX(-29vw) translateY(-26vh) scale(0.65);
      }
      58.8235294118% {
        transform: translateX(-46vw) translateY(24vh) scale(0.28);
      }
      64.7058823529% {
        transform: translateX(-29vw) translateY(11vh) scale(0.4);
      }
      70.5882352941% {
        transform: translateX(0vw) translateY(47vh) scale(0.88);
      }
      76.4705882353% {
        transform: translateX(19vw) translateY(-32vh) scale(0.73);
      }
      82.3529411765% {
        transform: translateX(3vw) translateY(-29vh) scale(0.92);
      }
      88.2352941176% {
        transform: translateX(-16vw) translateY(34vh) scale(0.62);
      }
      94.1176470588% {
        transform: translateX(28vw) translateY(-8vh) scale(0.35);
      }
      100% {
        transform: translateX(26vw) translateY(-41vh) scale(0.34);
      }
    }
    .firefly:nth-child(13) {
      animation-name: move13;
    }
    .firefly:nth-child(13)::before {
      animation-duration: 16s;
    }
    .firefly:nth-child(13)::after {
      animation-duration: 16s, 9698ms;
      animation-delay: 0ms, 8179ms;
    }

    @keyframes move13 {
      0% {
        transform: translateX(-37vw) translateY(-4vh) scale(0.89);
      }
      3.5714285714% {
        transform: translateX(46vw) translateY(-20vh) scale(0.79);
      }
      7.1428571429% {
        transform: translateX(24vw) translateY(48vh) scale(0.32);
      }
      10.7142857143% {
        transform: translateX(-11vw) translateY(35vh) scale(0.71);
      }
      14.2857142857% {
        transform: translateX(-10vw) translateY(-18vh) scale(0.99);
      }
      17.8571428571% {
        transform: translateX(-1vw) translateY(3vh) scale(0.95);
      }
      21.4285714286% {
        transform: translateX(47vw) translateY(37vh) scale(0.84);
      }
      25% {
        transform: translateX(-11vw) translateY(15vh) scale(0.46);
      }
      28.5714285714% {
        transform: translateX(43vw) translateY(27vh) scale(0.72);
      }
      32.1428571429% {
        transform: translateX(30vw) translateY(35vh) scale(0.79);
      }
      35.7142857143% {
        transform: translateX(-23vw) translateY(-40vh) scale(0.71);
      }
      39.2857142857% {
        transform: translateX(-9vw) translateY(-26vh) scale(0.44);
      }
      42.8571428571% {
        transform: translateX(-39vw) translateY(19vh) scale(0.53);
      }
      46.4285714286% {
        transform: translateX(-11vw) translateY(-19vh) scale(0.59);
      }
      50% {
        transform: translateX(-24vw) translateY(23vh) scale(0.96);
      }
      53.5714285714% {
        transform: translateX(-27vw) translateY(-12vh) scale(0.7);
      }
      57.1428571429% {
        transform: translateX(-27vw) translateY(26vh) scale(0.77);
      }
      60.7142857143% {
        transform: translateX(-43vw) translateY(10vh) scale(0.57);
      }
      64.2857142857% {
        transform: translateX(48vw) translateY(-7vh) scale(0.66);
      }
      67.8571428571% {
        transform: translateX(-38vw) translateY(46vh) scale(1);
      }
      71.4285714286% {
        transform: translateX(32vw) translateY(-19vh) scale(0.95);
      }
      75% {
        transform: translateX(14vw) translateY(-1vh) scale(0.34);
      }
      78.5714285714% {
        transform: translateX(-21vw) translateY(0vh) scale(0.34);
      }
      82.1428571429% {
        transform: translateX(5vw) translateY(1vh) scale(0.75);
      }
      85.7142857143% {
        transform: translateX(-42vw) translateY(48vh) scale(0.81);
      }
      89.2857142857% {
        transform: translateX(21vw) translateY(4vh) scale(0.39);
      }
      92.8571428571% {
        transform: translateX(41vw) translateY(-45vh) scale(0.34);
      }
      96.4285714286% {
        transform: translateX(-48vw) translateY(21vh) scale(0.68);
      }
      100% {
        transform: translateX(-43vw) translateY(-34vh) scale(0.72);
      }
    }
    .firefly:nth-child(14) {
      animation-name: move14;
    }
    .firefly:nth-child(14)::before {
      animation-duration: 15s;
    }
    .firefly:nth-child(14)::after {
      animation-duration: 15s, 6166ms;
      animation-delay: 0ms, 3162ms;
    }

    @keyframes move14 {
      0% {
        transform: translateX(-17vw) translateY(0vh) scale(0.79);
      }
      4% {
        transform: translateX(-40vw) translateY(-1vh) scale(0.89);
      }
      8% {
        transform: translateX(36vw) translateY(-27vh) scale(0.92);
      }
      12% {
        transform: translateX(17vw) translateY(-45vh) scale(0.95);
      }
      16% {
        transform: translateX(-32vw) translateY(-21vh) scale(0.27);
      }
      20% {
        transform: translateX(36vw) translateY(42vh) scale(0.42);
      }
      24% {
        transform: translateX(0vw) translateY(-18vh) scale(0.95);
      }
      28% {
        transform: translateX(50vw) translateY(10vh) scale(0.44);
      }
      32% {
        transform: translateX(-15vw) translateY(-20vh) scale(0.34);
      }
      36% {
        transform: translateX(6vw) translateY(-32vh) scale(0.62);
      }
      40% {
        transform: translateX(50vw) translateY(44vh) scale(0.62);
      }
      44% {
        transform: translateX(25vw) translateY(-12vh) scale(0.61);
      }
      48% {
        transform: translateX(35vw) translateY(-30vh) scale(0.58);
      }
      52% {
        transform: translateX(9vw) translateY(14vh) scale(0.41);
      }
      56% {
        transform: translateX(17vw) translateY(-18vh) scale(0.84);
      }
      60% {
        transform: translateX(26vw) translateY(-39vh) scale(0.39);
      }
      64% {
        transform: translateX(48vw) translateY(-33vh) scale(0.42);
      }
      68% {
        transform: translateX(29vw) translateY(-21vh) scale(0.34);
      }
      72% {
        transform: translateX(23vw) translateY(-12vh) scale(0.78);
      }
      76% {
        transform: translateX(-45vw) translateY(-33vh) scale(0.71);
      }
      80% {
        transform: translateX(-16vw) translateY(-25vh) scale(0.6);
      }
      84% {
        transform: translateX(21vw) translateY(3vh) scale(0.69);
      }
      88% {
        transform: translateX(25vw) translateY(-15vh) scale(0.73);
      }
      92% {
        transform: translateX(23vw) translateY(-45vh) scale(0.81);
      }
      96% {
        transform: translateX(47vw) translateY(-19vh) scale(0.51);
      }
      100% {
        transform: translateX(-26vw) translateY(-28vh) scale(0.81);
      }
    }
    .firefly:nth-child(15) {
      animation-name: move15;
    }
    .firefly:nth-child(15)::before {
      animation-duration: 16s;
    }
    .firefly:nth-child(15)::after {
      animation-duration: 16s, 8320ms;
      animation-delay: 0ms, 3090ms;
    }

    @keyframes move15 {
      0% {
        transform: translateX(28vw) translateY(6vh) scale(0.6);
      }
      3.8461538462% {
        transform: translateX(43vw) translateY(-11vh) scale(0.26);
      }
      7.6923076923% {
        transform: translateX(1vw) translateY(-35vh) scale(0.52);
      }
      11.5384615385% {
        transform: translateX(5vw) translateY(-16vh) scale(0.92);
      }
      15.3846153846% {
        transform: translateX(38vw) translateY(37vh) scale(0.3);
      }
      19.2307692308% {
        transform: translateX(-24vw) translateY(35vh) scale(0.8);
      }
      23.0769230769% {
        transform: translateX(50vw) translateY(-39vh) scale(0.71);
      }
      26.9230769231% {
        transform: translateX(36vw) translateY(34vh) scale(0.77);
      }
      30.7692307692% {
        transform: translateX(-9vw) translateY(25vh) scale(0.92);
      }
      34.6153846154% {
        transform: translateX(-32vw) translateY(37vh) scale(0.77);
      }
      38.4615384615% {
        transform: translateX(4vw) translateY(-25vh) scale(0.28);
      }
      42.3076923077% {
        transform: translateX(15vw) translateY(-37vh) scale(0.38);
      }
      46.1538461538% {
        transform: translateX(-26vw) translateY(-20vh) scale(0.33);
      }
      50% {
        transform: translateX(-4vw) translateY(26vh) scale(0.72);
      }
      53.8461538462% {
        transform: translateX(33vw) translateY(-34vh) scale(0.32);
      }
      57.6923076923% {
        transform: translateX(25vw) translateY(49vh) scale(0.95);
      }
      61.5384615385% {
        transform: translateX(24vw) translateY(48vh) scale(0.7);
      }
      65.3846153846% {
        transform: translateX(-44vw) translateY(-40vh) scale(0.58);
      }
      69.2307692308% {
        transform: translateX(-48vw) translateY(-45vh) scale(0.52);
      }
      73.0769230769% {
        transform: translateX(-45vw) translateY(27vh) scale(0.56);
      }
      76.9230769231% {
        transform: translateX(35vw) translateY(42vh) scale(0.97);
      }
      80.7692307692% {
        transform: translateX(41vw) translateY(-44vh) scale(0.27);
      }
      84.6153846154% {
        transform: translateX(35vw) translateY(25vh) scale(0.98);
      }
      88.4615384615% {
        transform: translateX(39vw) translateY(-49vh) scale(0.69);
      }
      92.3076923077% {
        transform: translateX(-1vw) translateY(27vh) scale(0.42);
      }
      96.1538461538% {
        transform: translateX(26vw) translateY(36vh) scale(0.93);
      }
      100% {
        transform: translateX(27vw) translateY(43vh) scale(0.4);
      }
    }
    @keyframes drift {
      0% {
        transform: rotate(0deg);
      }
      100% {
        transform: rotate(360deg);
      }
    }
    @keyframes flash {
      0%, 30%, 100% {
        opacity: 0;
        box-shadow: 0 0 0vw 0vw yellow;
      }
      5% {
        opacity: 1;
        box-shadow: 0 0 2vw 0.4vw yellow;
      }
    }
    '''
  --
--