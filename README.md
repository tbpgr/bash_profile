bash_profile Cookbook
=====================
* create .bash_profile at /home/vagrant
* if you want to change .bash_profile, you can change [./files/default/.bash_profile]
* you have to set data bags - users{id, name, group, password}.

Requirements
------------
#### packages
- `vim` - alias vi='vim' require install vim.

Attributes
----------
nothing

Usage
-----
#### bash_profile::default
Just include `bash_profile` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[bash_profile]"
  ]
}
```

if you use vagrant, you must write Vagrantfile:

```ruby
config.vm.provision :chef_solo do |chef|
  chef.add_recipe "bash_profile"
end
```

License and Authors
-------------------
Authors: tbpgr
