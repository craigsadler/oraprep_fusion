
group 'oinstall' do
    gid node[:oraprep_fusion][:user][:gid]
end
execute "doit" do
  command <<-EOF
  mkdir -pv /u01/app/oracle
  chown -R oracle.oinstall /u01/app/oracle
EOF
  creates '/u01/app/oracle'
end

user 'oracle' do
    supports :manage_home => true
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

yum_package File.basename(node[:oraprep_fusion][:user][:shell])

# Configure the oracle user.
# Make it a member of the appropriate supplementary groups, and
# ensure its environment will be set up properly upon login.
 node[:oraprep_fusion][:user][:sup_grps].each_key do |grp|
   group grp do
   gid node[:oraprep_fusion][:user][:sup_grps][grp]
   members ['oracle']
   append true
 end
end


# Set resource limits for the oracle user.
cookbook_file '/etc/security/limits.d/oracle.conf' do
  mode '0644'
  source 'ora_limits'
end

# Color setup for ls.
execute 'gen_dir_colors' do
   command '/usr/bin/dircolors -p > /u01/app/oracle/.dir_colors'
   user 'oracle'
   group 'oinstall'
   cwd '/u01/app/oracle'
   creates '/u01/app/oracle/.dir_colors'
   only_if {node[:oraprep_fusion][:user][:shell] != '/bin/bash'}
end
