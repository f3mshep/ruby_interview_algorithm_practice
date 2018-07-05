# Write a method that takes a string as input. It should return true if
# the input is a valid IPv4 address (ie. anything between `0.0.0.0` and
# `255.255.255.255` is valid).

def is_valid_ip?(address)
  octets = address.split('.')
  return false if octets.length != 4
  octets.each {|octet| return false if octet.to_i > 255 || octet.to_i < 0}
  true
end