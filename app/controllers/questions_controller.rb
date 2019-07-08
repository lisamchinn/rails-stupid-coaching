class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_statement = params[:question]
    if @user_statement.include? '?'
      @coach_answer = 'Silly question, get dressed and go to work!'
    elsif @user_statement.downcase == 'i am going to work right now!'
      @coach_answer = 'Great!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
