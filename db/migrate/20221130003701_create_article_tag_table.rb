class CreateArticleTagTable < ActiveRecord::Migration[7.0]
  def change
    create_table :article_tag_tables do |t|

      t.timestamps
    end
  end
end
