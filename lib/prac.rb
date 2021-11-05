module AwesomeApi

  class << self
    attr_accessor :base_url, :debug_mode
  end

  @base_url = ''
  @debug_mode = false
end

p AwesomeApi.base_url
AwesomeApi.base_url = "www"
p AwesomeApi.base_url
