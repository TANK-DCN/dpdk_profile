# Notes

- For r650, should use sock1 CPU and -n 2 for EAL config

```bash
sudo ./dpdk-helloworld -l 3,5,7,9 -n 2 -a 0000:ca:00.0
```

## Initialized

```bash
# Install mellanox driver
cd /proj/servelesslegoos-PG0/mlnx-en-5.8-4.1.5.0-ubuntu20.04-x86_64 || exit 1
sudo ./install --without-fw-update --dpdk --force
```

```bash
# config DPDK
cd /local/repository/dpdk-stable-19.11.6 || exit 1
meson setup build
cd build || exit 1
```

## Useful commands

```bash
# Get the hugepage size.
awk '/Hugepagesize/ {print $2}' /proc/meminfo

# Get the total huge page numbers.
awk '/HugePages_Total/ {print $2} ' /proc/meminfo

# Unmount the hugepages.
umount `awk '/hugetlbfs/ {print $2}' /proc/mounts`

# Create the hugepage mount folder.
mkdir -p /mnt/huge

# Mount to the specific folder.
mount -t hugetlbfs nodev /mnt/huge
```
