# LocBox SAS APP
This is my SAS application for the LocBox coding challenge.

Basic features include:
## Managers
### Ability to
* Create
* Read
* Update
* Delete
their staff members

## Staff Members
Only able to READ their own managers.

## Note
The main feature is the users model, with managers being a type of user and staff members being another type. They have a has_many and belongs_to relationship between them. Controller wise there is a users controller and a sessions controller for storing cookies. Please feel free to browse around and try out the app. 
