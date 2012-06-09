class ContactController < ApplicationController
  def index
    @cont = Contact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @conts }
    end
  end
  
  def show
    @cont = Contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cont }
    end
  end
  
  def new
    @cont = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cont }
    end
  end
  
  def edit
    @cont = Contact.find(params[:id])
  end
  
  def create
    @cont = Contact.new(params[:cont])

    respond_to do |format|
      if @cont.save
        format.html { redirect_to(@cont, :notice => 'Rj was successfully created.') }
        format.xml  { render :xml => @cont, :status => :created, :location => @cont }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cont.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end
