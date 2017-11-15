nodemon -e scss -w "public/assets/src/css" -x "npm run styles" & \
nodemon -e js -w "public/assets/src/js" -x "npm run js" & \
nodemon -w "public/assets/src/images" -x "npm run images" & \
nodemon -w "public/assets/src/fonts" -x "npm run fonts" & \
browser-sync start -p http://moulinasbl.loc --no-open -f "craft/templates/**/*.html,public/assets/dist/**/*"