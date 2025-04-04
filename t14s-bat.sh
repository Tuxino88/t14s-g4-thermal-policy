#!/bin/sh

#cTDP
echo 12000000 | sudo tee /sys/class/powercap/intel-rapl/intel-rapl:0/constraint_0_power_limit_uw
echo 25000000 | sudo tee /sys/class/powercap/intel-rapl/intel-rapl:0/constraint_1_power_limit_uw
echo 35000000 | sudo tee /sys/class/powercap/intel-rapl/intel-rapl:0/constraint_2_power_limit_uw
echo 12000000 | sudo tee /sys/class/powercap/intel-rapl-mmio:0/constraint_0_power_limit_uw
echo 25000000 | sudo tee /sys/class/powercap/intel-rapl-mmio:0/constraint_1_power_limit_uw
#echo 127926272 | sudo tee /sys/class/powercap/intel-rapl/intel-rapl:0/constraint_0_time_window_us
#echo 2440 | sudo tee /sys/class/powercap/intel-rapl/intel-rapl:0/constraint_1_time_window_us

#CPU
echo powersave | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
echo balance_power | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference
#echo 15 | sudo tee /sys/devices/system/cpu/cpu*/power/energy_perf_bias
#echo 0 | sudo tee /sys/devices/system/cpu/intel_pstate/min_perf_pct
#echo 30 | sudo tee /sys/devices/system/cpu/intel_pstate/max_perf_pct
#echo 1 | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo
#echo 0 | sudo tee /sys/devices/system/cpu/intel_pstate/hwp_dynamic_boost
#echo 0 | sudo tee /proc/sys/kernel/nmi_watchdog
echo low-power | sudo tee /sys/firmware/acpi/platform_profile 

#GPU
#echo 700 | sudo tee /sys/class/drm/card1/gt_max_freq_mhz
#echo 900 | sudo tee /sys/class/drm/card1/gt_boost_freq_mhz

#PM
echo auto | sudo tee /sys/bus/i2c/devices/i2c-5/device/power/control
echo auto | sudo tee /sys/bus/i2c/devices/i2c-7/device/power/control
echo auto | sudo tee /sys/bus/i2c/devices/i2c-9/device/power/control
echo auto | sudo tee /sys/bus/i2c/devices/i2c-2/device/power/control
echo auto | sudo tee /sys/bus/i2c/devices/i2c-4/device/power/control
echo auto | sudo tee /sys/bus/i2c/devices/i2c-15/device/power/control
echo auto | sudo tee /sys/bus/i2c/devices/i2c-6/device/power/control
echo auto | sudo tee /sys/bus/i2c/devices/i2c-8/device/power/control
echo auto | sudo tee /sys/bus/i2c/devices/i2c-1/device/power/control
echo auto | sudo tee /sys/bus/i2c/devices/i2c-3/device/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:08.0/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:0d.0/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:1f.0/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:07.2/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:04.0/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:14.3/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:0d.3/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:07.0/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:1f.5/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:1f.3/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:15.0/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:06.0/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:16.3/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:14.2/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:04:00.0/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:02.0/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:14.0/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:1f.4/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:0d.2/power/control
echo auto | sudo tee /sys/bus/pci/devices/0000:00:00.0/power/control
echo auto | sudo tee /sys/block/nvme0n1/device/power/control

#AHCI
echo disabled | sudo tee /sys/class/net/wlp0s20f3/device/power/wakeup
echo disabled | sudo tee /sys/bus/usb/devices/usb3/power/wakeup
echo disabled | sudo tee /sys/bus/usb/devices/usb1/power/wakeup
echo disabled | sudo tee /sys/bus/usb/devices/3-2/power/wakeup
echo disabled | sudo tee /sys/bus/usb/devices/3-9/power/wakeup
echo disabled | sudo tee /sys/bus/usb/devices/usb4/power/wakeup
#echo disabled | sudo tee /sys/bus/usb/devices/3-10/power/wakeup
echo disabled | sudo tee /sys/bus/usb/devices/usb2/power/wakeup
echo disabled | sudo tee /sys/bus/usb/devices/3-3/power/wakeup

#ASPM
echo powersave | sudo tee /sys/module/pcie_aspm/parameters/policy
echo 1 | sudo tee /sys/module/snd_hda_intel/parameters/power_save
#echo 1500 | sudo tee /proc/sys/vm/dirty_writeback_centisecs

