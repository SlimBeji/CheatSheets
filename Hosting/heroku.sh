#Authenticate
heroku login

#List apps
heroku apps

#Check logs
heroku logs --tail

#scale dynos (use git for easy deployment)
heroku ps:scale web=1 -a slimbeji-test

#enter dyno kernel
heroku ps:exec --dyno=web.2

#running a flask command
heroku run flask db upgrade

# access bash, use app option to specify the app
heroku run bash --app my_app_name

# copy to heroku instance
heroku ps:copy local.db -o /tmp/local.db

# Install heroku add-ons
heroku buildpacks:add https://github.com/velizarn/heroku-buildpack-nano

