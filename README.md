A simple ember app leveraging a rails API on the backend to list groceries.

To run locally do the following:

```
cd frontend
npm install && bower install
..
cd backend
bundle install
rake db:create db:migrate db:seed
```

In the `backend` directory run `rails server`. Then, in a separate terminal tab within the `frontend` directory run `ember serve --proxy http://localhost:3000`. Visit `localhost:4200` to view the app locally.
