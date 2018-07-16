defmodule Example do
  use ExUnit.Case
  use Hound.Helpers

  hound_session()

  test "the title is correct" do
    navigate_to("http://google.com")
    assert "Goggle" == page_title()
  end
end
