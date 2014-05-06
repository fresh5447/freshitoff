class TodosController < ApplicationController

  respond_to :html, :js

  def index
    @todos = current_user.todos
  end

  def new
    @todo = Todo.new
  end

  def show
    @todo = Todo.find params[:id]
  end

  def create
    @todo = current_user.todos.build(todo_params)
    @todo.save
    redirect_to root_path, notice: 'Your new TODO was saved'
  end

  def destroy
    @todo = Todo.find(params[:id])
    if @todo.destroy
      Rails.logger.info ">>> Success!!"
      flash[:notice] = "Todo was removed."
    else
      Rails.logger.info ">>>> Boo!!"
      flash[:error] = "Todo couldn't be deleted. Try again."
    end

    respond_with(@todo) do |f|
      f.html {redirect_to root_path}
      f.js 
    end 

  end

  private

  def todo_params
    params.require(:todo).permit(:description)
  end

end