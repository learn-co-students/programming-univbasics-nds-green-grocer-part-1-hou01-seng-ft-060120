def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
collection.each do |hash|
  if hash[:item] == name
    return hash
  end
end
nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
frank_cart = []

cart.each do |hash|
  frank_hash = find_item_by_name_in_collection(hash[:item], frank_cart)
  if 
    frank_hash
    frank_hash[:count] += 1 
  else 
    hash[:count] = 1 
    frank_cart << hash
  end
  
end

frank_cart
end
