require 'sequel'
DB = Sequel.connect("postgres://localhost/sequel-single-table")

def format_money(numeric)
  format("$%.2f", numeric)
end

result = DB[:menu_items].select do
  labor_calc = prep_time * 12 / 60.0
  profit_calc = menu_price - ingredient_cost - labor_calc
  [item, menu_price, ingredient_cost, labor_calc.as(labor), profit_calc.as(profit)]
end

result.each do |row|
  puts "#{row[:item]}"
  puts "menu price: #{format_money(row[:menu_price])}"
  puts "ingredient_cost: #{format_money(row[:ingredient_cost])}"
  puts "labor: #{format_money(row[:labor])}"
  puts "profit: #{format_money(row[:profit])}"
end
