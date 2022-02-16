<div align="center"><h3> получает ответ клиента на сервер </h3></div>

```lua
Entity(1):GetLink('https://cloudflare.com/cdn-cgi/trace', 'ip=(.*)', function(html)
    print(html)
end)
```
