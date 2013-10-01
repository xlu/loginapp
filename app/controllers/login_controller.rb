class LoginController < ApplicationController

  def index
  end

  def create
    puts "params=#{params.inspect}"
    # stub
    if (params["appleid"] == "secret") && (params["password"] == "secret")
      success = true
    else
      success = false
    end
    if success
      head :ok
    else
      head :internal_server_error
    end
  end
end