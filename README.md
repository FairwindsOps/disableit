# disableit
A simple loop to disable some executable

# Why tho?
Sometimes you need to just turn something off. Relevant example: kubelet runs `du` on every container on a hard-coded interval to get disk usage statistics for cadvisor. For large images, that `du` process takes long enough and uses enough iops that it can use up the whole burst volume on an EBS volume. Use this to quickly disable `du`, disabling disk metrics while preserving iops.
