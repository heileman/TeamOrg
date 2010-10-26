class EmailsPeopleController < ApplicationController
  # GET /emails_people
  # GET /emails_people.xml
  def index
    @emails_people = EmailsPerson.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @emails_people }
    end
  end

  # GET /emails_people/1
  # GET /emails_people/1.xml
  def show
    @emails_person = EmailsPerson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @emails_person }
    end
  end

  # GET /emails_people/new
  # GET /emails_people/new.xml
  def new
    @emails_person = EmailsPerson.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @emails_person }
    end
  end

  # GET /emails_people/1/edit
  def edit
    @emails_person = EmailsPerson.find(params[:id])
  end

  # POST /emails_people
  # POST /emails_people.xml
  def create
    @emails_person = EmailsPerson.new(params[:emails_person])

    respond_to do |format|
      if @emails_person.save
        format.html { redirect_to(@emails_person, :notice => 'Emails person was successfully created.') }
        format.xml  { render :xml => @emails_person, :status => :created, :location => @emails_person }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @emails_person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /emails_people/1
  # PUT /emails_people/1.xml
  def update
    @emails_person = EmailsPerson.find(params[:id])

    respond_to do |format|
      if @emails_person.update_attributes(params[:emails_person])
        format.html { redirect_to(@emails_person, :notice => 'Emails person was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @emails_person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /emails_people/1
  # DELETE /emails_people/1.xml
  def destroy
    @emails_person = EmailsPerson.find(params[:id])
    @emails_person.destroy

    respond_to do |format|
      format.html { redirect_to(emails_people_url) }
      format.xml  { head :ok }
    end
  end
end
