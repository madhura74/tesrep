FROM node:18

WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN cd frontend
RUN npm install

ENV NODE_ENV=production
ENV MONGO_URI=mongodb+srv://madhuraadiga74:madhuraadiga74@cluster0.nbppypv.mongodb.net
ENV JWT_SECRET=abc123
ENV PAYPAL_CLIENT_ID=1234
ENV PAYPAL_APP_SECRET=1234
ENV PAYPAL_API_URL=https://api-m.sandbox.paypal.com
ENV PAGINATION_LIMIT=8

RUN npm run data:import

EXPOSE 3000
EXPOSE 5000

CMD ["npm", "run", "dev"]