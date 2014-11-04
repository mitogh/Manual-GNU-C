set :markdown_engine, :redcarpet
set :markdown, 
  :fenced_code_blocks => true, 
   autolink: true,
  :smartypants => true
set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'
# Build-specific configuration
configure :build do
end

# github deploy
activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true
  deploy.branch   = "gh-pages"
end
