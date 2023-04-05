# # Install dependencies
# bundle install --without development test --jobs 4
# yarn install --check-files

# # Precompile assets
# RAILS_ENV=production bundle exec rails assets:precompile

# # Migrate database
# RAILS_ENV=production bundle exec rails db:migrate

# Install dependencies
bundle install --without development test --jobs 4
yarn install --check-files

# Precompile assets
RAILS_ENV=production bundle exec rails assets:precompile

# Migrate database
RAILS_ENV=production bundle exec rails db:migrate

# Make script executable
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    icacls bin/render-build.sh /grant:r "$USERNAME":(RX)
else
    chmod +x bin/render-build.sh
fi