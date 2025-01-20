# frozen_string_literal: true

class TodosController < ApplicationController
  def index
    @todos = Todo.order(:due_date)
    render :index
  end

  def show
    @todo = Todo.find(params[:id])
    render :show
  end

  def new
    @todo = Todo.new
    render :new
  end
end
