class UserObserver < ActiveRecord::Observer

  def after_update(user)
    History.create(user_id: user.id)
  end
end
