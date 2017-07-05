let g:rails_projections = {
      \   "app/services/*.rb": {
      \     "alternate": "spec/services/{dirname}/{basename}_spec.rb",
      \     "type": "service"
      \   },
      \   "app/api/*.rb": {
      \     "alternate": "spec/requests/{dirname}/{basename}_spec.rb",
      \     "type": "api"
      \   },
      \   "spec/services/*_spec.rb": {
      \     "type": "test",
      \     "template":
      \       ["require 'rails_helper'",
      \       "RSpec.describe {camelcase|capitalize|colons} do",
      \       "end" ],
      \   },
      \   "spec/requests/*_spec.rb": {
      \     "type": "test"
      \   }}

