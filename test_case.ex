defmodule Example do
  use ExUnit.Case
  use Hound.Helpers

  def run do
    Hound.start_session()

    test "the title is correct" do
      navigate_to("http://google.com")
      assert "Goggle" == page_title()
    end

    Hound.end_session()
  end
end
