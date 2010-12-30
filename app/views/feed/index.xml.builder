atom_feed do |feed|
  feed.title(SETTINGS.site_name)

  feed.updated @entries.first.try(:published_at)

  @entries.each do |post|
    feed.entry(post) do |entry|
      entry.title h post.title
      entry.body strip_tags post.body
    end
  end
end
