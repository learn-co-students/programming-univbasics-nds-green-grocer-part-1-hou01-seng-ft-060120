def find_item_by_name_in_collection(name, collection)
  collection.each do |cart_item|
    if cart_item[:item] == name
    return cart_item
    end
  end
  nil
end

def consolidate_cart(cart)
  new_cart = []
  cart.each do |cart_item|
    item_in_cart = find_item_by_name_in_collection(cart_item[:item], new_cart)
    if item_in_cart
      new_cart_counter = 0 
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] == item_in_cart[:item]
          new_cart_item[:count] += 1 
        end
        new_cart_counter += 1
      end
    else
      cart_item[:count] = 1
      new_cart << cart_item
    end
  end
  new_cart
end


  