require "bingoo/version"
require "bingoo/configuration"

module Bingoo
  class << self
    def config
      @config ||= Configuration.new
    end

    def configuration
      yield config
    end
  end
end
