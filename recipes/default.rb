#
# Cookbook Name:: hackday
# Recipe:: default
#
# Copyright (C) 2014 Atalanta Systems Ltd
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'minecraft'
include_recipe 'sudo'
include_recipe 'user'


user_account 'snsdk' do
  comment 'Stephen and Daniel'
  home '/home/snsdk'
  shell '/bin/bash'
  password '$1$PVRBogDo$A5PS3dW3gK9rjujPjDWdQ.'
end

service 'iptables' do
  action [:disable, :stop]
end
