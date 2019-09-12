def make_casserole
  puts 'Preheat oven to 375 degrees'
  ingredients = yield
  puts "Place #{ingredients} in dish"
  puts 'Bake for 20 minute'
end

make_casserole { 'noodles, celery and tuna' }
make_casserole { 'rice, broccoli and chicken' }
