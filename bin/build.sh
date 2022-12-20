cd "$(dirname $0)" || exit
cd ..
bundle config  mirror.https://rubygems.org/  https://mirrors.tuna.tsinghua.edu.cn/rubygems
bundle install
bundle exec jekyll serve --drafts --trace
