class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items/Figs"
      resp.write "#{@@items[0].price}"
    elsif req.path=="/items/Apples"
      resp.write "Item not found"
      resp.status = 400
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
