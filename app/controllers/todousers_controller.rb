class TodousersController < ApplicationController
before_action :authenticate_user!

  def create
  @todo = Todo.find(params[:todo_id])
  @todouser = Todouser.new(todo:@todo, user: current_user, done: true)
    if @todouser.save
      redirect_to todos_index_path, notice: 'La tarea fue completada'
    else
      redirect_to todos_index_path, alert: 'La tarea no pudo ser completada'
    end
  end

    def destroy
      @todo = Todo.find(params[:todo_id])
      @todouser = Todouser.find_by(todo:@todo, user: current_user, done: true)

      if Todouser.exists?(user_id: current_user.id, todo_id: @todo.id , done: true)
      @todouser.destroy
      redirect_to todos_index_path, alert: 'La tarea ya no se encuentra completada.'
      else
      redirect_to todos_index_path, alert: 'La tarea no ha sido completada aun.'
      end
end
    end
