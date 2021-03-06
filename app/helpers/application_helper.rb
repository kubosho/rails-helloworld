module ApplicationHelper
  # Return full title for page
  def full_title(page_title)
    base_title = 'クソリプブロッカー'

    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
