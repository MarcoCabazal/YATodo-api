module V1
  class TodosController < ApplicationController
    def index
      todos = Todo.all
      render json: todos
    end

    def create
      todo = Todo.new(todo_params)
      todo.due_date = 2.days.from_now if !todo.due_date
      if todo.save
        render json: { todo: todo }
      else
        render json: { error: "can't save todo" }, status: :unprocessable_entity
      end
    end

    def destroy
    end

    def update
    end

    private
    def todo_params
      params.require(:todo).permit(:title, :due_date, :category_id)
    end
  end
end
