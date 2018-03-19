module ApplicationHelper
  #Модуль создания переменных экземпляра для динамического отображения названий страниц
  def full_title(page_title)
    base_title = "LevUP Company"
    if page_title.empty?
      base_title
    else
      "#{page_title} - #{base_title}"
    end
  end
end
