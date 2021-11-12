class Opportunity < ApplicationRecord
    belongs_to :role
    belongs_to :request_status
end
