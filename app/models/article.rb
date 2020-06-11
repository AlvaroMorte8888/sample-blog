class Article < ActiveRecord::Base
    has_many :comments # из модели article связывание сущности
end    