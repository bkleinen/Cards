class IndexCardsController < ApplicationController
  # GET /index_cards
  # GET /index_cards.json
  def index
    @index_cards = IndexCard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @index_cards }
    end
  end

  # GET /index_cards/1
  # GET /index_cards/1.json
  def show
    @index_card = IndexCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @index_card }
    end
  end

  # GET /index_cards/new
  # GET /index_cards/new.json
  def new
    @index_card = IndexCard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @index_card }
    end
  end

  # GET /index_cards/1/edit
  def edit
    @index_card = IndexCard.find(params[:id])
  end

  # POST /index_cards
  # POST /index_cards.json
  def create
    @index_card = IndexCard.new(params[:index_card])

    respond_to do |format|
      if @index_card.save
        format.html { redirect_to @index_card, notice: 'Index card was successfully created.' }
        format.json { render json: @index_card, status: :created, location: @index_card }
      else
        format.html { render action: "new" }
        format.json { render json: @index_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /index_cards/1
  # PUT /index_cards/1.json
  def update
    @index_card = IndexCard.find(params[:id])

    respond_to do |format|
      if @index_card.update_attributes(params[:index_card])
        format.html { redirect_to @index_card, notice: 'Index card was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @index_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /index_cards/1
  # DELETE /index_cards/1.json
  def destroy
    @index_card = IndexCard.find(params[:id])
    @index_card.destroy

    respond_to do |format|
      format.html { redirect_to index_cards_url }
      format.json { head :ok }
    end
  end
end
