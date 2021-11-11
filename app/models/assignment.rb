class Assignment < ApplicationRecord
    has_many :opportunities
    has_many :request_statuses
end
