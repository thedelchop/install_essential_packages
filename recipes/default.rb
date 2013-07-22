execute 'Setup localte as US UTF8' do
  command "update-locale LANG='en_US.utf8' LC_ALL='en_US.utf8'"
end

node.default[:packages].each do |p|
  package p do
    action :install
  end
end
