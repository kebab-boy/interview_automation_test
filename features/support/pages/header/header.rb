require_relative 'header_elements'

module Pages
  def header
    @header ||= Header.new
  end

  class Header
    include HeaderElements

    def verify_signed_in
      # this is not the ideal way to cater for the page loading slowly
      # I'd probably refactor this if I had more time!
      begin
        retrys ||= 0
        return if account_link.present?
        raise 'Failed to create account'
      rescue RuntimeError => error
        raise error if (retrys +=1) > 5
        sleep 5
        retry
      end
    end
  end
end