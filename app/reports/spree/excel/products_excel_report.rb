module Spree
  module Excel
    class ProductsExcelReport < Spree::Excel::Base
      include ActionView::Helpers::NumberHelper

      def initialize(products)
        @header_row = [
          "Id",
          "Product Name",
          "Sku",
          "Price",
          "Cost",
          "On Hand",
          "Inventory Amount"
        ]
        
        super(products)
      end

      def add_row_from_model(product)
        @sheet.row(@current_row).concat [
            product.id,
            product.name,
            product.sku,
            number_with_precision(product.price, :precision => 2).to_f,
            number_with_precision(product.cost_price, :precision => 2).to_f,
            product.count_on_hand,
            number_with_precision(product.price * product.count_on_hand, :precision => 2).to_f,
          ]
        next_row
      end
      
      def preformatting
        @sheet.column(1).width = 80
        @sheet.column(2).width = 20
        @sheet.column(3).width = 10
        @sheet.column(4).width = 10
        @sheet.column(5).width = 10
        @sheet.column(6).width = 20
      end
      
      private
      
        def initial_population(model_array)
          model_array.find_each(:include => [:variants => [:option_values => :option_type]]) do |model|
            add_row_from_model(model)
          end
        end
    end
  end
end