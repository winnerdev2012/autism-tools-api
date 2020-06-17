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
Tagging.create(tag_id: 1, diet_id: 1)
Tagging.create(tag_id: 1, meal_id: 1)
Tagging.create(tag_id: 1, recipe_id: 1)
# Tagging.create(tag_id: 1, document_id: 1)
# Tagging.create(tag_id: 1, medication_id: 1)
# Tagging.create(tag_id: 1, playlist_id: 1)
# Tagging.create(tag_id: 1, schedule_id: 1)
# Tagging.create(tag_id: 1, treatment_id: 1)
# Tagging.create(tag_id: 1, user_id: 1)

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

User.create(first_name: 'Judson', middle_name: 'Lee', last_name: 'Smith')

Document.create(name: 'Profile', description: 'Profile of user', instructions: 'Update this regularly', format: 'docx', location: 'file_path', user_id: 1)
Document.create(name: 'Diet Plan', description: 'Diet of user', instructions: 'Update this regularly', format: 'docx', location: 'file_path', user_id: 1)
Document.create(name: 'Activity Plan', description: 'Activities of user', instructions: 'Update this regularly', format: 'docx', location: 'file_path', user_id: 1)
Document.create(name: 'Treatment Plan', description: 'Treatments of user', instructions: 'Update this regularly', format: 'docx', location: 'file_path', user_id: 1)
