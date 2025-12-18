class HomeController < ActionController::Base
  def index
    @users = User.all
    @courses = Course.all
    @subjects = Subject.all
    render :index, layout: false
  end
end