class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    # if req.path.match(/items/)
    #   item_name = req.path.split("/items/").last
    #   item = @@items.find{|item| item.name == item_name}
    #   resp.write item.price
    binding.pry
    if req.path=="/items/Figs"
      binding.pry
      resp.write "#{@@items[0].price}"
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
