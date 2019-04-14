class Invoice
  # Class method
  def self.print_out
    "Printed out invoice"
  end

  # Instance method
  def convert_to_pdf
    "Convert to PDF"
  end
end

p Invoice.print_out

Invoice.print_out
# Invoice.convert_to_pdf #=> Fails
i = Invoice.new
p i.convert_to_pdf  
