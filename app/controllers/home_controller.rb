class HomeController <ApplicationController
  def index
    Rails.logger.info ">>>> #{current_user.inspect}"
    @todos = current_user ? current_user.todos : []
    Rails.logger.info ">>>> #{@todos.inspect}"
  end
end