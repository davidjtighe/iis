#
# Author:: Kendrick Martin (kendrick.martin@webtrends.com>)
# Cookbook Name:: iis
# Resource:: app
#
# Copyright:: 2011, Webtrends Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :add, :delete, :config
default_action :add

attribute :site_name, kind_of: String, name_attribute: true
attribute :path, kind_of: String, default: '/'
attribute :application_pool, kind_of: String
attribute :physical_path, kind_of: String
attribute :enabled_protocols, kind_of: String
attribute :default_documents, kind_of: Array, default: []
attribute :mime_maps, kind_of: Array, default: []

attribute :preload_enabled, :kind_of => [TrueClass, FalseClass], :default => false
attr_accessor :exists, :running
