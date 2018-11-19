class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:question]
    @answer = "I don't care, get dressed and go to work!"
    @answer = 'Great!' if @query == "I'm going to work"
    unless @query.nil? || @query == ''
      q_condition = @query.gsub(/\s+$/, '')[-1].include? '?'
    end
    @answer = 'Silly question, get dressed and go to work!' if q_condition
  end
end
