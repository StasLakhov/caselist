class TestcasesController < ApplicationController

  def create
    @casetitle = Casetitle.find(params[:casetitle_id]).testcases.create(testcase_params)
    redirect_to casetitle_path(@casetitle)
  end

  def destroy
    @casetitle = Casetitle.find(params[:casetitle_id]).testcases.find(params[:id]).destroy
    redirect_to casetitle_path(@casetitle)
  end

  private

  def testcase_params
    params.require(:testcase).permit(:texpresult, :envir, :tester)
  end

end
