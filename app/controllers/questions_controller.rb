# frozen_string_literal: true

class QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_permission, except: %i[index show]

  def index
    @quiz = Quiz.find(params[:quiz_id])
    @questions = @quiz.questions
    render :index
  end

  def show
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.find(params[:id])
    render :show
  end

  def new
    @quiz = Quiz.find(params[:quiz_id])
    @question = Question.new
    render :new
  end

  def edit
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.find(params[:id])
    render :edit
  end

  def create
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.build(params.require(:question).permit(:stem, :answer, :distractor_1, :distractor_2))
    if @question.save
      flash[:success] = 'Question saved successfully'
      redirect_to quiz_questions_url(@quiz)
    else
      flash.now[:error] = 'Question could not be saved'
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.find(params[:id])
    if @question.update(params.require(:question).permit(:stem, :answer, :distractor_1, :distractor_2))
      flash[:success] = 'Question updated successfully'
      redirect_to quiz_question_url(@quiz, @question)
    else
      flash.now[:error] = 'Question could not be updated'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.find(params[:id])
    @question.destroy
    flash[:success] = 'Question deleted successfully'
    redirect_to quiz_questions_url(@quiz), status: :see_other
  end

  def require_permission
    @quiz = Quiz.find(params[:quiz_id])
    return unless @quiz.creator != current_user

    flash[:error] = 'You do not have permission to do that.'
    redirect_to quiz_path(@quiz)
  end
end
