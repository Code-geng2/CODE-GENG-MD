FROM quay.io/sampandey001/secktor

RUN git clone https://github.com/codegengtech/codegeng-md.git /root/Venocybertech

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/codegengtech/node_modules

# Install dependencies
WORKDIR /root/codegengtech
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]
# IF YOU ARE MODIFYING THIS BOT DONT CHANGE THIS  RUN rm -rf /root/Venocybertech/node_modules
