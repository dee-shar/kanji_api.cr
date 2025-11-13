require "json"
require "http/client"

class KanjiApi
  API_PATH = "v1"
  def initialize
    @headers = HTTP::Headers{
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://kanjiapi.dev")
    @http_client = HTTP::Client.new(uri)
  end

  def get_grade_kanjis(grade : String) : String
    @http_client.get("/#{API_PATH}/kanji/#{grade}", headers: @headers).body
  end

  def get_all_kanjis() : String
    @http_client.get("/#{API_PATH}/kanji/all", headers: @headers).body
  end
end
