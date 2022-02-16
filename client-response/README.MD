# get a client response to the link from server

```lua
Entity(1):GetLink('https://cloudflare.com/cdn-cgi/trace', 'ip=(.*)', function(html)
    print(html)
end)
```
