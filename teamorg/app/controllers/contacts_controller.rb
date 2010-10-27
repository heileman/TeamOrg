class ContactsController < ApplicationController
  
  # GET /contacts/1
  # GET /contacts/1.xml
  def show
    @phone = Phone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @phone }
    end
  end

  # GET /contacts/new
  # GET /contacts/new.xml
  def new
    @phone = Phone.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @phone }
    end
  end

  # GET /contacts/1/edit
  def edit
    @phone = Phone.find(params[:id])
  end

  # POST /contacts
  # POST /contacts.xml
  def create
    @phone = Phone.new(params[:phone])

    respond_to do |format|
      if @phone.save
        format.html { redirect_to(@phone, :notice => 'Phone was successfully created.') }
        format.xml  { render :xml => @phone, :status => :created, :location => @phone }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contacts/1
  # PUT /contacts/1.xml
  def update
    @phone = Phone.find(params[:id])

    respond_to do |format|
      if @phone.update_attributes(params[:phone])
        format.html { redirect_to(@phone, :notice => 'Phone was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.xml
  def destroy
    @phone = Phone.find(params[:id])
    @phone.destroy

    respond_to do |format|
      format.html { redirect_to(contacts_url) }
      format.xml  { head :ok }
    end
  end
end
