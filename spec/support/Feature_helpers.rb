module FeatureHelpers
  def login_warden
    user = Fabricate(:user)
    login_as(user, :scope => :user)
  end
end
