class ItemQuotationsController < ApplicationController
  before_action :set_item_quotation, only: [:destroy]

  def new
    @item_quotations = ItemQuotation.order("created_at DESC")
    @item_quotation = ItemQuotation.new
    @items = Item.order("created_at DESC")
  end

  def create
    item_id = Item.find_by(code: params[:item_quotation][:item_id]).id
    @item_quotation = ItemQuotation.new(item_quotation_params.merge(item_id: item_id))
    if @item_quotation.save
      redirect_to new_quotation_item_quotation_path
    else
      render :new
    end
  end

  def destroy
    @item_quotation.destroy
    redirect_to new_quotation_item_quotation_path
  end

  private

  def item_quotation_params
    params.require(:item_quotation).permit(:quantity).merge(quotation_id: params[:quotation_id])
  end

  def set_item_quotation
    @item_quotation = ItemQuotation.find(params[:id])
  end

end
