cd src/components

cd dd-Gallery
npm install;
npm run seed; 
cd ..

cd dd-ProductInfo
npm install
touch config.js
mysql --local-infile -u root < schema.sql &
cd ..

cd dd-ReviewsOfAProduct
npm install 
cd ..

cd dd-OverviewOfAProduct
npm install
npm run seed &
cd ..