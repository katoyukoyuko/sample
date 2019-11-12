class InquiriesController < ApplicationController

  def new
    @inquiry = Inquiry.new
  end

  def create
     @inquiry = Inquiry.new(inquiry_params)
     if params[:back]
       render :new if @inquiry.invalid?
     else
       if @inquiry.save
         redirect_to new_inquiry_path, notice: "お問い合わせをしました！"
       else
         render 'new'
       end
     end
   end

  private

  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :content)
  end

end
