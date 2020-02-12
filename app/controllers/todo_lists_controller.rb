class TodoListsController < ApplicationController

  def index
    @todo_lists = TodoList.all
    # @todoObj = TodoList.all
    render json: @todo_lists
  end

  def show
    @todo_list = TodoList.find(params[:id])
    render json: {todo_list: TodoListSerializer.new(@todo_list)}
  end

  def create
    @todo_list = TodoList.create(todo_list_params)
  end

  private
  def todo_list_params
    params.permit(:todo_date, :user)
  end

end
