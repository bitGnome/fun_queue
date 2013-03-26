class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def subscribe
  end

  def i_want_stuff

    response = Hash.new
    response[:text] = "Thanks check your email"
    response[:status] = 200

    #Resque.enqueue(SendStuff, current_user.id)
    Resque.enqueue(SendStuff, User.first.id)

    respond_to do |format|
      format.json { render :json => response.to_json }
    end

  end

end
