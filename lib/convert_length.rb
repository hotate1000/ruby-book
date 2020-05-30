# def convert_length(length, unit_from: :m, unit_to: :m)
#   units = { m: 1.0, ft: 3.28, in: 39.37}
#   (length/units[unit_from] * units[unit_to]).round(2)
# end

UNITS = {m: 1.0, ft: 3.28 , in: 39.37}
def convert_length(length, from: unit_from, to: unit_to)
  (length * UNITS[to] / UNITS[from]).round(2)
end