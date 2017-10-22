git config --global user.email "gidsi@chaospott.de"
git config --global user.name "Timm"

git add -f .
git remote rm origin
git remote add origin https://gidsi:$GITHUB_API_KEY@github.com/gidsi/spaceapi-validator-cli
git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed [skip ci] "
git push -fq origin master > /dev/null
echo -e "Done\n"