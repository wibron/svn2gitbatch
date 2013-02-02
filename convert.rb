# List all your repositories
repos = ['testrepo', 'Another_repo']

# Set the base-url for all repositories
base_url = 'https://svn.company.com:88/svn/'
config = 'users.txt'

repos.each do |repo|
  system("git svn clone --stdlayout --authors-file=#{config} #{base_url}#{repo}/ #{repo}")
end
