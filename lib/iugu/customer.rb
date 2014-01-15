module Iugu
  class Customer < APIResource
    include Iugu::APIFetch
    include Iugu::APICreate
    include Iugu::APISave
    include Iugu::APIDelete

    def payment_methods
      APIChildResource.new({ customer_id: self.id }, Iugu::PaymentMethod)
    end

    def invoices
      APIChildResource.new({ customer_id: self.id }, Iugu::Invoice)
    end
  end
end
