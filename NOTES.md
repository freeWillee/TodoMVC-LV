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

# 5) Add state(complete, incomplete) to Items in a List
  - Marking items as complete or incomplete.

  What urls do i need?
    - the idea of an item being complete or incomplete requires data. [DEFINITE DATABASE CHANGE]
    - new forms for updating status of an item ==> new URL
    Potential routes (RESTFUL):
    GET /lists/:list_id/items/:id/update
    PUT/PATCH /lists/:list_id/items/:id

    Get checkbox HTML from mvc.com
    <input class="toggle" type="checkbox">

    JS function to submit form:
    $(function(){
      $("input.toggle").on("change", function(){
        $(this).parents("form").trigger("submit")
        })
      });

  # REFACTOR 1: Start using partials in lists/show ==> getting pretty messy

# 6) Deleting Items from a LIST

  -> need a new button or link to delete
  -> needs to hit some sort of URL - look it up.
    -> see routes
    -> how to trigger a DELETE request?
      -> browswers only support GET / POST
  -> a controller action to process the deleting of the item

# 7) User signup and login

# 8) Users have lists and can only see their lists.


  CREATE ACTION for an ITEM in a LIST - What is the URL / HTTP method for that?
    - The form is already present in the list show page.  
    - What URL does this imply?  Stay restful.  
        POST /lists/:id/items=> doesn't describe which list we are adding item to?
        An item doesn't exist in our application outside of the context of the list it belongs to.
        NEED TO CREATE A NESTED RESOURCE:
          - items are nested in terms of URLs under their parent list

[x] ListsController
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
