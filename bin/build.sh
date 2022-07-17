cd "$(dirname $0)" || exit
cd ..
bundle install
bundle exec jekyll serve --drafts --trace
