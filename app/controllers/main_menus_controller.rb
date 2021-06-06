class MainMenusController < ApplicationController
  before_action :set_main_menu, only: %i[ show edit update destroy ]

  # GET /main_menus or /main_menus.json
  def index
    @main_menus = MainMenu.all
  end

  # GET /main_menus/1 or /main_menus/1.json
  def show
  end

  # GET /main_menus/new
  def new
    @main_menu = MainMenu.new
  end

  # GET /main_menus/1/edit
  def edit
  end

  # POST /main_menus or /main_menus.json
  def create
    @main_menu = MainMenu.new(main_menu_params)

    respond_to do |format|
      if @main_menu.save
        format.html { redirect_to @main_menu, notice: "Main menu was successfully created." }
        format.json { render :show, status: :created, location: @main_menu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @main_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_menus/1 or /main_menus/1.json
  def update
    respond_to do |format|
      if @main_menu.update(main_menu_params)
        format.html { redirect_to @main_menu, notice: "Main menu was successfully updated." }
        format.json { render :show, status: :ok, location: @main_menu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @main_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_menus/1 or /main_menus/1.json
  def destroy
    @main_menu.destroy
    respond_to do |format|
      format.html { redirect_to main_menus_url, notice: "Main menu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_menu
      @main_menu = MainMenu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def main_menu_params
      params.fetch(:main_menu, {})
    end
end
