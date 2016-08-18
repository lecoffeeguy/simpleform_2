class GiftsController < ApplicationController

  def show
    @gift = Gift.find(params[:id])
  end

  def new
    @gift = Gift.new
    @gifts = Gift.all
  end

  def create
    @gift = Gift.new(gift_params)

    if @gift.save
      redirect_to @gift
    else
      render 'new'
    end
  end

  private
    def gift_params
      params.require(:gift).permit(:fname2, :lname2, :message, :fname1, :lname1, :email)
    end

end
