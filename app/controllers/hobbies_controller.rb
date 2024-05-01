class HobbiesController < ApplicationController
  before_action :move_to_index, except: :index

  def index
  end

  def new
    @hobby = Hobby.new
  end

  def create
    @hobby = Hobby.new(hobby_params)
    if @hobby.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  private
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def hobby_params
    params.require(:hobby).permit(:image, :where_id, :category_id, :type, :text, :cost, :count_id, :from_id, :city).merge(user_id: current_user.id)
  end
end
