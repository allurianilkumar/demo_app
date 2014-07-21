class ContactsController < ApplicationController
  
  def index
    #render :text => "index" and return
    @contacts = Contacts.new
    #render :text => params.inspect and return
    @contacts.contact_name = params[:contacts][:contact_name]
    @contacts.contact_mail = params[:contacts][:contact_mail]
    @contacts.contact_message = params[:contacts][:contact_message]
    #render :text => params.inspect and return
    if @contacts.save
      #render :text => params.inspect and return
     flash.now[:alert] = 'sended message ...'
     redirect_to root_path
    else
       #render :text => params.inspect and return
      render 'new'
    end
  end
  
   
  def new
     @contacts = Contacts.new
    
  end

end
 