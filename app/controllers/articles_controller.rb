class ArticlesController < ApplicationController
  def index
    render json: 'hello'
  end

  def show
    render json: "article 1"
  end
end
