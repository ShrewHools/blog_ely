module ApplicationHelper

private

  def header_block_1
    @categories = Category.all
    @categories_block_1 = @categories.limit(1)
  end

  def header_block_2
    @categories = Category.all
    @categories_block_2 = @categories.order("id DESC").limit(1)
  end

end
