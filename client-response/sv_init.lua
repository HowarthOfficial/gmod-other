util.AddNetworkString 'fetchlink'
util.AddNetworkString 'linkrespended'

debug.getregistry().Player.GetLink = function(self, link, find, meth)

    net.Start 'fetchlink'
        net.WriteString(link)
        net.WriteString(find)
    net.Send(self)

    self.linkgetit = meth

end

net.Receive('linkrespended', function(len, pl)
    
    if pl.linkgetit then
        pl.linkgetit(net.ReadString())
        pl.linkgetit = nil
    end

end)