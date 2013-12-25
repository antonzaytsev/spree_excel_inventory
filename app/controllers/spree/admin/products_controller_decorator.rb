Spree::Admin::ProductsController.class_eval do
  def excel
    # Create scope for the full report
    search_scope = Spree::Product.scoped({}).where(deleted_at: nil)
    # Create the Report
    products_excel_report = Spree::Excel::ProductsExcelReport.new(search_scope)
    # Send the report
    send_data products_excel_report.string, :filename => 'products_excel_report.xls'
  end
end