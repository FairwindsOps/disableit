# disableit
A simple loop to disable some executable

# Why tho?
The problem being solved is kubelet runs `du` on every container on a hard-coded interval to get disk usage statistics for cadvisor. For large images, that du process takes long enough and uses enough iops that it uses up the whole EBS volume’s burst capacity and then when that is gone, keeps running and just destroys nodes. we just run that to make `du` non-executable so kubelet just fails to get those metrics and the iops are preserved
