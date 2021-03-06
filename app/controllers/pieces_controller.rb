class PiecesController < ApplicationController

  before_action :set_piece, only: [:show, :edit, :update, :destroy]

  def pltp
    @pl_pieces = Piece.where(category: 'PL')
  end

  def signalisations
    @pl_pieces = Piece.where(category: 'signalisations')
  end

  def lubrifiants
    @pl_pieces = Piece.where(category: 'lubrifiants')
  end

  def accessoires
    @pl_pieces = Piece.where(category: 'accessoires')
  end

  def occasions
    @pl_pieces = Piece.where(category: 'occasions')
  end

  def index
    @pieces = Piece.all
  end

  def show
  end

  def new
    @piece = Piece.new
  end

  def create
    Piece.create(piece_params)
    redirect_to pieces_path
  end

  def edit
  end

  def update
    @piece.update(piece_params)
    redirect_to piece_path(@piece)
  end

  def destroy
    @piece.destroy
    redirect_to pieces_path
  end

  private

   def piece_params
    params.require(:piece).permit(:name, :photo, :description, :category, :subcategory)
  end

  def set_piece
    @piece = Piece.find(params[:id])
  end
end


