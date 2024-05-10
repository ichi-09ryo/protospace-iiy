class PrototypesController < ApplicationController
  def index
  end

  def show
    @prototype = Prototype.find(params[:id])
    @comment = Comment.new #@commentに代入
    end
end
