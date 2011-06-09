class CritterpostsController < ApplicationController
  def index
    @critterposts = Critterpost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @critterposts }
    end
  end

  def show
    @critterpost = current_user.critterposts.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @critterpost }
    end
  end

  def new
    @critterpost = Critterpost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @critterpost }
    end
  end

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

  def destroy
    @critterpost = current_user.critterposts.find(params[:id])
    @critterpost.destroy

    respond_to do |format|
      format.html { redirect_to(root_url) }
      format.xml  { head :ok }
    end
  end
end
