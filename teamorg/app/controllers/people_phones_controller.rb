class PeoplePhonesController < ApplicationController
  # GET /people_phones
  # GET /people_phones.xml
  def index
    @people_phones = PeoplePhone.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @people_phones }
    end
  end

  # GET /people_phones/1
  # GET /people_phones/1.xml
  def show
    @people_phone = PeoplePhone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @people_phone }
    end
  end

  # GET /people_phones/new
  # GET /people_phones/new.xml
  def new
    @people_phone = PeoplePhone.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @people_phone }
    end
  end

  # GET /people_phones/1/edit
  def edit
    @people_phone = PeoplePhone.find(params[:id])
  end

  # POST /people_phones
  # POST /people_phones.xml
  def create
    @people_phone = PeoplePhone.new(params[:people_phone])

    respond_to do |format|
      if @people_phone.save
        format.html { redirect_to(@people_phone, :notice => 'People phone was successfully created.') }
        format.xml  { render :xml => @people_phone, :status => :created, :location => @people_phone }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @people_phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /people_phones/1
  # PUT /people_phones/1.xml
  def update
    @people_phone = PeoplePhone.find(params[:id])

    respond_to do |format|
      if @people_phone.update_attributes(params[:people_phone])
        format.html { redirect_to(@people_phone, :notice => 'People phone was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @people_phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /people_phones/1
  # DELETE /people_phones/1.xml
  def destroy
    @people_phone = PeoplePhone.find(params[:id])
    @people_phone.destroy

    respond_to do |format|
      format.html { redirect_to(people_phones_url) }
      format.xml  { head :ok }
    end
  end
end
