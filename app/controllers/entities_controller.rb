class EntitiesController < ApplicationController
  before_action :set_entity, only: %i[show edit update destroy]
  # GET /entities or /entities.json
  def index
    @entities = Entity.all
  end

  # GET /entities/1 or /entities/1.json
  def show; end

  # GET /entities/new
  def new
    @entity = Entity.new
    @categories = Group.where(user_id: current_user.id)
  end

  # GET /entities/1/edit
  def edit; end

  # POST /entities or /entities.json
  def create
    @entity = Entity.new(entity_params)
    @entity.user = User.first

    respond_to do |format|
      if @entity.save
        format.html { redirect_to groups_url(@groups, @entity), notice: 'Transaction was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entities/1 or /entities/1.json
  def destroy
    @entity.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_entity
    @entity = Entity.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def entity_params
    params.require(:entity).permit(:name, :amount)
  end
end
