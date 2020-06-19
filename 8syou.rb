# class Team
#   COUNTRIES = ['japan'.freeze,'US'.freexe,'India'].freeze
# end

class Team
  COUNTRIES = deep_freeze(['japan','US','India'])
end

Team::COUNTRIES.frozen?
Team::COUNTRIES.all?
