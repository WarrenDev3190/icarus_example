defmodule Example do
  use ExUnit.Case
  use Hound.Helpers

  def run do
    Hound.start_session()

    navigate_to("http://google.com")
    assert "Goggle" == page_title()

    Hound.end_session()
  end
end
