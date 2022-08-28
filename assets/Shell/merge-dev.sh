#!/bin/sh
echo -e "\e[36m[== Pull dev ==]\e[m"
git pull origin dev
echo -e "\e[36m[== Pull master ==]\e[m"
git pull origin master
echo -e "\e[36m[== Push dev ==]\e[m"
git push origin dev
echo -e "\e[36m[== Checkout master ==]\e[m"
git checkout master
echo -e "\e[36m[== Merge dev ==]\e[m"
git merge dev
echo -e "\e[36m[== Pull master ==]\e[m"
git pull origin master
echo -e "\e[36m[== Push master==]\e[m"
git push origin master
echo -e "\e[36m[== Checkout dev ==]\e[m"
git checkout dev
echo -e "\e[32m[== Finish ==]\e[m"
