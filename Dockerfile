FROM node:20-alpine
WORKDIR /li_jason_ui_garden
COPY li_jason_ui_garden/package*.json ./
RUN npm install --legacy-peer-deps
# RUN npm run build
COPY li_jason_ui_garden/ .
EXPOSE 8083
CMD ["npm", "run", "storybook"]