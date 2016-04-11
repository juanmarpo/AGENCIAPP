class CastingsController < InheritedResources::Base

  
  before_action :set_status, only: [:show, :edit, :update, :destroy]

 ## SISTEMA DE SEGURIDAD PARA QUE ESTE LOGUEADO 
  before_action :authenticate_model!



  # GET /castings
  # GET /castings.json
  def index
    @castings = Casting.all

    respond_to do |format|
      format.html #index.html.erb
      format.json { render json: @castings }
    end


    
  end


  private

    def casting_params
      params.require(:casting).permit(:title, :description, :payment_type, :ubication, :casting_end, :video, :images, :member_id)
    end

  # GET /statuses/1
  # GET /statuses/1.json
  def show
  end

  # GET /statuses/new
  def new
    @status = Casting.new
  end

  # GET /statuses/1/edit
  def edit
  end

  # POST /statuses
  # POST /statuses.json
  def create
    @casting = Casting.new(casting_params)

    respond_to do |format|
      if @casting.save
        format.html { redirect_to @casting, notice: 'Casting was successfully created.' }
        format.json { render :show, casting: :created, location: @casting }
      else
        format.html { render :new }
        format.json { render json: @casting.errors, casting: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statuses/1
  # PATCH/PUT /statuses/1.json
  def update
    respond_to do |format|
      if @casting.update(casting_params)
        format.html { redirect_to @casting, notice: 'Casting was successfully updated.' }
        format.json { render :show, status: :ok, location: @casting }
      else
        format.html { render :edit }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /castings/1
  # DELETE /castings/1.json
  def destroy
    @casting.destroy
    respond_to do |format|
      format.html { redirect_to statuses_url, notice: 'Casting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_casting
      @casting = Casting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
   

 
end




