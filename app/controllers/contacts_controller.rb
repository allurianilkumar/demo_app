class ContactsController < ApplicationController
  def new
     @contacts = Contact.new
  end
  def create
    #render :text => "index" and return
    @contacts = Contact.new
    #render :text => params.inspect and return
    @contacts.contact_name = params[:contact][:contact_name]
    @contacts.contact_mail = params[:contact][:contact_mail]
    @contacts.contact_message = params[:contact][:contact_message]
    #render :text => params.inspect and return
    if @contacts.save
     # render :text => params.inspect and return
     flash[:alert] = 'sended message ...'
    redirect_to  sign_in_users_path
     else
       #render :text => params.inspect and return
      render 'new'
    end
  end
  # def index
  #   redirect_to  new_user_session
  # end
end
