module ApplicationHelper

  # def src_to_image(s)
  #   s.gsub! /\s(.*?\.jpg)\s/, '<%= image_tag "\1", alt: "rails", width: "500px" %>'
  # end

private

  def header_block_1
    @categories = Category.all
    col = Category.all.size / 2
    ost = col % 2
    z = col+ost
    @categories_block_1 = @categories.limit(z)
  end

  def header_block_2
    @categories = Category.all
    k = Category.all.size / 2
    @categories_block_2 = @categories.order("id DESC").limit(k)
  end

end
