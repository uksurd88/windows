class MywinsController < ApplicationController
  # GET /mywins
  # GET /mywins.xml
  def index
    @mywins = Mywin.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mywins }
    end
  end

  # GET /mywins/1
  # GET /mywins/1.xml
  def show
    @mywin = Mywin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mywin }
    end
  end

  # GET /mywins/new
  # GET /mywins/new.xml
  def new
    @mywin = Mywin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mywin }
    end
  end

  # GET /mywins/1/edit
  def edit
    @mywin = Mywin.find(params[:id])
  end

  # POST /mywins
  # POST /mywins.xml
  def create
    @mywin = Mywin.new(params[:mywin])

    respond_to do |format|
      if @mywin.save
        flash[:notice] = 'Mywin was successfully created.'
        format.html { redirect_to(@mywin) }
        format.xml  { render :xml => @mywin, :status => :created, :location => @mywin }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mywin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mywins/1
  # PUT /mywins/1.xml
  def update
    @mywin = Mywin.find(params[:id])

    respond_to do |format|
      if @mywin.update_attributes(params[:mywin])
        flash[:notice] = 'Mywin was successfully updated.'
        format.html { redirect_to(@mywin) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mywin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mywins/1
  # DELETE /mywins/1.xml
  def destroy
    @mywin = Mywin.find(params[:id])
    @mywin.destroy

    respond_to do |format|
      format.html { redirect_to(mywins_url) }
      format.xml  { head :ok }
    end
  end
end
