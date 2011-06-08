class CritterpostsController < ApplicationController
  # GET /critterposts
  # GET /critterposts.xml
  def index
    @critterposts = Critterpost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @critterposts }
    end
  end

  # GET /critterposts/1
  # GET /critterposts/1.xml
  def show
    @critterpost = Critterpost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @critterpost }
    end
  end

  # GET /critterposts/new
  # GET /critterposts/new.xml
  def new
    @critterpost = Critterpost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @critterpost }
    end
  end

  # GET /critterposts/1/edit
  def edit
    @critterpost = current_user.critterposts.find(params[:id])
  end

  # POST /critterposts
  # POST /critterposts.xml
  def create
    @critterpost = current_user.critterposts.new(params[:critterpost])

    respond_to do |format|
      if @critterpost.save
        format.html { redirect_to(root_path, :notice => 'Critterpost was successfully created.') }
        format.xml  { render :xml => @critterpost, :status => :created, :location => @critterpost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @critterpost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /critterposts/1
  # PUT /critterposts/1.xml
  def update
    @critterpost = current_user.critterposts.find(params[:id])

    respond_to do |format|
      if @critterpost.update_attributes(params[:critterpost])
        format.html { redirect_to(@critterpost, :notice => 'Critterpost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @critterpost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /critterposts/1
  # DELETE /critterposts/1.xml
  def destroy
    @critterpost = current_user.critterposts.find(params[:id])
    @critterpost.destroy

    respond_to do |format|
      format.html { redirect_to(critterposts_url) }
      format.xml  { head :ok }
    end
  end
end
