class SubjectsController < ApplicationController
  def index
    render json: Subject.all
  end
end
