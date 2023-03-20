class UsersController < ApplicationController

  # def index
  #   if params[:id]
  #     user = User.find(params[:id])
  #     items = user.items
  #   else
  #     items = Item.all
  #   end
  #   render json: items, include: :user
  # end

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

  # def items_index
  #   user = User.find(params[:id])
  #   items = user.items
  #   render json: items, include: :user
  # end

  # def items
  #   item = Item.find(params[:id])
  #   render json: item, include: :user
  # end

  private

  def render_not_response
    render json: { error: "Dog house not found" }, status: :not_found
  end

end
