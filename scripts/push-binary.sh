git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"

git add -A
git remote rm origin
git remote add origin https://gidsi:$GITHUB_API_KEY@github.com/gidsi/spaceapi-validator-cli
git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed [skip ci]"
git push origin master > /dev/null
echo -e "Done\n"