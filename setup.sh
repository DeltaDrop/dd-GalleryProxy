# this script sets up my proxy server to render all components
# 1) pull all repos into source
# 2) start all servers

# may prompt you for 'y' to approve deletion
printf "press y to delete files\n"
rm -r src/components

mkdir src/components
cd src/components

git clone https://github.com/DeltaDrop/dd-Gallery.git

cd dd-Gallery
npm install;
printf "\nhi\n"
npm run seed;
npm run react;
npm run server;
cd ..

# git clone https://github.com/DeltaDrop/dd-ProductInfo.git

# cd dd-ProductInfo
# npm install
# node start
# # seed db - npm run seed
# cd ..

# git clone https://github.com/DeltaDrop/dd-ReviewsOfAProduct.git

# cd dd-ReviewsOfAProduct
# npm install
# node run server-dev
# # seed db - npm run seed
# cd ..

# git clone https://github.com/DeltaDrop/dd-OverviewOfAProduct.git

# cd dd-OverviewOfAProduct
# npm install
# node run server-dev
# # seed db - npm run seed
# cd ..

