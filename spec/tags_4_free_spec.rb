require File.join(File.dirname(__FILE__), 'spec_helper')

describe Tags4Free do
  it "should return an empty array if no tags were found" do
    Tags4Free.should_receive(:get).and_return({"ResultSet"=>{"xsi:schemaLocation"=>"urn:yahoo:cate http://api.search.yahoo.com/ContentAnalysisService/V1/TermExtractionResponse.xsd", "xmlns:xsi"=>"http://www.w3.org/2001/XMLSchema-instance", "xmlns"=>"urn:yahoo:cate"}})

    Tags4Free.for("No keywords extractable.").should eql([])
  end
  
  it "should raise an exception if Yahoo! reports an error" do
    Tags4Free.should_receive(:get).and_return({"Error"=>{"Message"=>"invalid value: context", "xmlns"=>"urn:yahoo:api"}})
    
    begin
      Tags4Free.for("Erroneous content")
    rescue Tags4Free::YahooApiError => e
      e.message.should include('invalid value: context')
    else
      violated('YahooApiError should be raised!')
    end
  end
  
  it "should raise an exception if Yahoo! answers with wired bullshit" do
    Tags4Free.should_receive(:get).and_return({"Some"=>{"Stupid"=>"bullshit", "xmlns"=>"urn:yahoo:api"}})
    
    begin
      Tags4Free.for("Content that causes a bullshit answer")
    rescue Tags4Free::YahooApiFormatError => e
    else
      violated('YahooApiFormatError should be raised!')
    end
  end
  
end