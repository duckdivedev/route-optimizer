class PagesController < ApplicationController
  def optimizer

  end

  def submit
    @data1 = params[:data1]
    @data2 = params[:data2]
    redirect_to optimizer_results_path(data1: @data1, data2: @data2)
  end

  def outcome

  end
end
