
def create_users
  User.create(username: 'judboy', password: 'pointer', first_name: 'Judson', middle_name: 'Lee', last_name: 'Smith', email: 'jud@smithwebtek.com')
  User.create(username: 'testuser', password: 'pointer', first_name: 'Test', last_name: 'User', email: 'test@smithwebtek.com')
end

def create_boards
  Board.create(name: 'Videos', description: 'Choose a video')
  Board.create(name: 'Foods', description: 'Choose a food')
  Board.create(name: 'Songs', description: 'Choose a song')
  Board.create(name: 'Activities', description: 'Choose an activity')
end

def create_resources_for_boards
  Resource.create(name: 'Thomas', description: 'a thomas video', format: 'video', location: 'local drive path')
  Resource.create(name: 'Taebo', description: 'Billy Blanks exercise video', format: 'video', location: 'local drive path')
  Resource.create(name: 'Heigh Ho', description: 'Disney songs video', format: 'video', location: 'local drive path')
  Resource.create(name: 'Pears', description: 'canned pears', format: 'food', location: 'kitchen cabinet')
  Resource.create(name: 'Heigh Ho', description: 'Disney songs CD', format: 'audio', location: 'CD player')
  Resource.create(name: 'Watch planes', description: 'go to airport and watch planes', format: 'activity', location: 'local airport')
end

def create_board_resources
  BoardResource.create(board_id: 1, resource_id: 1)
  BoardResource.create(board_id: 1, resource_id: 2)
  BoardResource.create(board_id: 1, resource_id: 3)
  BoardResource.create(board_id: 2, resource_id: 4)
  BoardResource.create(board_id: 3, resource_id: 5)
  BoardResource.create(board_id: 4, resource_id: 6)
end

def create_tags
  Tag.create(name: 'comfort')
  Tag.create(name: 'favorite')
  Tag.create(name: 'exercise')
  Tag.create(name: 'food')
  Tag.create(name: 'activity')
end

def create_taggings
  Tagging.create(tag_id: 1, board_id: 1)
  Tagging.create(tag_id: 2, resource_id: 1)
  Tagging.create(tag_id: 3, diet_id: 1)
  Tagging.create(tag_id: 4, meal_id: 1)
  Tagging.create(tag_id: 5, recipe_id: 1)
  Tagging.create(tag_id: 1, document_id: 1)
  Tagging.create(tag_id: 1, playlist_id: 1)
  Tagging.create(tag_id: 2, playlist_id: 2)
  Tagging.create(tag_id: 3, playlist_id: 3)
  Tagging.create(tag_id: 2, treatment_id: 1)
  Tagging.create(tag_id: 3, medication_id: 1)
  Tagging.create(tag_id: 4, supplement_id: 1)
end

def create_diets
  Diet.create(name: 'Vegan', description: 'Only plants.', instructions: 'No living thing, no product of a living, moving thing, or egg of a moving, living thing.' )
  Diet.create(name: 'Pescatarian', description: 'Veggies, eggs, dairy and seafood', instructions: 'Largely plant-based diet of whole grains, nuts, legumes, produce and healthy fats, with seafood playing a key role as a main protein source. Many pescatarians also eat dairy and eggs' )
  Diet.create(name: 'Vegetarian', description: 'Veggies, eggs, dairy, no meats or fish.', instructions: 'Plants, no moving,living thing, eggs of a moving, living thing ok.' )
  Diet.create(name: 'American', description: 'Anything, including fast foods.', instructions: 'If you crave it, you eat it.')
end

def create_meals
  Meal.create(name: 'Breakfast', description: 'Eggs and toast')
  Meal.create(name: 'Lunch', description: 'Soup and sandwich')
  Meal.create(name: 'Dinner', description: 'Noodles, veggies and salad')
  Meal.create(name: 'Snack1', description: 'Crackers')
  Meal.create(name: 'Snack2', description: 'Rice cakes')
  Meal.create(name: 'Snack3', description: 'Pistachios nuts')
end

def create_diet_meals
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
end

def create_recipes
  Recipe.create(name: 'Burger', description: 'Big burger', instructions: 'Buns, patty, lettuce, tomato, condiments')
  Recipe.create(name: 'Pea Soup', description: 'Pea Soup', instructions: 'Soup stock, veggies, peas')
  Recipe.create(name: 'Lentil Soup', description: 'Lentil Soup', instructions: 'Soup stock, veggies, lentils')
  Recipe.create(name: 'Fried Rice', description: 'Fried Rice', instructions: 'Rice, egg, chop veggies, oil, sesame, soy sauce')
end

def create_documents
  Document.create(name: 'Profile', description: 'Profile of user', instructions: 'Update this regularly', format: 'docx', location: 'file_path', user_id: 1)
  Document.create(name: 'Diet Plan', description: 'Diet of user', instructions: 'Update this regularly', format: 'docx', location: 'file_path', user_id: 1)
  Document.create(name: 'Activity Plan', description: 'Activities of user', instructions: 'Update this regularly', format: 'docx', location: 'file_path', user_id: 1)
  Document.create(name: 'Treatment Plan', description: 'Treatments of user', instructions: 'Update this regularly', format: 'docx', location: 'file_path', user_id: 1)
end

def create_playlists
  Playlist.create(name: 'Cooking videos', description: 'Youtube cookiing videos')
  Playlist.create(name: 'Disney Songs', description: 'Favorite Disney songs')
  Playlist.create(name: 'Exercise', description: 'Exercise videos')
end

def create_resources_for_playlists
  Resource.create(name: 'Cookie Cake', description: 'Youtube video Cookie Cake', format: 'video', location: 'path_to_video')
  Resource.create(name: 'Space Donut', description: 'Youtube video Space Donut', format: 'video', location: 'path_to_video')
  Resource.create(name: 'Ice Cream Cones', description: 'Youtube video Ice Cream Cones', format: 'video', location: 'path_to_video')

  Resource.create(name: 'Heigh Ho', description: 'Disney song, Heigh Ho', format: 'video', location: 'path_to_video')
  Resource.create(name: 'Zippity Doo Dah', description: 'Disney song, Zippity', format: 'video', location: 'path_to_video')
  Resource.create(name: 'Barney', description: 'Barney song', format: 'audio', location: 'path_to_audio')

  Resource.create(name: 'Billy Blanks', description: 'Taebo exercise video', format: 'video', location: 'path_to_video')
  Resource.create(name: 'Denise Austin', description: 'Denise Austin exercise video', format: 'video', location: 'path_to_video')
  Resource.create(name: 'Stretch It!', description: 'Stretch It exercise video', format: 'video', location: 'path_to_video')
end

def create_playlist_resources
  PlaylistResource.create(playlist_id: 1, resource_id: 5)
  PlaylistResource.create(playlist_id: 1, resource_id: 6)
  PlaylistResource.create(playlist_id: 1, resource_id: 7)

  PlaylistResource.create(playlist_id: 2, resource_id: 8)
  PlaylistResource.create(playlist_id: 2, resource_id: 9)
  PlaylistResource.create(playlist_id: 2, resource_id: 10)

  PlaylistResource.create(playlist_id: 3, resource_id: 11)
  PlaylistResource.create(playlist_id: 3, resource_id: 12)
  PlaylistResource.create(playlist_id: 3, resource_id: 13)
end

def create_events
  event1 = Event.create(name: 'Morning Walk', description: 'Go for a walk in the morning', end_time: Time.now + 360)
  event2 = Event.create(name: 'Breakfast', description: 'Eggs, toast, juice', end_time: Time.now + 720)
  event3 = Event.create(name: 'Study', description: 'Study on testing with rspec')
  event4 = Event.create(name: 'Beach Day', description: 'Go to the beach', start_time: Time.new(2020, 7, 4, 12, 30))

  event1.update(users: [User.first])
end

def create_treatments
  Treatment.create(name: 'Meditation', description: 'Meditation calm the mind and foster inner peace')
  Treatment.create(name: 'Yoga', description: 'Yoga to stretch the body and foster inner peace')
  Treatment.create(name: 'Meds plan', description: 'Mood stablizers')
end

def create_medications_for_steps
  Medication.create(name: 'Plaxatil', description: 'Best thing for plax')
  Medication.create(name: 'Cruzine', description: 'Treats brain issues')
  Medication.create(name: 'Onycitlloxiprazzamutin', description: 'Helps with everything.')
end

def create_supplements_for_steps
  Supplement.create(name: 'Vitamin D', description: 'If the sun shines.')
  Supplement.create(name: 'Iron', description: 'Minerals for you.')
  Supplement.create(name: 'Fiber', description: 'Keeps you flowing and growing.')
end

def create_steps
  Step.create(treatment_id: 1, step_number: 1,name: 'Step 1', description: 'Meditation Step 1', medication_id: 1)
  Step.create(treatment_id: 1, step_number: 2,name: 'Step 2', description: 'Meditation Step 2', medication_id: 2)
  Step.create(treatment_id: 1, step_number: 3,name: 'Step 3', description: 'Meditation Step 3', medication_id: 3)

  Step.create(treatment_id: 2, step_number: 1,name: 'Step 1', description: 'Yoga Step 1', medication_id: 1)
  Step.create(treatment_id: 2, step_number: 2,name: 'Step 2', description: 'Yoga Step 2', medication_id: 2)
  Step.create(treatment_id: 2, step_number: 3,name: 'Step 3', description: 'Yoga Step 3', medication_id: 3)

  Step.create(treatment_id: 3, step_number: 1,name: 'Step 1', description: 'Meds plan Step 1', supplement_id: 1)
  Step.create(treatment_id: 3, step_number: 2,name: 'Step 2', description: 'Meds plan Step 2', supplement_id: 2)
  Step.create(treatment_id: 3, step_number: 3,name: 'Step 3', description: 'Meds plan Step 3', supplement_id: 3)
end

def create_histories
  user = User.first
  board = Board.first
  resource_for_board = Resource.first
  tag = Tag.last
  diet = Diet.first
  meal = Meal.first
  recipe = Recipe.last
  document = Document.last
  playlist = Playlist.first
  resource_for_playlist = Resource.last
  event = Event.first
  treatment = Treatment.first
  medication_for_step = Medication.first 
  supplement_for_step = Supplement.first
  step = Step.first

  user.update(username: user.username.upcase)
  board.update(name: board.name.upcase)
  resource_for_board.update(name: resource_for_board.name.upcase)
  tag.update(name: tag.name.upcase)
  diet.update(name: diet.name.upcase)
  meal.update(name: meal.name.upcase)
  recipe.update(name: recipe.name.upcase)
  document.update(name: document.name.upcase)
  playlist.update(name: playlist.name.upcase)
  resource_for_playlist.update(name: resource_for_playlist.name.upcase)
  event.update(name: event.name.upcase)
  treatment.update(name: treatment.name.upcase)
  medication_for_step.update(name: medication_for_step.name.upcase)
  supplement_for_step.update(name: supplement_for_step.name.upcase)
  step.update(name: step.name.upcase)
end

def main
  create_users
  create_boards
  create_resources_for_boards
  create_board_resources
  create_tags
  create_taggings
  create_diets
  create_meals
  create_diet_meals
  create_recipes
  create_documents
  create_playlists
  create_resources_for_playlists
  create_playlist_resources
  create_events
  create_treatments
  create_medications_for_steps
  create_supplements_for_steps
  create_steps
  create_histories
end

main
