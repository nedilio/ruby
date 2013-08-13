class BlogEntry
def initialize (title,mood,fulltext)
	@time=Time.now
	@title,@mood,@fulltext=title , mood, fulltext
end
end

entry=BlogEntry.new("I Left my Hoodie on the Mountain!", :confused, "I am never going back to that mountain and I hope a giraffe steals it.")
entry2=BlogEntry.new("Titulo 2", :loco, "Texto que explica el titulo del post.")

=begin
#Popup.make do
	puts "My BLOG"
	blog.each do |entry|
 puts entry.title
  puts entry.fulltext
end
#end
=end