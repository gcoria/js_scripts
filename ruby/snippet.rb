# replace regex
def maskify(cc)
  cc.gsub(/.(?=.{4})/,'#')
end

def is_int_array(arr)
  arr.all? {|e| e % 1.0 == 0} rescue false
end

def up_array(arr)
  return nil if arr.empty? || arr.any? { |x| x < 0 || x > 9 }
  arr.join.next.chars.map(&:to_i)
end
