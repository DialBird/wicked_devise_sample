class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :status_id,     :integer, null: false, default: 0,  comment: 'アカウントステータス'
    add_column :users, :display_name,  :string,  null: false, default: '', comment: '表示用の名前'
    add_column :users, :sex_id,        :integer, null: false, default: 0,  comment: '性別（sex.yml参照）'
    add_column :users, :last_name,     :string,  null: false, default: '', comment: '性'
    add_column :users, :first_name,    :string,  null: false, default: '', comment: '名'
    add_column :users, :usage_type_id, :integer, null: false, default: 0,  comment: '主な用途（usage_type.yml参照）'
    add_column :users, :corp_name,     :string,  null: false, default: '', comment: '会社名'
    add_column :users, :zip,           :string,  null: false, default: '', comment: '郵便番号'
    add_column :users, :prefecture_id, :integer, null: false, default: 0,  comment: '都道府県（prefecture.yml参照）'
    add_column :users, :address_1,     :string,  null: false, default: '', comment: '住所１（番地まで）'
    add_column :users, :address_2,     :string,  null: false, default: '', comment: '住所２（建物名）'
    add_column :users, :phone,         :string,  null: false, default: '', comment: '電話番号'
  end
end
