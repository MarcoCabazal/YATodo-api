class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :category, :category_id, :due_date

  def category
    object.category.title
  end
end
