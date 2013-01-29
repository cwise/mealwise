class ServedMealsController < ApplicationController
  # GET /served_meals
  # GET /served_meals.json
  def index
    @served_meals = ServedMeal.order('served_at desc').all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @served_meals }
    end
  end

  # GET /served_meals/1
  # GET /served_meals/1.json
  def show
    @served_meal = ServedMeal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @served_meal }
    end
  end

  # GET /served_meals/new
  # GET /served_meals/new.json
  def new
    @served_meal = ServedMeal.new(:served_at => Date.today)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @served_meal }
    end
  end

  # GET /served_meals/1/edit
  def edit
    @served_meal = ServedMeal.find(params[:id])
  end

  # POST /served_meals
  # POST /served_meals.json
  def create
    @served_meal = ServedMeal.new(params[:served_meal])

    respond_to do |format|
      if @served_meal.save
        format.html { redirect_to @served_meal, notice: 'Served meal was successfully created.' }
        format.json { render json: @served_meal, status: :created, location: @served_meal }
      else
        format.html { render action: "new" }
        format.json { render json: @served_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /served_meals/1
  # PUT /served_meals/1.json
  def update
    @served_meal = ServedMeal.find(params[:id])

    respond_to do |format|
      if @served_meal.update_attributes(params[:served_meal])
        format.html { redirect_to @served_meal, notice: 'Served meal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @served_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /served_meals/1
  # DELETE /served_meals/1.json
  def destroy
    @served_meal = ServedMeal.find(params[:id])
    @served_meal.destroy

    respond_to do |format|
      format.html { redirect_to served_meals_url }
      format.json { head :no_content }
    end
  end
end
