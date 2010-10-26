class AddressesPeopleController < ApplicationController
  # GET /addresses_people
  # GET /addresses_people.xml
  def index
    @addresses_people = AddressesPerson.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @addresses_people }
    end
  end

  # GET /addresses_people/1
  # GET /addresses_people/1.xml
  def show
    @addresses_person = AddressesPerson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @addresses_person }
    end
  end

  # GET /addresses_people/new
  # GET /addresses_people/new.xml
  def new
    @addresses_person = AddressesPerson.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @addresses_person }
    end
  end

  # GET /addresses_people/1/edit
  def edit
    @addresses_person = AddressesPerson.find(params[:id])
  end

  # POST /addresses_people
  # POST /addresses_people.xml
  def create
    @addresses_person = AddressesPerson.new(params[:addresses_person])

    respond_to do |format|
      if @addresses_person.save
        format.html { redirect_to(@addresses_person, :notice => 'Addresses person was successfully created.') }
        format.xml  { render :xml => @addresses_person, :status => :created, :location => @addresses_person }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @addresses_person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /addresses_people/1
  # PUT /addresses_people/1.xml
  def update
    @addresses_person = AddressesPerson.find(params[:id])

    respond_to do |format|
      if @addresses_person.update_attributes(params[:addresses_person])
        format.html { redirect_to(@addresses_person, :notice => 'Addresses person was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @addresses_person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /addresses_people/1
  # DELETE /addresses_people/1.xml
  def destroy
    @addresses_person = AddressesPerson.find(params[:id])
    @addresses_person.destroy

    respond_to do |format|
      format.html { redirect_to(addresses_people_url) }
      format.xml  { head :ok }
    end
  end
end
