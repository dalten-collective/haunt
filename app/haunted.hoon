/-  *haunt
/+  verb, dbug, default-agent
::
|%
::
+$  versioned-state  $%(state-0)
::
+$  state-0  [%0 =channel:rss]
::
::
::  boilerplate
::
+$  card  card:agent:gall
--
::
%+  verb  &
%-  agent:dbug
=|  state-0
=*  state  -
::
^-  agent:gall
::
=<
  |_  =bowl:gall
  +*  this  .
      def  ~(. (default-agent this %|) bowl)
      eng   ~(. +> [bowl ~])
  ++  on-init
    ^-  (quip card _this)
    ~>  %bout.[0 '%haunted +on-init']
    =^  cards  state  abet:init:eng
    [cards this]
  ::
  ++  on-save
    ^-  vase
    ~>  %bout.[0 '%haunted +on-save']
    !>(state)
  ::
  ++  on-load
    |=  ole=vase
    ~>  %bout.[0 '%haunted +on-load']
    ^-  (quip card _this)
    =^  cards  state  abet:(load:eng ole)
    [cards this]
  ::
  ++  on-poke
    |=  [mar=mark vaz=vase]
    ~>  %bout.[0 '%haunted +on-poke']
    ^-  (quip card _this)
    `this
  ::
  ++  on-peek
    |=  =path
    ~>  %bout.[0 '%haunted +on-peek']
    ^-  (unit (unit cage))
    [~ ~]
  ::
  ++  on-agent
    |=  [wir=wire sig=sign:agent:gall]
    ~>  %bout.[0 '%haunted +on-agent']
    ^-  (quip card _this)
    `this
  ::
  ++  on-arvo
    |=  [wir=wire sig=sign-arvo]
    ~>  %bout.[0 '%haunted +on-arvo']
    ^-  (quip card _this)
    =^  cards  state  abet:(arvo:eng wir sig)
  ::
  ++  on-watch
    |=  =path
    ~>  %bout.[0 '%haunted +on-watch']
    ^-  (quip card _this)
    `this
  ::
  ++  on-fail
    ~>  %bout.[0 '%haunted +on-fail']
    on-fail:def
  ::
  ++  on-leave
    ~>  %bout.[0 '%haunted +on-leave']
    on-leave:def
  --
|_  [bol=bowl:gall dek=(list card)]
+*  dat  .
++  emit  |=(=card dat(dek [card dek]))
++  emil  |=(lac=(list card) dat(dek (welp lac dek)))
++  abet  ^-((quip card _state) [(flop dek) state])
++  behn  (emit %bass /behn %arvo %b %wait (add now.bol ~h3))
++  grab
  ^+  dat
  %-  emit
  :+  %pass  /find/episodes
  [%arvo %k %fard %haunted haunt-get-rss+!>(~)]
::
++  init
  ^+  dat
  behn:grab
::
++  load
  |=  vaz=vase
  ^+  dat
  ?>  ?=([%0 *] q.vaz)
  dat(state !<(state-0 vaz))
++  arvo
  |=  [wir=wire sig=sign-arvo]
  ^+  dat
  ?+    wir  ~|(no-time-to-explain/[wir sig] !!)
    [%behn ~]  behn:grab
  ::
      [%find %episodes ~]
    ~_  'HAUNTED: the rss feed reader is haunted.'
    ?>  ?=([%khan %arow *] sig)
    ?.  ?=(%& -.p.+.sig)
      dat(channel !<(channel:rss +.p.p.+.sig))
    %.  dat
    (slog 'HAUNTED: the feed was eaten.' tang.p.p.+.sig)
  ==
--