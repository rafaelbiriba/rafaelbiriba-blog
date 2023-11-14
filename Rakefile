task :server do
  sh "open 'http://127.0.0.1:4000/blog/' && bundle exec jekyll serve --host 0.0.0.0 -c config/jekyll_config.yml --watch --drafts"
end

task :publish do
  ARGV.shift

  sh "bundle exec jekyll publish -c config/jekyll_config.yml #{ARGV.first}"
end

desc "Compile production jekyll"
task :compile_production do
  sh "rm -rf _site_production"
  sh "bundle exec jekyll build -c config/jekyll_config.yml,config/jekyll_config_production.yml"
  sh "cp -nR _wordpress_deprecated/* _site_production/" 
end