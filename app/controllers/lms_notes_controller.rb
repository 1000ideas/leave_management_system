class LmsNotesController < ApplicationController
  unloadable
  include LeaveManagementSystem::Controller

  def index
    @notes = LmsNote.where(lms_leave_id: params[:lms_leafe_id])
    @leave = LmsLeave.find(params[:lms_leafe_id])
    @note = @leave.lms_notes.build
  end

  def create
    @note = LmsNote.new(params[:lms_note])
    @note.lms_leave_id = params[:lms_leafe_id]
    @note.user_id = User.current.id
    if @note.save
      flash[:notice] = "Note was sucessfully added!"
      redirect_to lms_leafe_lms_notes_path
    else
      flash[:error] = "Something went wrong!"
      render 'new'
    end
  end

  def destroy
    note = LmsNote.find(params[:id])
    note.destroy
    redirect_to lms_leafe_lms_notes_path
  end
end
