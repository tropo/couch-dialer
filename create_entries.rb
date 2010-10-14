%w(rubygems restclient json).each { |lib| require lib }

RestClient.post 'http://localhost:5984/couch_dialer',
                { :number     => 'sip:1000@sandite.orl.voxeo.net', :status => 'open', :name => 'John Doe' }.to_json,
                :content_type => 'application/json'


# RestClient.post 'http://localhost:5984/couch_dialer', 
#                 { :number => '4157044517', :status => 'absent', :name => 'Jane Smith', :parental_pin => 5678 }.to_json,
#                 :content_type => 'application/json'