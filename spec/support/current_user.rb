module CurrentUser
  def current_user
    @user = FactoryGirl.build_stubbed(:user)
  end
end