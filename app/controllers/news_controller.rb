class NewsController < ApplicationController



def index

@feeds = Feedjira::Feed.fetch_and_parse("http://www.worldoil.com/Rss_Feed.aspx?PLink=WODN")

@summary = @feeds.entries.last.summary
end









end
