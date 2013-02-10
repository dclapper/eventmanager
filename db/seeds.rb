ExhibitorCategory.create(:name => 'Food Vendors')
ExhibitorCategory.create(:name => 'Farm Equipment')
ExhibitorCategory.create(:name => 'Home Economics')
ExhibitorCategory.create(:name => 'Garden Supply')

Sponsor.create(:url => "http://joescorndogs.com", :logo => "joescorndogs.jpg")
Sponsor.create(:url => "http://tractorsupply.com", :logo => "tractorsupply.jpg")

Venue.create(:name => "Kitchen Stadium", :address => "123 E. Fake St.", :city => "Indianapolis", :state => "IN", :zip => "46205")
Venue.create(:name => "Pepsi Coliseum", :address => "227 E. Fake St.", :city => "Indianapolis", :state => "IN", :zip => "46205")

Exhibitor.create(:name => "Joe's Corndogs", :description => "The best corn dogs in town!", :exhibitor_category => ExhibitorCategory.first, :sponsor => Sponsor.first)
Exhibitor.create(:name => "Tractor Supply Company", :description => "All the stuff for farms", :exhibitor_category => ExhibitorCategory.find(2), :sponsor => Sponsor.last)
Exhibitor.create(:name => "Smith's Pie Making Kits", :description => "Fatten up on your own time!", :exhibitor_category => ExhibitorCategory.find(3))
Exhibitor.create(:name => "Habig Garden Centers", :description => "Garden goods at better prices", :exhibitor_category => ExhibitorCategory.last)

Meeting.create(:name => "Corn Dog Eating Contest", :start_date => DateTime.new(2014,9,1,17), :end_date => DateTime.new(2014,9,1,19), :venue => Venue.first, :sponsors => [Sponsor.first])
Meeting.create(:name => "Tractor Bonanza (feat. Free Corn Dogs!)", :start_date => DateTime.new(2014,8,21,9), :end_date => DateTime.new(2014,8,21,21), :venue => Venue.last, :sponsors => [Sponsor.first, Sponsor.last])

