# Deliverable #4: show one parent with children, including a Performance
# that links an Artist to a Stage. Run with:  bin/rails db:seed
#
# Tip: make it safe to run twice (find_or_create_by!) or start with
# destroy_all calls in the right order.

Performance.destroy_all
Ticket.destroy_all
Track.destroy_all
Stage.destroy_all
Attendee.destroy_all
Artist.destroy_all
Festival.destroy_all

fest = Festival.create!(name: "Riverfest", starts_on: Date.new(2026, 7, 4), city: "Austin")
main = fest.stages.create!(name: "Main Stage", capacity: 5000)
side = fest.stages.create!(name: "Side Stage", capacity: 800)

band = Artist.create!(name: "The Lanterns", genre: "Indie")
band.tracks.create!(title: "Glow", length_sec: 215)
band.tracks.create!(title: "Ember", length_sec: 188)

Performance.create!(stage: main, artist: band, starts_at: Time.zone.parse("2026-07-04 20:00"))
Performance.create!(stage: side, artist: band, starts_at: Time.zone.parse("2026-07-05 18:00"))

sam = Attendee.create!(name: "Sam", email: "sam@example.com")
sam.tickets.create!(festival: fest, tier: "VIP", price_cents: 25000)

puts "Festival: #{fest.name} with #{fest.stages.count} stages"
puts "#{band.name} plays: #{band.stages.pluck(:name).join(', ')}"
puts "Main Stage artists: #{main.artists.pluck(:name).join(', ')}"
puts "#{sam.name} has #{sam.tickets.count} ticket(s)"