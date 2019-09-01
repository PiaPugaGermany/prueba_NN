class TodosController < ApplicationController


  def index
    @todos = Todo.limit(9)
  end

  def show
    @todo = Todo.find(params[:id])
    @top5 = Todouser.all.where(todo_id: @todo).order(:created_at).limit(5).pluck('user_id')
    @todousers_users_id = Todouser.all.where(todo_id: @todo).pluck('user_id')
  end

  def complete
    @todo = Todo.find(params[:todo_id])
  end

end
