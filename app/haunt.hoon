/-  *haunt
/+  verb, dbug, default-agent, rudder
/~  pages  (page:rudder channel:rss action)  /app/haunt
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
    ~>  %bout.[0 '%haunt +on-init']
    =^  cards  state  abet:init:eng
    [cards this]
  ::
  ++  on-save
    ^-  vase
    ~>  %bout.[0 '%haunt +on-save']
    !>(state)
  ::
  ++  on-load
    |=  ole=vase
    ~>  %bout.[0 '%haunt +on-load']
    ^-  (quip card _this)
    =^  cards  state  abet:(load:eng ole)
    [cards this]
  ::
  ++  on-poke
    |=  cag=cage
    ~>  %bout.[0 '%haunt +on-poke']
    ^-  (quip card _this)
    =^  cards  state  abet:(poke:eng cag)
    [cards this]
  ::
  ++  on-peek
    |=  =path
    ~>  %bout.[0 '%haunt +on-peek']
    ^-  (unit (unit cage))
    [~ ~]
  ::
  ++  on-agent
    |=  [wir=wire sig=sign:agent:gall]
    ~>  %bout.[0 '%haunt +on-agent']
    ^-  (quip card _this)
    `this
  ::
  ++  on-arvo
    |=  [wir=wire sig=sign-arvo]
    ~>  %bout.[0 '%haunt +on-arvo']
    ^-  (quip card _this)
    =^  cards  state  abet:(arvo:eng wir sig)
    [cards this]
  ::
  ++  on-watch
    |=  =path
    ~>  %bout.[0 '%haunt +on-watch']
    ^-  (quip card _this)
    `this
  ::
  ++  on-fail
    ~>  %bout.[0 '%haunt +on-fail']
    on-fail:def
  ::
  ++  on-leave
    ~>  %bout.[0 '%haunt +on-leave']
    on-leave:def
  --
|_  [bol=bowl:gall dek=(list card)]
+*  dat  .
++  emit  |=(=card dat(dek [card dek]))
++  emil  |=(lac=(list card) dat(dek (welp lac dek)))
++  abet  ^-((quip card _state) [(flop dek) state])
++  behn  (emit %pass /behn %arvo %b %wait (add now.bol ~h3))
++  grab
  ^+  dat
  %-  emit
  :+  %pass  /find/episodes
  [%arvo %k %fard %haunt %haunt-get-rss noun+!>(~)]
::
++  bind
  =-  (emit %pass /eyre/con %arvo %e -)
  [%connect [[~ [%apps %haunt ~]] dap.bol]]
::
++  init
  ^+  dat
  behn:grab:bind
::
++  load
  |=  vaz=vase
  ^+  dat
  ?>  ?=([%0 *] q.vaz)
  dat(state !<(state-0 vaz))
::
++  arvo
  |=  [wir=wire sig=sign-arvo]
  ^+  dat
  ?+    wir  ~|(no-time-to-explain/[wir sig] !!)
    [%behn ~]  behn:grab
  ::
      [%eyre %con ~]
    ~_  'HAUNTED: failed to bind eyre.'
    ?>(?=([%eyre %bound *] sig) ?>(accepted.sig dat))
  ::
      [%find %episodes ~]
    ~_  'HAUNTED: the rss feed reader is haunted.'
    ?>  ?=([%khan %arow *] sig)
    ?:  ?=(%& -.p.+.sig)
      dat(channel !<(channel:rss +.p.p.+.sig))
    %.  dat
    (slog 'HAUNTED: the feed was eaten.' tang.p.p.+.sig)
  ==
::
++  poke
  |=  [mar=mark vaz=vase]
  ^+  dat
  ?+    mar  ~|(no-time-to-explain/[mar vaz] !!)
      %handle-http-request
    =;  out=(quip card:agent:gall _channel)
      (emil (flop -.out))
    %.  [bol !<(order:rudder vaz) channel]
    %:  (steer:rudder _channel action)
      pages
    ::
      |=  =trail:rudder
      ^-  (unit place:rudder)
      ?~  site=(decap:rudder /apps/haunt site.trail)  ~
      ?+  u.site  ~
        ~       `[%page & %library]                     ::  visit library
        [%$ ~]  `[%away /apps/haunt]
      ==
    ::
      (fours:rudder channel)
    ::
      |=  act=action
      ^-  $@  brief:rudder
          [brief:rudder (list card) _channel]
      'spooky! how\'d you do that?'
    ==
  ==
--