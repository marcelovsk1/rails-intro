class PagesController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
    if question.downcase == "i am going to work right now!"
      return "Great!"
    elsif question.end_with?("?")
      "Silly question, get dressed and go to work!"
    else question.end_with?("?!")
      "I don't care, get dressed and go to work!"
    end
  end
end
