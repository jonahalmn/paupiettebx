class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]

  # GET /meals
  # GET /meals.json
  def index
    @me = false
    now = Date.today.to_s
    if Meal.count > 0
    @meals = Meal.where("date >= ?", Time.current)
    end
    @title = "Repas à Venir"
    @user = current_user
  end

  # GET /meals/1
  # GET /meals/1.json
  def show
  end

  # GET /meals/new
  def new
    @meal = Meal.new
    @user = current_user
  end

  # GET /meals/1/edit
  def edit
  end

  # GET /meals/me
  def me
    @me = true
    @title = "Les repas que vous organisez"
    @meals = current_user.meals.where("date >= ?", Time.current)
    @prev_meals = current_user.meals.where("date <= ?", Time.current)

    render :index
  end

  # POST /meals
  # POST /meals.json
  def create
    @meal = current_user.meals.new(meal_params)

    respond_to do |format|
      if @meal.save
        format.html { redirect_to @meal, notice: 'Le repas a bien été crée.' }
        format.json { render :show, status: :created, location: @meal }
      else
        format.html { render :new }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meals/1
  # PATCH/PUT /meals/1.json
  def update
    respond_to do |format|
      if @meal.update(meal_params)
        format.html { redirect_to @meal, notice: 'Le repas a bien été mis à jour.' }
        format.json { render :show, status: :ok, location: @meal }
      else
        format.html { render :edit }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meals/1
  # DELETE /meals/1.json
  def destroy
    @meal.destroy
    respond_to do |format|
      format.html { redirect_to meals_url, notice: 'Le repas a bien été supprimé.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal
      @meal = Meal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meal_params
      params.require(:meal).permit(:name, :entree, :edesc, :plat, :pdesc, :dessert, :ddesc, :date, :location, :nbpart, :user_id)
    end
end
