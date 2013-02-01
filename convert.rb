repos = ['testrepo', 'Another_repo']

# Set the base-url for all repositories
base_url = 'https://svn.company.com:88/svn/'
puts 'Enter config file for users: '
users = gets.chomp

repos.each do |repo|
  system("git svn clone --stdlayout --authors-file=#{users} #{base_url}#{repo}/ #{repo}")
end