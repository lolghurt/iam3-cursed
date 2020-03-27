#!/bin/sh
https://github.com/lolghurt/iam3-cursed/blob/master/.circleci/zipMod.sh
# CHANGE ME
modFolderName="IAM-Part-3-Cursed"

version=$(git describe --tags)
zipName=$modFolderName-$version.zip
git archive master -o $zipName --prefix $modFolderName-$version/
mkdir -p ./artifacts
mv ./$zipName ./artifacts/
