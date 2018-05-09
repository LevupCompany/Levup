class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      #Создание таблицы по разработке сайта (без учета стоимости)
      t.string :site_type
      t.string :site_design
      t.boolean :design_logo
      t.boolean :design_banner
      t.boolean :design_page
      t.string :engine
      t.boolean :module_otzyvy
      t.boolean :module_blog
      t.boolean :module_slider
      t.boolean :module_gallery
      t.boolean :module_easycalc
      t.boolean :module_hardcalc
      t.boolean :module_formit
      t.boolean :module_callback
      t.boolean :module_chat
      t.boolean :module_mailer
      t.boolean :module_multilang
      t.boolean :module_catalog
      t.boolean :module_basket
      t.boolean :module_payment
      t.boolean :module_currency
      t.boolean :module_multitovar
      t.boolean :module_sales
      t.boolean :module_api
      t.boolean :module_reg
      t.boolean :module_cabinet
      t.boolean :module_reccomendation
      t.boolean :module_importer
      t.boolean :module_referal
      t.boolean :module_filtration
      t.boolean :c_easypage
      t.integer :content_easypage
      t.boolean :c_hardpage
      t.integer :content_hardpage
      t.boolean :c_editpage
      t.integer :content_editpage
      t.boolean :c_post
      t.integer :content_post
      t.boolean :c_translate
      t.integer :content_translate
      t.boolean :module_googlemaps

      #Создание таблицы по разработке фирменного стиля (без учета стоимости)

      t.string :type_logo
      t.boolean :elements_logo
      t.boolean :prototype_logo
      t.boolean :variate_logo
      t.integer :variant_logo
      t.boolean :oneside_visitka
      t.boolean :twoside_visitka
      t.boolean :blank
      t.boolean :convert
      t.boolean :cennik
      t.boolean :papka
      t.boolean :uniform
      t.boolean :disk
      t.boolean :email_send
      t.boolean :suvenir
      t.boolean :flier
      t.boolean :plakat
      t.boolean :banner
      t.boolean :shtender

      # А вот теперь и цены пошли

      t.integer :diz_balance
      t.integer :prog_balance
      t.integer :support_balance
      t.integer :log_balance
      t.integer :firm_balance
      t.integer :total_sum
      t.integer :status

      # Ну а теперь данные пользователя

      t.string :user_name
      t.string :user_email
      t.string :user_phone
      t.string :user_password
      t.string :user_password_confirmation
      t.string :order_title
      t.text :order_detail
      t.timestamps
    end
  end
end
