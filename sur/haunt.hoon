::  welcome back to let's get haunted
::  - by quartus
::
|%
::
+$  action  $%([%none ~])
::
++  rss
  |%
  +$  items  (list item)
  +$  item
    $:  title=@t
        link=@t
        description=@t
        image=@t
        published=@da
    ==
  ::
  +$  channel
    $:  title=@t
        link=@t
        description=@t
        =items
    ==
  --
::
--