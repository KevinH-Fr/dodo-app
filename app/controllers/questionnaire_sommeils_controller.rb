class QuestionnaireSommeilsController < ApplicationController
  before_action :set_questionnaire_sommeil, only: %i[ show edit update destroy ]

  # GET /questionnaire_sommeils or /questionnaire_sommeils.json
  def index
    @questionnaire_sommeils = QuestionnaireSommeil.all
  end

  # GET /questionnaire_sommeils/1 or /questionnaire_sommeils/1.json
  def show
  end

  # GET /questionnaire_sommeils/new
  def new
    @questionnaire_sommeil = QuestionnaireSommeil.new
  end

  # GET /questionnaire_sommeils/1/edit
  def edit
  end

  # POST /questionnaire_sommeils or /questionnaire_sommeils.json
  def create
    @questionnaire_sommeil = QuestionnaireSommeil.new(questionnaire_sommeil_params)

    respond_to do |format|
      if @questionnaire_sommeil.save
        format.html { redirect_to questionnaire_sommeil_url(@questionnaire_sommeil), notice: "Questionnaire sommeil was successfully created." }
        format.json { render :show, status: :created, location: @questionnaire_sommeil }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @questionnaire_sommeil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionnaire_sommeils/1 or /questionnaire_sommeils/1.json
  def update
    respond_to do |format|
      if @questionnaire_sommeil.update(questionnaire_sommeil_params)
        format.html { redirect_to questionnaire_sommeil_url(@questionnaire_sommeil), notice: "Questionnaire sommeil was successfully updated." }
        format.json { render :show, status: :ok, location: @questionnaire_sommeil }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @questionnaire_sommeil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionnaire_sommeils/1 or /questionnaire_sommeils/1.json
  def destroy
    @questionnaire_sommeil.destroy!

    respond_to do |format|
      format.html { redirect_to questionnaire_sommeils_url, notice: "Questionnaire sommeil was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire_sommeil
      @questionnaire_sommeil = QuestionnaireSommeil.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def questionnaire_sommeil_params
      params.require(:questionnaire_sommeil).permit(:email, :telephone, :adresse, :pere, :mere, :enfant, :poids, :freres_soeurs, :rituel, :duree_rituel, :lieu_nuit, :objectif, :produit_id, :niveau_activite, :intensite_reaction)
    end
end
