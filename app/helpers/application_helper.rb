module ApplicationHelper

  # def src_to_image(s)
  #   s.gsub! /\s(.*?\.jpg)\s/, '<%= image_tag "\1", alt: "rails", width: "500px" %>'
  # end

private

  def header_block_1
    @categories = Category.all
    @categories_block_1 = @categories.limit(2)
  end

  def header_block_2
    @categories = Category.all
    @categories_block_2 = @categories.order("id DESC").limit(2)
  end

end
