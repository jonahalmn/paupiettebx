class ParticipationsController < ApplicationController
  before_action :set_participation, only: [:show, :edit, :update, :destroy]

  # GET /participations
  # GET /participations.json
  def index
    @participations = Participation.all
    @user = current_user
  end

  # GET /participations/1
  # GET /participations/1.json
  def show
  end

  # GET /participations/new
  def new
    @participation = Participation.new
  end

  # GET /participations/1/edit
  def edit
  end

  def me
    @user = current_user
  #  @participation = Participation.find_by_sql("SELECT * FROM meal WHERE user_id = '"+@user.id+"' ORDER BY date")
   @participations = Participation.where(:user_id => @user.id)
   render :me
  end


  # POST /participations
  # POST /participations.json
  def create
    # @participation = Participation.new(participation_params)


    @meal = Meal.find(params[:from])
    @user = current_user
    @participation = Participation.new(user_id: @user.id, user_fname: @user.fname, meal_name: @meal.name, meal_location: @meal.location, meal_id: @meal.id)
    @participation.save!



      if @participation.save
        redirect_to @participation, notice: 'Participation was successfully created.'
        else
        render :index

      end

  end

  # PATCH/PUT /participations/1
  # PATCH/PUT /participations/1.json
#  def update
#    respond_to do |format|
#      if @participation.update(participation_params)
#        format.html { redirect_to @participation, notice: 'Participation was successfully updated.' }
#        format.json { render :show, status: :ok, location: @participation }
#      else
#        format.html { render :edit }
#        format.json { render json: @participation.errors, status: :unprocessable_entity }
#      end
#    end
#  end

  # DELETE /participations/1
  # DELETE /participations/1.json
  def destroy
    @participation.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_path, notice: 'Participation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participation
      @participation = Participation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participation_params
      params.fetch(:participation, {})

      # params.require(:participation).permit(:meal_id, :user_id)

    end

    def participate
      @user = current_user
        if @user.set_participation
          @participation = Participation.find_by_sql("SELECT * FROM meal WHERE  ORDER BY date")
        end
    end
end
