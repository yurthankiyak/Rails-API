class AnalysesController < ApplicationController
  def index
    render json: Analysis.all
  end
end
