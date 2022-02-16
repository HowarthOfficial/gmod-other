net.Receive('fetchlink', function()

    local link = net.ReadString()
    local justfind = net.ReadString()

    http.Fetch(link, function(body)

        body = body:Split'\n'
        for k,v in next,body do
            if v:match(justfind) then
                net.Start 'linkrespended'
                    net.WriteString(v:match(justfind))
                net.SendToServer()
            end
        end

    end)

end)
