class AthletesRostersController < ApplicationController
  # GET /athletes_rosters
  # GET /athletes_rosters.xml
  def index
    @athletes_rosters = AthletesRoster.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @athletes_rosters }
    end
  end

  # GET /athletes_rosters/1
  # GET /athletes_rosters/1.xml
  def show
    @athletes_roster = AthletesRoster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @athletes_roster }
    end
  end

  # GET /athletes_rosters/new
  # GET /athletes_rosters/new.xml
  def new
    @athletes_roster = AthletesRoster.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @athletes_roster }
    end
  end

  # GET /athletes_rosters/1/edit
  def edit
    @athletes_roster = AthletesRoster.find(params[:id])
  end

  # POST /athletes_rosters
  # POST /athletes_rosters.xml
  def create
    @athletes_roster = AthletesRoster.new(params[:athletes_roster])

    respond_to do |format|
      if @athletes_roster.save
        format.html { redirect_to(@athletes_roster, :notice => 'Athletes roster was successfully created.') }
        format.xml  { render :xml => @athletes_roster, :status => :created, :location => @athletes_roster }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @athletes_roster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /athletes_rosters/1
  # PUT /athletes_rosters/1.xml
  def update
    @athletes_roster = AthletesRoster.find(params[:id])

    respond_to do |format|
      if @athletes_roster.update_attributes(params[:athletes_roster])
        format.html { redirect_to(@athletes_roster, :notice => 'Athletes roster was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @athletes_roster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /athletes_rosters/1
  # DELETE /athletes_rosters/1.xml
  def destroy
    @athletes_roster = AthletesRoster.find(params[:id])
    @athletes_roster.destroy

    respond_to do |format|
      format.html { redirect_to(athletes_rosters_url) }
      format.xml  { head :ok }
    end
  end
end
