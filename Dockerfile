FROM gyoridavid/short-video-maker:latest-tiny

RUN npm install cors


RUN sed -i "0,/const app =/s//const cors = require('cors');\nconst app =/" src/index.js \
 && sed -i "/const app =.*/a app.use(cors());" src/index.js

EXPOSE 3123

CMD ["npm", "run", "start"]