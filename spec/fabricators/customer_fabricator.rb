Fabricator(:customer) do
  name  { Faker::Company.name }
  customercode { Faker::Hacker.abbreviation }
  address { Faker::Address.street_address }
  city { Faker::Address.city_suffix }
  state { Faker::Address.state_abbr }
  zipcode { Faker::Address.postcode }

end
