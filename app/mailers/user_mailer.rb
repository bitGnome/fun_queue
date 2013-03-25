class UserMailer < ActionMailer::Base
  default from: "wecare@awesomeness.com"

  def i_want_stuff(user)
    @user = user
    @url = "http://awesomeness.com"
    mail( :to => user.email, :subject => "You want some stuff eh?")
  end
  
end
