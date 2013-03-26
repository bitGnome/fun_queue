class SendStuff
  @queue = :send_stuff_queue
  def self.perform(user_id)
    user = User.find(user_id)
    UserMailer.i_want_stuff(user).deliver
  end
end