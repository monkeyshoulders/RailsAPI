class ArticlesController < ApplicationController
  def index
    render json: 'Heller'
  end

  def show
    render json: "These are the droids you are looking for"
  end

  def update
    render json: "your patched in"
  end

  def destroy
    render json: "EXTERMINATE! EXTERMINATE!"
  end
end
