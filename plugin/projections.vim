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
      \  "app/controllers/*_controller.rb": {
      \      "test": [
      \        "spec/requests/{}_spec.rb",
      \        "spec/requests/{}_request_spec.rb",
      \        "spec/controllers/{}_controller_spec.rb",
      \        "test/controllers/{}_controller_test.rb"
      \      ],
      \      "alternate": [
      \        "spec/requests/{}_spec.rb",
      \        "spec/requests/{}_request_spec.rb",
      \        "spec/controllers/{}_controller_spec.rb",
      \        "test/controllers/{}_controller_test.rb"
      \      ],
      \   },
      \   "spec/requests/*_request_spec.rb": {
      \      "command": "request",
      \      "type": "test",
      \      "alternate": "app/controllers/{}_controller.rb",
      \      "template": "require 'rails_helper'\n\n" .
      \        "RSpec.describe '{}' do\nend",
      \   },
      \   "spec/requests/*_spec.rb": {
      \      "command": "request",
      \      "type": "test",
      \      "alternate": "app/controllers/{}_controller.rb",
      \      "template": "require 'rails_helper'\n\n" .
      \        "RSpec.describe '{}' do\nend",
      \   }
      \ }

