echo !! Build
docker build --tag progit-ruby:201605 .

echo !! Run
docker run -i -t --name progit2-ko -v $(dirname `pwd`):/progit2-ko progit-ruby:201605 "/bin/bash"

echo !! Clear
docker rm progit2-ko