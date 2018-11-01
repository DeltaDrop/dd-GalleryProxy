# sh scripts/clone.sh
# sh scripts/install.sh &
# sh scripts/start.sh


# # this script sets up my proxy server to render all components
# # 1) pull all repos into source
# # 2) start all servers

# # may prompt you for 'y' to approve deletion
# printf "press y to delete files\n"
# rm -r src/components

# mkdir src/components
# cd src/components

# git clone https://github.com/DeltaDrop/dd-Gallery.git
# cd dd-Gallery
# npm install;
# npm run seed; 
# npm run react;
# npm run server &
# cd ..

# # /1, /2 for specific products
# git clone https://github.com/DeltaDrop/dd-ProductInfo.git
# cd dd-ProductInfo
# npm install
# touch config.js
# mysql --local-infile -u root < schema.sql &
# npm run react-dev &
# node server/index.js &
# cd ..

# git clone https://github.com/DeltaDrop/dd-ReviewsOfAProduct.git
# cd dd-ReviewsOfAProduct
# npm install 
# npm run server-dev &
# npm run react-dev &
# cd ..

# git clone https://github.com/DeltaDrop/dd-OverviewOfAProduct.git
# cd dd-OverviewOfAProduct
# npm install
# npm run server-dev &
# npm run react-dev &
# npm run seed &
# cd ..

# # node server.js