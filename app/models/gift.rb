class Gift < ApplicationRecord
  validates :fname2, presence: true,
                     length: {minimum: 4 }
end
