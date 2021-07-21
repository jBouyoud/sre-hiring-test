FROM amazon/aws-lambda-nodejs:14.2021.07.17.07 as production

# Rely on .dockerignore to remove non-wanted files
COPY . .

# Do not run post-install script automatically
# May lead of security breach (allowing any dependencies to run script on production container)
RUN npm ci --only=production --ignore-scripts && \
  npm run install --prefix=node_modules/sharp

CMD [ "app.lambdaHandler" ]
