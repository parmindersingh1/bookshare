require 'rubygems'
require 'httparty'
require 'json'
 
class BookshareApi
  include HTTParty
  base_uri 'api.bookshare.org'
  default_params :api_key => 'xew4s5nagrhf5g6rh8jh2x4j'
  format :json
 
  # def self.get_all_stores
    # get("/v1/stores")
  # end
#  
  # def self.get_stores_by_zip(zip)
    # get("/v1/stores(postalCode=#{zip})")
  # end
#  
  # def self.get_stores_by_zip_and_distance(zip, distance)
    # get("/v1/stores(area(#{zip},#{distance}))")
  # end
#  
  # def self.get_product_by_sku(sku)
    # get("/v1/products/#{sku}.xml")
  # end
#  
  # def self.get_products(filter)
    # response = get(URI.escape("/v1/products(#{filter})"))
    # response["products"]["product"]
  # end
  
  def self.full_text_search(query,limit)
    get("/book/searchFTS/#{query}/page/1/limit/#{limit}/format/json",:query => {:limit => 10})
  end
 
  # def self.method_missing(method_id, *args)
    # if match = /get_products_by_([_a-zA-Z]\w*)/.match(method_id.to_s)
      # attribute_names = match.captures.last.split('_and_')
#  
      # request = ""
      # attribute_names.each_with_index { |name, idx| request = request + name + "=" + args[idx] + (attribute_names.length-1 == idx ? "" : "&") }
#  
      # get_products(request)
    # else
      # super
    # end
  # end
end