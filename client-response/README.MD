```lua
Entity(1):GetLink('https://cloudflare.com/cdn-cgi/trace', 'ip=(.*)', function(html)
    print(html)
end)
```
