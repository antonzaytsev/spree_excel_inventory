Spree::Core::Engine.routes.draw do
  
  get "admin/reports/products/excel" => 'admin/products#excel'
  
end
