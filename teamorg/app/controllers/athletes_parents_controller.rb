class AthletesParentsController < ApplicationController
  # GET /athletes_parents
  # GET /athletes_parents.xml
  def index
    @athletes_parents = AthletesParent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @athletes_parents }
    end
  end

  # GET /athletes_parents/1
  # GET /athletes_parents/1.xml
  def show
    @athletes_parent = AthletesParent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @athletes_parent }
    end
  end

  # GET /athletes_parents/new
  # GET /athletes_parents/new.xml
  def new
    @athletes_parent = AthletesParent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @athletes_parent }
    end
  end

  # GET /athletes_parents/1/edit
  def edit
    @athletes_parent = AthletesParent.find(params[:id])
  end

  # POST /athletes_parents
  # POST /athletes_parents.xml
  def create
    @athletes_parent = AthletesParent.new(params[:athletes_parent])

    respond_to do |format|
      if @athletes_parent.save
        format.html { redirect_to(@athletes_parent, :notice => 'Athletes parent was successfully created.') }
        format.xml  { render :xml => @athletes_parent, :status => :created, :location => @athletes_parent }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @athletes_parent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /athletes_parents/1
  # PUT /athletes_parents/1.xml
  def update
    @athletes_parent = AthletesParent.find(params[:id])

    respond_to do |format|
      if @athletes_parent.update_attributes(params[:athletes_parent])
        format.html { redirect_to(@athletes_parent, :notice => 'Athletes parent was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @athletes_parent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /athletes_parents/1
  # DELETE /athletes_parents/1.xml
  def destroy
    @athletes_parent = AthletesParent.find(params[:id])
    @athletes_parent.destroy

    respond_to do |format|
      format.html { redirect_to(athletes_parents_url) }
      format.xml  { head :ok }
    end
  end
end
