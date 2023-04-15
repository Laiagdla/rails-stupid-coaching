class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @question = params[:question]
    @right_question = 'I am going to work'

    @reply = if @question.eql? @right_question
               @answers[0]
             elsif @question.include? '?'
               @answers[1]
             else
               @answers[2]
             end
  end
end
