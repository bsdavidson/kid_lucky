
class JokesController < ApplicationController
 JOKESPREFIX = [
          "Knock, Knock, Who's there? ",
          "Why did the Chicken Cross the road? ",
          "How many developers does it take to screw in a lightbulb? "
        ]

  def index
    jokePrefix = JOKESPREFIX.sample
    punchline = RandomWord.nouns.next
    @joke = jokePrefix + " " + punchline.humanize
  end

end
