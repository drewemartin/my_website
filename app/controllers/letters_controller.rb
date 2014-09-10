class LettersController < ApplicationController
  before_action :set_letter, only: [:show, :edit, :update, :destroy]
  skip_before_filter :require_login, only: [:new, :create, :show, :edit]
  def index
    @letters = Letter.all.order(created_at: :desc)
  end

  def new
    @letter = Letter.new
  end

  def show
    redirect_to root_path
  end

  def edit
    redirect_to root_path
  end

  def create
    @letter = Letter.new(letter_params)

    respond_to do |format|
      if @letter.save

        GuestMailer.send_to_admin(@letter).deliver

        format.html { redirect_to new_letter_path, notice: 'Message Delivered' }
        format.js {}
      else
        format.html { render :new, alert: 'Sorry, there was an error' }
        format.js {}
      end
    end
  end


  def destroy
    @letter.destroy
    respond_to do |format|
      format.html { redirect_to letters_path, notice: 'Letter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_letter
      @letter = Letter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def letter_params
      params.require(:letter).permit(:name, :email, :subject, :message)
    end
end
