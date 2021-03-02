class ApiVersionConstraint
  attr_reader :version

  def initialize(options)
    @version = options[:version]
  end

  def matches?(request)
    request
      .headers
      .fetch(:accept)
      .include?("application/vnd.stc.v#{@version}+json")
  end
end
