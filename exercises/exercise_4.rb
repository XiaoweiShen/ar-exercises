require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name:"Surrey",annual_revenue:224000,mens_apparel:false,womens_apparel:true)
Store.create(name:"Whistler",annual_revenue:1900000,mens_apparel:true,womens_apparel:false)
Store.create(name:"Yaletown",annual_revenue:430000,mens_apparel:true,womens_apparel:true)
@mens_stores = Store.where(mens_apparel:true)
puts Store.count, @mens_stores.count

@mens_stores.each{|store|print "name=",store.name,"annual revenue=",store.annual_revenue,"\n"}

@womens_stores = Store.where("womens_apparel=? and annual_revenue<?",true,1000000)
puts Store.count, @womens_stores.count

@womens_stores.each{|store|print "name=",store.name,"   annual revenue=",store.annual_revenue,"\n"}


