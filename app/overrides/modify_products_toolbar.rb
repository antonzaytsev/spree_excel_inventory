Deface::Override.new(:virtual_path => %q{spree/admin/products/index},
                          :name => %q{modify_products_toolbar},
                          :insert_after => "li#new_product_link",
                          :text => %q{
<li id="export_products_to_excel_link">
  <%= button_link_to "Export to Excel", admin_reports_products_excel_url, {:id => 'export_products_to_excel'} %>
</li>       
})