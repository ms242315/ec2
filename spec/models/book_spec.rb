require 'rails_helper'

RSpec.describe Book, type: :model do
  it "jpg (jpeg) 画像のとき" do
    formats = %w(jpg jpeg)
    formats.each do |format|
      book = Book.new( title: "test" )
      book.photo.attach(io: File.open("spec/fixtures/photo.#{format}"),
                        filename: "photo.#{format}", content_type: 'image/#{format}')
      expect(book).to be_valid
    end
  end
  
  it "png画像のとき" do
    formats = %w(png)
    formats.each do |format|
      book = Book.new( title: "test" )
      book.photo.attach(io: File.open("spec/fixtures/photo.#{format}"),
                        filename: "photo.#{format}", content_type: 'image/#{format}')
      expect(book).not_to be_valid
    end
  end

  it "2MBを超える画像のとき" do
    book = Book.new( title: "test" )
    book.photo.attach(io: File.open("spec/fixtures/large-photo.jpg"),
                      filename: "large-photo.jpg", content_type: 'image/jpg')
    expect(book).not_to be_valid
  end
end

