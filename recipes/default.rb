#
# Cookbook Name:: oraprep_fusion
# Recipe:: default
#
# Copyright 2014, San Diego State University
#
# All rights reserved - Do Not Redistribute
#
 
include_recipe 'sysctl'

include_recipe 'oraprep_fusion::oracle_user_config'

sysctl_param  'kernel.shmmax' do
   value '4294967295'
end

yum_package "binutils" do
  action :install
end

yum_package "compat-libstdc++-33" do
  action :install
end

yum_package "compat-libstdc++-33" do
  arch "i386"
  action :install
end

yum_package "elfutils-libelf" do
  action :install
end

yum_package "elfutils-libelf-devel" do
  action :install
end

yum_package "gcc" do
  action :install
end

yum_package "gcc-c++" do
  action :install
end

yum_package "glibc" do
  action :install
end

yum_package "glibc" do
  action :install
  arch "i686"
end
 
yum_package "glibc-common" do
  action :install
end

yum_package "glibc-devel" do
  action :install
end

yum_package "glibc-devel" do
  action :install
  arch "i386"
end

yum_package "libaio" do
  action :install
end

yum_package "libaio" do
    action :install
    arch "i386"
end

yum_package "libaio-devel" do
  action :install
end

yum_package "libgcc" do
  action :install
end

yum_package "libgcc" do
    action :install
    arch "i386"
end

yum_package "libstdc++" do
  action :install
end

yum_package "libstdc++" do
    action :install
    arch "i386"
end
 
yum_package "libstdc++-devel" do
  action :install
end
 
yum_package "make" do
  action :install
end

yum_package "openmotif" do
  action :install
end

yum_package "openmotif" do
  action :install
  arch "i386"
end

yum_package "openmotif22" do
  action :install
end

yum_package "openmotif22" do
    action :install
    arch "i386"
end
 
yum_package "redhat-lsb" do
  action :install
end
 
yum_package "sysstat" do
  action :install
end

yum_package "xorg-x11-utils" do
  action :install
end
