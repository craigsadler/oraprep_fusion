## Settings specific to the Oracle user.
default[:oraprep_fusion][:user][:uid] = 500 
default[:oraprep_fusion][:user][:gid] = 502 
default[:oraprep_fusion][:user][:shell] = '/bin/bash'
default[:oraprep_fusion][:user][:sup_grps] = {'dba' => 503 }
default[:oraprep_fusion][:user][:pw_set] = false
default[:oraprep_fusion][:user][:edb] = 'oracle'
default[:oraprep_fusion][:user][:edb_item] = 'foo'


 default[:oraprep_fusion][:ora_base] = '/u01/app/oracle'
 default[:oraprep_fusion][:ora_inventory] = '/u01/app/oracle/oraInventory'

