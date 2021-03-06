# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed command (or created
# alongside the database with db:setup).
#

User.create(email: 'test@test.test', password: 'password')
Community.create!([{ name: 'Calhoun-Isle' },
                   { name: 'Camden' },
                   { name: 'Central' },
                   { name: 'Longfellow' },
                   { name: 'Near North' },
                   { name: 'Nokomis' },
                   { name: 'Northeast' },
                   { name: 'Phillips' },
                   { name: 'Powderhorn' },
                   { name: 'Southwest' },
                   { name: 'University' }])

# businesses = Business.create!([{name: 'PC Doodle',
#                                 status: 'OPEN',
#                                 community: Community.first,
#                                 user: User.first},
#                                {name: 'Cafe Racer Kitchen',
#                                 status: 'Food Delivery/Pickup',
#                                 community: Community.first,
#                                 user: User.first},
#                                {name: 'Testicles4Sale',
#                                 status: 'Seeking Financial Support',
#                                 community: Community.first,
#                                 user: User.first}])
