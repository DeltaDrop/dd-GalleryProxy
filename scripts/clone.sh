
printf "press y to delete files\n"
rm -r src/components

mkdir src/components
cd src/components
git clone https://github.com/DeltaDrop/dd-Gallery.git
git clone https://github.com/DeltaDrop/dd-ProductInfo.git
git clone https://github.com/DeltaDrop/dd-ReviewsOfAProduct.git
git clone https://github.com/DeltaDrop/dd-OverviewOfAProduct.git