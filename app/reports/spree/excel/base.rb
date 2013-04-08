module Spree
  module Excel
    class Base < Spreadsheet::Workbook

      def initialize(model_array)
        super()
        @sheet = self.create_worksheet
        @current_row = 1
        @io = StringIO.new('')
        @written = false
        preformatting
        create_header
        initial_population(model_array) if model_array
        create_footer
      end

      def add_row_from_model(model_instance)

      end

      # returns the workbokk as a string for sending to the browser
      def string
        self.io unless @written
        return @io.string
      end

      def io
        self.write(@io)
        @written = true
        return @io
      end

      private 
        
        # this called before row creation for any preformatting
        def preformatting

        end
        
        # does initial population of the spreadsheet. needs to have add_row_from_model implemented.
        def initial_population(model_array)
          model_array.each do |model|
            add_row_from_model(model)
          end
        end

        # creates the header of the spreadsheet
        def create_header
          @sheet.row(0).concat @header_row
        end

        #increments the current_row instance varaible
        def next_row
          @current_row += 1
        end

        # Writes a line to the spread sheete
        def write_line(arr)
          @sheet.row(@current_row).concat arr
          next_row
        end

        # Sets the format for the current row
        def set_format_for_row(format)
          @sheet.row(@current_row).default_format = format
        end

        def create_footer

        end

    end
  end
end