Notes from video review:

Build from the ground up: database/model, controller, view

Think through database relations

ALways binding and check if things work before you move on.

The model here is superheroes and teams.  Superheroes belong to teams, teams have many superheros.

Controller:
Respond to GET request at index.  Render view with a form.

Handle form submission: create a route that responds to a POST request at /teams
Have the form send a POST request to this route.
Upon submission, render a template that displays the submitted team data and each member's data.




View: replicate screenshots of form
This form should have fields for the name of a superhero team and their motto

There should be form inputs for each of the three member's name, power, and bio.
