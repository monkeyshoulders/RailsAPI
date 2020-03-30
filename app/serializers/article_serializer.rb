# class ArticleSerializer < ActiveModel::Serializer
#   attributes :id, :title, :content, :slug
# end

class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :content, :slug
end

# class ApplicationSerializer
#   include FastJsonapi::ObjectSerializer
# end

# class ArticleSerializer < ApplicationSerializer
#   attributes :id, :title, :content, :slug
# end