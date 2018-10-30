# may prompt you for 'y' to approve deletion
rm -r src/components

mkdir src/components
cd src/components

git clone https://github.com/DeltaDrop/dd-Gallery.git

cd dd-Gallery
npm install
# seed db - npm run seed
cd ..

git clone https://github.com/DeltaDrop/dd-ProductInfo.git

cd dd-ProductInfo
npm install
# seed db - npm run seed
cd ..

git clone https://github.com/DeltaDrop/dd-ReviewsOfAProduct.git

cd dd-ReviewsOfAProduct
npm install
# seed db - npm run seed
cd ..

git clone https://github.com/DeltaDrop/dd-OverviewOfAProduct.git

cd dd-OverviewOfAProduct
npm install
# seed db - npm run seed
cd ..

