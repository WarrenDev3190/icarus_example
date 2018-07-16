defmodule Example do
  use Hound.Helpers

  def run do
    Hound.start_session()

    navigate_to("http://google.com")
    IO.inspect(page_title())

    Hound.end_session()
  end
end
