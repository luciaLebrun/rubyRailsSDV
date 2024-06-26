class BorrowsController < ApplicationController
  before_action :require_login

  def create
    @borrow = Borrow.new(borrow_params)
    @borrow.user_id = session[:user_id]
    @borrow.started_at = Time.current

    if @borrow.save
      redirect_to books_path, notice: 'Book borrowed successfully!'
    else
      redirect_to book_path(@borrow.book_id), alert: 'Error borrowing the book.'
    end
  end

  def destroy
    @borrow = Borrow.find(params[:id])
    @borrow.update(ended_at: Time.current)
    redirect_to books_path, notice: 'Book returned successfully!'
  end

  private

  def borrow_params
    params.require(:borrow).permit(:book_id)
  end
end
