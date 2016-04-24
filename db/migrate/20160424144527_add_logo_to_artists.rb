class AddLogoToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :logo, :string
  end
end
