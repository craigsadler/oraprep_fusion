oraprep_fusion Cookbook
=======================
This cookbook makes your RHEL 5 host ready for Oracle Fusion Installation.

Requirements
------------
#### cookbooks
 sysctl

Attributes
----------

e.g.
#### oraprep_fusion::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['oraprep_fusion']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### oraprep_fusion::default

e.g.
Just include `oraprep_fusion` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[oraprep_fusion]"
  ]
}
```

Contributing
------------
License and Authors
-------------------
Authors: TODO: List authors
