class MovieTimestamps < ApplicationRecord
  validation :title, presence: true, legeth:{minimum:10 maximum:100}
end
