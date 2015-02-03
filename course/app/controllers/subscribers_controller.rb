class SubscribersController < ApplicationController
  before_action :set_subscriber, only: [:show, :edit, :update, :destroy]

  http_basic_authenticate_with name: "workshopmaggieklein", password: "Budapest2014", except: [:new, :create, :show]

  # GET /subscribers
  # GET /subscribers.json
  def index
    @subscribers = Subscriber.all

    respond_to do |format|
      format.html
      format.csv { send_data @subscribers.to_csv }
    end
  end

  # GET /subscribers/1
  # GET /subscribers/1.json
  def show
  end

  # GET /subscribers/new
  def new
    @subscriber = Subscriber.new
  end

  # GET /subscribers/1/edit
  def edit
  end

  # POST /subscribers
  # POST /subscribers.json
  def create
    @subscriber = Subscriber.new(subscriber_params)

    respond_to do |format|
      if @subscriber.save
        SubscriberMailer.registration_confirmation(@subscriber).deliver 
        format.html { redirect_to @subscriber, notice: 'Registrace proběhla úspěšně. Potvrzení bylo odelsáno na uvedený email.' }
        format.json { render :show, status: :created, location: @subscriber }
      else
        format.html { render :new }
        format.json { render json: @subscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscribers/1
  # PATCH/PUT /subscribers/1.json
  def update
    respond_to do |format|
      if @subscriber.update(subscriber_params)
        format.html { redirect_to @subscriber, notice: 'Aktualizace uživatele proběhla úspěšně.' }
        format.json { render :show, status: :ok, location: @subscriber }
      else
        format.html { render :edit }
        format.json { render json: @subscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscribers/1
  # DELETE /subscribers/1.json
  def destroy
    @subscriber.destroy
    respond_to do |format|
      format.html { redirect_to subscribers_url, notice: 'Subscriber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscriber
      @subscriber = Subscriber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscriber_params
      params.require(:subscriber).permit(:firstname, :lastname, :email, :phone, :participation, :titul, :address, :city, :zip, :education, :profesion, :nazev, :ico, :intro, :intro_date, :training, :training_date, :training_place)
    end
end
