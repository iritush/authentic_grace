class EntriesController < ApplicationController
  before_action :set_entry, only: [:edit, :show, :update, :destroy]
  def index
    @entries = Entry.all.order("created_at DESC")
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to entries_path, notice: "Successfully created new Journal Entry"
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @entry.update(entry_params)
      redirect_to @entry, notice: "Entry has been successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @entry.destroy
    redirect_to root_path
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :content, :poster)
  end

  def set_entry
    @entry = Entry.find(params[:id])
  end

end
