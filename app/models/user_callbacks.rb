class UserCallbacks
  def after_save(user)
    notify_users(user)
  end

  private

  def notify_users(user)
    User.all.map do |receiver|
      # ActivityMailer.with(to: receiver.email, name: user.name).welcome.deliver_later if receiver != user
      ActivityDelivery
          .with(to: receiver.email, name: user.name)
          .notify(:welcome) if receiver != user
    end
  end
end