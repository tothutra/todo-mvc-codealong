##1: Integrate  basic theme to asset pipeline

[x] - And see a stubbed out, none dynamic  page with the theme

##2: Allow people to CRUD lists

ListsController
  #index
    See all list/Index all lists
    Double as new action to create new list

##3: Add Item to List
  Item associates with list
    List has many items and every item belongs to a list
    Item:
      description
      list_id
    Wire the schema - database 
    Wire the model 
  Create action for items in a list
    Add form for adding items
    What URL does this form imply? items doesn't exist in the app outside of the context of the list it belongs to --> POST /lists/:id/items
    Nested resource - Items are nested in terms of URL under their parent list

##4: Add validations
  List must have name
  Item must have description

##5: Add States (Complete/Incomplete) to Items
  What URL needed?
    Database changes?
    New form for updating --> new URL
    PUT/PATCH /lists/:id/items/:id
  Add checkbox to view
  <input class="toggle" type="checkbox">
  Add JS function to submit the form when check

  Start using partial in list show


##6: Delete items from list

##7: User signup and signin

##8: Authorizations


  
