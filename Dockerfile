FROM node:latest
COPY nodejs-project ./
CMD ["npm", "start"]
EXPOSE 3000 

