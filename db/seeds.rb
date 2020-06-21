User.create(username: 'judboy', password: 'pointer', first_name: 'Judson', middle_name: 'Lee', last_name: 'Smith', email: 'jud@smithwebtek.com')
User.create(username: 'testuser', password: 'pointer', first_name: 'Test', last_name: 'User', email: 'test@smithwebtek.com')


Board.create(name: 'Videos', description: 'Choose a video')
Board.create(name: 'Foods', description: 'Choose a food')
Board.create(name: 'Songs', description: 'Choose a song')
Board.create(name: 'Activities', description: 'Choose an activity')

Resource.create(name: 'Thomas', description: 'a thomas video', format: 'video', location: 'local drive path')
Resource.create(name: 'Pears', description: 'canned pears', format: 'food', location: 'kitchen cabinet')
Resource.create(name: 'Heigh Ho', description: 'Disney songs CD', format: 'audio', location: 'CD player')
Resource.create(name: 'Watch planes', description: 'go to airport and watch planes', format: 'activity', location: 'local airport')

BoardResource.create(board_id: 1, resource_id: 1)
BoardResource.create(board_id: 2, resource_id: 2)
BoardResource.create(board_id: 3, resource_id: 3)
BoardResource.create(board_id: 4, resource_id: 4)

Tag.create(name: 'comfort')
Tag.create(name: 'favorite')
Tag.create(name: 'exercise')
Tag.create(name: 'food')
Tag.create(name: 'activity')

Tagging.create(tag_id: 1, board_id: 1)
Tagging.create(tag_id: 2, resource_id: 1)
Tagging.create(tag_id: 3, diet_id: 1)
Tagging.create(tag_id: 4, meal_id: 1)
Tagging.create(tag_id: 5, recipe_id: 1)
Tagging.create(tag_id: 1, document_id: 1)
# Tagging.create(tag_id: 1, medication_id: 1)
Tagging.create(tag_id: 1, playlist_id: 1)
Tagging.create(tag_id: 2, playlist_id: 2)
Tagging.create(tag_id: 3, playlist_id: 3)
# Tagging.create(tag_id: 1, schedule_id: 1)
# Tagging.create(tag_id: 1, treatment_id: 1)

Diet.create(name: 'Vegan', description: 'Only plants.', instructions: 'No living thing, no product of a living, moving thing, or egg of a moving, living thing.' )
Diet.create(name: 'Pescatarian', description: 'Veggies, eggs, dairy and seafood', instructions: 'Largely plant-based diet of whole grains, nuts, legumes, produce and healthy fats, with seafood playing a key role as a main protein source. Many pescatarians also eat dairy and eggs' )
Diet.create(name: 'Vegetarian', description: 'Veggies, eggs, dairy, no meats or fish.', instructions: 'Plants, no moving,living thing, eggs of a moving, living thing ok.' )
Diet.create(name: 'American', description: 'Anything, including fast foods.', instructions: 'If you crave it, you eat it.')

Meal.create(name: 'Breakfast', description: 'Eggs and toast')
Meal.create(name: 'Lunch', description: 'Soup and sandwich')
Meal.create(name: 'Dinner', description: 'Noodles, veggies and salad')
Meal.create(name: 'Snack1', description: 'Crackers')
Meal.create(name: 'Snack2', description: 'Rice cakes')
Meal.create(name: 'Snack3', description: 'Pistachios nuts')

DietMeal.create(diet_id: 1, meal_id: 1)
DietMeal.create(diet_id: 1, meal_id: 2)
DietMeal.create(diet_id: 1, meal_id: 3)
DietMeal.create(diet_id: 1, meal_id: 4)

DietMeal.create(diet_id: 2, meal_id: 1)
DietMeal.create(diet_id: 2, meal_id: 2)
DietMeal.create(diet_id: 2, meal_id: 3)
DietMeal.create(diet_id: 2, meal_id: 4)

DietMeal.create(diet_id: 3, meal_id: 1)
DietMeal.create(diet_id: 3, meal_id: 2)
DietMeal.create(diet_id: 3, meal_id: 3)
DietMeal.create(diet_id: 3, meal_id: 4)

DietMeal.create(diet_id: 4, meal_id: 1)
DietMeal.create(diet_id: 4, meal_id: 2)
DietMeal.create(diet_id: 4, meal_id: 3)
DietMeal.create(diet_id: 4, meal_id: 4)

Recipe.create(name: 'Burger', description: 'Big burger', instructions: 'Buns, patty, lettuce, tomato, condiments')
Recipe.create(name: 'Pea Soup', description: 'Pea Soup', instructions: 'Soup stock, veggies, peas')
Recipe.create(name: 'Lentil Soup', description: 'Lentil Soup', instructions: 'Soup stock, veggies, lentils')
Recipe.create(name: 'Fried Rice', description: 'Fried Rice', instructions: 'Rice, egg, chop veggies, oil, sesame, soy sauce')


Document.create(name: 'Profile', description: 'Profile of user', instructions: 'Update this regularly', format: 'docx', location: 'file_path', user_id: 1)
Document.create(name: 'Diet Plan', description: 'Diet of user', instructions: 'Update this regularly', format: 'docx', location: 'file_path', user_id: 1)
Document.create(name: 'Activity Plan', description: 'Activities of user', instructions: 'Update this regularly', format: 'docx', location: 'file_path', user_id: 1)
Document.create(name: 'Treatment Plan', description: 'Treatments of user', instructions: 'Update this regularly', format: 'docx', location: 'file_path', user_id: 1)

Playlist.create(name: 'Cooking videos', description: 'Youtube cookiing videos')
Playlist.create(name: 'Disney Songs', description: 'Favorite Disney songs')
Playlist.create(name: 'Exercise', description: 'Exercise videos')

Resource.create(name: 'Cookie Cake', description: 'Youtube video Cookie Cake', format: 'video', location: 'path_to_video')
Resource.create(name: 'Space Donut', description: 'Youtube video Space Donut', format: 'video', location: 'path_to_video')
Resource.create(name: 'Ice Cream Cones', description: 'Youtube video Ice Cream Cones', format: 'video', location: 'path_to_video')

Resource.create(name: 'Heigh Ho', description: 'Disney song, Heigh Ho', format: 'video', location: 'path_to_video')
Resource.create(name: 'Zippity Doo Dah', description: 'Disney song, Zippity', format: 'video', location: 'path_to_video')
Resource.create(name: 'Barney', description: 'Barney song', format: 'audio', location: 'path_to_audio')

Resource.create(name: 'Billy Blanks', description: 'Taebo exercise video', format: 'video', location: 'path_to_video')
Resource.create(name: 'Denise Austin', description: 'Denise Austin exercise video', format: 'video', location: 'path_to_video')
Resource.create(name: 'Stretch It!', description: 'Stretch It exercise video', format: 'video', location: 'path_to_video')

PlaylistResource.create(playlist_id: 1, resource_id: 5)
PlaylistResource.create(playlist_id: 1, resource_id: 6)
PlaylistResource.create(playlist_id: 1, resource_id: 7)

PlaylistResource.create(playlist_id: 2, resource_id: 8)
PlaylistResource.create(playlist_id: 2, resource_id: 9)
PlaylistResource.create(playlist_id: 2, resource_id: 10)

PlaylistResource.create(playlist_id: 3, resource_id: 11)
PlaylistResource.create(playlist_id: 3, resource_id: 12)
PlaylistResource.create(playlist_id: 3, resource_id: 13)

# Treatment.create(name: 'Meditation', description: 'Meditation calm the mind and foster inner peace')
# Treatment.create(name: 'Yoga', description: 'Yoga to stretch the body and foster inner peace')
# Treatment.create(name: 'Drug plan', description: 'Mood stablizers')

event1 = Event.create(name: 'Morning Walk', description: 'Go for a walk in the morning', end_time: Time.now + 360)
event2 = Event.create(name: 'Breakfast', description: 'Eggs, toast, juice', end_time: Time.now + 720)
event3 = Event.create(name: 'Study', description: 'Study on testing with rspec')
event4 = Event.create(name: 'Beach Day', description: 'Go to the beach', start_time: Time.new(2020, 7, 4, 12, 30))

event1.update(users: [User.first])
