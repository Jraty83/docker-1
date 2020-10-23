cd ft-rails/
git clone https://github.com/RailsApps/rails-signup-thankyou.git app
docker build -t ft-rails:on-build .
cd ..
docker build -t ex02 .
docker run --name my_rubyapp -p 3000:3000 -d ex02
