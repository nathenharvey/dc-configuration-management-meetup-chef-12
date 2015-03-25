#
# Cookbook Name:: apache
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'apache::default' do

  context 'When all attributes are default, on an unspecified platform' do

    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end
    
    it 'installs apache' do
      expect(chef_run).to install_package "httpd"
    end
    
    it "enables apache on boot" do
      expect(chef_run).to enable_service "httpd"
    end
    
    
    
    
    
    
    
    
    

  end




context 'When all attributes are default, on Ubuntu' do

  let(:chef_run) do
    runner = ChefSpec::ServerRunner.new(:platform => 'ubuntu', :version => '12.04')
    runner.converge(described_recipe)
  end

  it 'converges successfully' do
    chef_run # This should not raise an error
  end
  
  it 'installs apache' do
    expect(chef_run).to install_package "apache2"
  end
  
  it "enables apache on boot" do
    expect(chef_run).to enable_service "apache2"
  end
end
end