require 'pg'

  def test_database_setup
    p "setting up database"
    connection = PG.connect :dbname => 'bookmark_test_manager'
    result = connection.exec "TRUNCATE bookmarks;"
  end
