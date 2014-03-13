class FinalDecisionsController < ApplicationController
  before_action :set_final_decision, only: [:show, :edit, :update, :destroy]

  # GET /final_decisions
  # GET /final_decisions.json
  def index
    @final_decisions = FinalDecision.all
  end

  # GET /final_decisions/1
  # GET /final_decisions/1.json
  def show
  end

  # GET /final_decisions/new
  def new
    @final_decision = FinalDecision.new
    @clips= Clip.all
  end

  # GET /final_decisions/1/edit
  def edit
  end

  # POST /final_decisions
  # POST /final_decisions.json
  def create
    @final_decision = FinalDecision.new(:user_id => session[:user_id], :interview_id => session[:interview_id], :decision => params[:decision])


      if @final_decision.save
        redirect_to organization_show_candidates_path
      else
        format.html { render action: 'new' }
        format.json { render json: @final_decision.errors, status: :unprocessable_entity }
      end

  end

  # PATCH/PUT /final_decisions/1
  # PATCH/PUT /final_decisions/1.json
  def update
    respond_to do |format|
      if @final_decision.update(final_decision_params)
        format.html { redirect_to @final_decision, notice: 'Final decision was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @final_decision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /final_decisions/1
  # DELETE /final_decisions/1.json
  def destroy
    @final_decision.destroy
    respond_to do |format|
      format.html { redirect_to final_decisions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_final_decision
      @final_decision = FinalDecision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def final_decision_params
      params.require(:final_decision).permit(:user_id, :interview_id, :decision)
    end
end
