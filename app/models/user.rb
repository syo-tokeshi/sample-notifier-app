class User < ApplicationRecord
  after_save UserCallbacks.new
end
