class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @choices = @question.choices
  end
  
  def answer
    @choice = Choice.find(:first, :conditions => { :id => params[:id] })
    @answer = Answer.create(:question_id => @choice.question_id, :choice_id => @choice.id)
    
    if Question.last == @choice.question
      render :action => "thankyou"
    else
      question = Question.find(:first, :conditions => { :position => (@choice.question.position + 1) })
      redirect_to question_path(:id => question.id)
    end
    
  end
end
