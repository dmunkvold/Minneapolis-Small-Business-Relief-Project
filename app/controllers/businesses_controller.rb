class BusinessesController < ApplicationController

  def index
    if params[:community_id]
      @businesses = Business.where(community_id: params[:community_id])
    elsif params[:name]
      @businesses = Business.where('name LIKE ?', "%#{params[:name]}%")
      @search = true
    else
      @businesses = Business.all
    end
  end

  def new
    if user_signed_in?
      @business = Business.new
    else
      redirect_to new_user_registration_path
    end
  end

  def create
    @business = Business.new(business_params)
    if @business.valid?
      @business.save
      redirect_to root_url, notice: 'Business Registered!'
    else
      puts @business.errors.details
      render :new, notice: 'Invalid Input'
    end
  end

  def show
    @business = Business.find(params[:id])
  end

  def edit
    @business = Business.find(params[:id])
  end

  def update
    @business = Business.find(current_user.businesses.first.id)
    @business.update(business_params)
    if @business.valid?
      @business.save
      redirect_to root_url, notice: 'Business Updated!'
    else
      flash[:notice] = 'Invalid Input'
      render :edit
    end
  end

  private
  def business_params
    params.require(:business).permit(:name, :status, :description, :community_id, :user_id)
  end
end
