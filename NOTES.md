# 1) Integrate theme to asset pipeline

  [x]   / - see stubbed out, non-dynamic page with theme

# 2) Allow users to CRUD lists

# 3) Add items to list
  - Make the items in a list real
    - a list has many items and every item belongs to a lists

    lists
    2       Shopping List

    items
    id      description   list_id
    1           milk        2
    1           cookies     2

# 4) Adding validations
  - Validate that lists have a name
  - Validate items have a description


######   CONTINUE LECTURE MVC2 @ 18:00  



  CREATE ACTION for an ITEM in a LIST - What is the URL / HTTP method for that?
    - The form is already present in the list show page.  
    - What URL does this imply?  Stay restful.  
        POST /lists/:id/items=> doesn't describe which list we are adding item to?
        An item doesn't exist in our application outside of the context of the list it belongs to.
        NEED TO CREATE A NESTED RESOURCE:
          - items are nested in terms of URLs under their parent list

[] ListsController
#index
  - see all their lists
  - doubling as my #new action in that it is presenting the person with a form to create a new list
  / - Index all the lists.....

- create a list
- show a list


- need a model
- need a controller
- should generate resource

FEATURE: CLICKING ON THE LIST
DOES THE FEATURE IMPACT DB?  NO.
DOES THE FEATURE IMPACT URL? Expecting:  '/lists/1'
