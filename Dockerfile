FROM node:18
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN cd frontend
RUN npm install
RUN npm run data:import
EXPOSE 3000
EXPOSE 5000
CMD ["npm", "run", "dev"]