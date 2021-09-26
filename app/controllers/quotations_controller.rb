class QuotationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @quotations = Quotation.order("created_at DESC")
  end

  def new
    @quotation = Quotation.new
  end

  def create
    @quotation = Quotation.new(quotation_params)
    if @quotation.save
      redirect_to new_quotation_item_quotation_path(@quotation.id)
    else
      render :index
    end
  end

  private

  def quotation_params
    params.require(:quotation).permit(:name).merge(user_id: current_user.id)
  end

end
