echo !! Build
docker build --tag progit-ruby:201605 .

echo !! Run
docker run -t --name progit2-ko -v $(dirname `pwd`):/progit2-ko -w /progit2-ko progit-ruby:201605

echo !! Clear
docker rm progit2-ko