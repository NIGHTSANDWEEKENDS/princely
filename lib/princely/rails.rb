require 'princely/pdf_helper'

unless Mime::Type.lookup_by_extension(:pdf)
  Mime::Type.register 'application/pdf', :pdf
end

ActionController::Base.send(:include, PdfHelper)
