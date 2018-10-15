class EntriesController < ApplicationController
  before_action :set_entry, only: [:edit, :show, :update]
  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to entries_path
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def entry_params
    params.require(:entry).permit(:title, :content)
  end

  def set_entry
    @entry = Entry.find(params[:id])
  end

end
