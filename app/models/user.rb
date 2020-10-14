class User < ApplicationRecord
has_many :donations
has_many :trees, through: :donations
end
