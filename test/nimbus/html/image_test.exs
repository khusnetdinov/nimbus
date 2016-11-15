defmodule Nimbus.HTML.ImageTest do
  use ExUnit.Case, async: true

  import Nimbus.HTML.Image

  describe "Nimbus.HTML.Image" do
    test "should render image tag" do
      given = image("image.jpg")
      expected = {:safe, "<img src=\"image.jpg\">"}

      assert given == expected
    end

    test "should change id" do
      given = image("image.jpg", id: "id")
      expected = {:safe, "<img id=\"id\" src=\"image.jpg\">"}

      assert given == expected
    end
  end
end
