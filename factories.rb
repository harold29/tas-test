FactoryBot.define do
  factory :like do
    art "Van Gogh, Picasso, Dali"
    cinema "Spielberg, Scorsese, Tarantino"
    music "Beethoven, Gaga, JBalvin"
    user
  end

  factory :user do
    email "test@test.com"
    first_name "Test"
    last_name "Tester"
    address "Calle 12a nro 71c-61"
    phone_number "+575555555555"
  end
end
