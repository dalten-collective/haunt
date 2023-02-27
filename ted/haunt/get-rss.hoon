/-  hon=haunt, spider
/+  *strandio
=,  strand=strand:spider
=>
  ::
  =,  dejs:format
  |%
  ::  +chan: extract the data
  ::
  ++  chan
    ^-  $-(json channel:rss:hon)
    %-  ot
    :~  title+so
        link+so
        description+so
      ::
        :-  %items
        %+  cu
          |=  tems=items:rss:hon
          %+  sort  tems
          |=  $:  [@ @ @ @ a=@da]
                  [@ @ @ @ b=@da]
              ==
          (gth a b)
        (ar item)
    ==
  ::  +item: an item
  ::
  ++  item
    ^-  $-(json item:rss:hon)
    %-  ot
    :~  title+so
        enclosures+clos
        description+so
        'itunes_image'^so
        published+du
    ==
  ::  +clos: grab the streaming link
  ::
  ++  clos
    |=  j=json
    ^-  @t
    ?>  ?=(%a -.j)
    =+  fir=(snag 0 p.j)
    ((ot url+so ~) fir)
  ::  +feed:
  ::
  ::     using a shitty api to get json because
  ::     of strange formatting in the rss feed.
  ::
  ++  feed
    ^-  request:http
    :^    %'GET'
        %+  rap  3
        :~  'https://rss-to-json-serverless-api.vercel.app/api?feedURL='
            'https://feeds.soundcloud.com/users/soundcloud:users:581258583/sounds.rss'
        ==
      ~['Accept'^'*/*' 'User-Agent'^'Urbit' 'Connection'^'close']
    ~
  --
::
^-  thread:spider
|=  vaz=vase
=/  m  (strand ,vase)
^-  form:m
=+  fail=(pure:m !>(~))
;<  ~  bind:m  (send-request feed)
;<  cli=(unit client-response:iris)  bind:m  take-maybe-response
?~  cli  fail
;<  bod=cord  bind:m  (extract-body u.cli)
?~  jun=(de-json:html bod)  fail
=+  episodes=(chan u.jun)
(pure:m episodes)