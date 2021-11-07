require 'date'

def to_date(string)
    Date.parse string rescue nil
end

p to_date("2019-11-11")
p to_date("aksak")
