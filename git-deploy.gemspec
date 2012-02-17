# encoding: utf-8
Gem::Specification.new do |gem|
  gem.name    = 'git-deploy'
  gem.version = '5.3'
  gem.executables = %w[ git-deploy ]
  
  gem.add_dependency 'thor'
  gem.add_dependency 'net-ssh'
  gem.add_dependency 'net-scp'
  
  gem.summary = "Simple git push-based application deployment"
  gem.description = "A tool to install useful git hooks on your remote repository to enable push-based, Heroku-like deployment on your host."
  
  gem.authors  = ['Mislav Marohnić','Stoyan Zhekov']
  gem.email    = 'zh@zhware.net'
  gem.homepage = 'https://github.com/zh/git-deploy'
  
  gem.files = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*'] & `git ls-files`.split("\n")
end
