
group 'oinstall' do
    gid node[:oraprep_fusion][:user][:gid]
end

user 'oracle' do
    supports :manage_home => false
    uid node[:oraprep_fusion][:user][:uid]
    gid node[:oraprep_fusion][:user][:gid]
    home node[:oraprep_fusion][:ora_base]
    shell node[:oraprep_fusion][:user][:shell]
    comment 'Oracle User'
end

template "/u01/app/oracle/.profile" do
    action :create_if_missing
    source 'ora_profile.erb'
    owner 'oracle'
    group 'oinstall'
end

