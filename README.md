# Basic Nested Forms Lab

## Objectives

1. Construct a nested params hash with data about the primary object and a belongs to and has many association.
2. Name form inputs correctly to create a nested params hash with belongs to and has many associated data.
3. Define a conventional association writer for the primary model to properly instantiate associations based on the nested params association data.
4. Define a custom association writer for the primary model to properly instantiate associations with custom logic (like unique by name) on the nested params association data.
5. Use fields_for to generate the association fields.

## Data Model: Recipe with ingredients

The first data model we're going to be working with today is a recipe with ingredients.

  * Recipe
    * has many ingredients
    * title:string
  * Ingredient
    * belongs to a recipe
    * ingredient.name: string
    * ingredient.quantity: string

The models and show routes and associations have been set up for you.

```ruby
{
  :recipe => {
    :name => "Polenta with Roasted Mushrooms and Thyme",
    :ingredients_attributes => {
      "0" => {
        :name => "Polenta",
        :quantity => "1 case",
      },
      "1" => {
        :name => "Olive Oil",
        :quantity => "2 tbsp",
      },
      "2" => {
        :name => "Red Wine Vinegar",
        :quantity => ".5 cup",
      },
      "3" => {
        :name => "Thyme",
        :quantity => "3 sprigs",
      },
      "4" => {
        :name => "Mushrooms",
        :quantity => "1 carton",
      },
      "5" => {
        :name => "Garlic",
        :quantity => "3 cloves",
      },
      "6" => {
        :name => "Milk",
        :quantity => "1/4 cup",
      },
      "7" => {
        :name => "Unsalted Butter",
        :quantity => "3 tbsp",
      },
      "8" => {
        :name => "Parmesan",
        :quantity => "1 cup",
      },
    }
  }
}
```

### Instructions

Build a recipe form that accepts two ingredients! It should automatically create the new `Ingredient` objects.
