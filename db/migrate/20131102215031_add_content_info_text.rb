class AddContentInfoText < ActiveRecord::Migration
  def change
    project_description = Content.new
    project_description.code_name = "project_description"
    project_description.page_content = "Želimo pratiti dostupnost usluga važnih za normalan život građana Sarajeva."
    project_description.save

    info_text = Content.new
    info_text.code_name = "info_text"
    info_text.page_content = "Naravno, sve navedene usluge finansiraju građani kroz razne poreze. Ideja je da banalno, vizuelno prikažemo koliko svi mi možemo trpiti."
    info_text.save
  end
end
