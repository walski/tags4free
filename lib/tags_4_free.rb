module Tags4Free
  require 'rubygems'
  require 'httparty'
  include HTTParty
  
  class YahooApiError < ArgumentError; end

  class YahooApiFormatError < ArgumentError
    def initialize(content, result_set)
      super "Malformed answer by Yahoo! for `#{content}`: #{result_set.inspect}"
    end
  end
  
  VERSION = '0.1.0'
  
  APPID       = 'Tags4Free'
  SERVICE_URL = 
      'http://api.search.yahoo.com/ContentAnalysisService/V1/termExtraction'
  format :xml
  
  #
  # Generate tags for a string
  #
  # tags = Tags4Free.for('The content that should be tagged')
  def self.for(content)
    result_set = get(SERVICE_URL, :query => {:appid => APPID, :context => content})

    raise YahooApiError.new(result_set['Error']['Message']) if result_set['Error']
    raise YahooApiFormatError.new(content, result_set) unless result_set['ResultSet']
    
    result_set['ResultSet']['Result'] || []
  end
end