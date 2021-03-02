class ApiClientConstraint
  attr_reader :client

  def initialize(options)
    @client = options[:client]
  end

  def matches?(request)
    request
      .headers
      .fetch('X-Client')
      .include?(@client)
  end
end
