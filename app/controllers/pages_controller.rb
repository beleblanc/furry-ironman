class PagesController < ApplicationController
  after_filter { |c| c.cache_page }

  def home
  end



  def submit_contact
    @name = params[:contact_us][:name]
    @company = params[:contact_us][:company]
    @email = params[:contact_us][:email]
    @message = params[:contact_us][:message]

    ContactMailer.contact_confirmation(@message,@email,@name,@company).deliver
    ContactMailer.notify_caultive(@message,@name,@email,@company).deliver

    respond_to do |format|
      format.js

    end
  end
end
