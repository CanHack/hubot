FROM node
WORKDIR /code
ADD . /code
CMD ["bin/hubot", "-a", "telegram", "-n", "Jarvis"]
