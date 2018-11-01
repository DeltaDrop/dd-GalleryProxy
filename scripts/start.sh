cd src/components

cd dd-Gallery
npm run react;
npm run server &
cd ..

cd dd-ProductInfo
npm run react-dev &
node server/index.js &
cd ..

cd dd-ReviewsOfAProduct
npm run server-dev &
npm run react-dev &
cd ..

cd dd-OverviewOfAProduct
npm run server-dev &
npm run react-dev &
cd ..

cd .. 
cd ..
nodemon server.js