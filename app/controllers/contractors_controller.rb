class ContractorsController < ApplicationController
  def index
    @contractors = Contractor.all
  end

  def new
    @contractor = Contractor.new
  end

  def create
    contractor = Contractor.new(contractor_params)

    if contractor.save
      redirect_to contractors_url, notice: 'Contractor was successfully created.'
    else
      render :new
    end
  end

  def update
    if contractor.update(contractor_params)
      redirect_to contractors_url, notice: 'Contractor was successfully updated.'
    else
      render :edit
    end
  end

  def show
    contractor

    @total_value = expenses.map(&:value).reduce(:+)
    @paginated_expenses = expenses.page(params[:page])
  end

  def destroy
    contractor.destroy

    redirect_to contractors_url, notice: 'Contractor was successfully destroyed.'
  end

  private

  def contractor
    @contractor ||= Contractor.find(params[:id])
  end

  def contractor_params
    params.require(:contractor).permit(
      :name,
      :description,
      :card_info
    )
  end

  def expenses
    @expenses ||= contractor.expenses.reorder('operation_date DESC')
  end
end
