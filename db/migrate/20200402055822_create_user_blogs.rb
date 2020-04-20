class CreateUserBlogs < ActiveRecord::Migration[6.0]
  def change
    execute <<~SQL
      CREATE TABLE "user_blogs" (
        "id" bigserial primary key, 
        "title" character varying, 
        "author" character varying, 
        "created_at" timestamp(6) NOT NULL, 
        "updated_at" timestamp(6) NOT NULL
      )
    SQL
  end
end
