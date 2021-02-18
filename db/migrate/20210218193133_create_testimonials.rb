class CreateTestimonials < ActiveRecord::Migration[6.0]
  def change
    create_table :testimonials do |t|
      t.testimonial :string
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
    end
  end
end
