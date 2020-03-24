class UsersController < ApplicationController
  def creditcard
    render "users/creditcard"
  end

  def index
    @nickname = current_user.nickname
  end


end
