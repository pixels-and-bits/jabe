atom_feed do |feed|
  feed.title( Jabe::SETTINGS.site_name)

  feed.updated @entries.first.try(:published_at)

  @entries.each do |post|
    feed.entry(post, :url => 'http:' + public_entry_url(post)) do |entry|
      entry.title h post.title
      entry.content post.body, :type => 'html'

      entry.author do |author|
        author.name( Jabe::SETTINGS.site_name)
      end
    end
  end
end
