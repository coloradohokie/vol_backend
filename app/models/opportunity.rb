class Opportunity < ApplicationRecord
    has_one :role
    has_one :request_status
end
