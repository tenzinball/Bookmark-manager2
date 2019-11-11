require 'pg'

class Bookmark
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
    connection = PG.connect :dbname => 'bookmark_test_manager'
  else
    connection = PG.connect :dbname => 'bookmark_manager'
  end
    result = connection.exec "SELECT * FROM bookmarks"
    result.map { |bookmark| bookmark['url']}
    end
end
