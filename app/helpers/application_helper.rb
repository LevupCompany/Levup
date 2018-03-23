module ApplicationHelper
  #Модуль создания переменных экземпляра для динамического отображения названий страниц
    def meta_title_for(title, site)
      return site if title.blank?
      title.include?(site) ? title : "#{title} — #{site}"
    end

  end