# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

# pp @candidates
# pp experienced?(@candidates[1])
# pp find(15)
pp qualified_candidates(@candidates)
pp ruby_or_python?(@candidates[2])
pp date_applied_last_15_days?(@candidates[0])
pp ordered_by_qualifications(@candidates)