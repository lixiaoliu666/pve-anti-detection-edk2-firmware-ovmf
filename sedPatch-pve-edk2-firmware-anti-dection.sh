#!/bin/bash
#适用于给pve-edk2-firmware里面的edk2打补丁使用，输出ovmf包。直接放本脚本在edk2目录下，在make包之前在edk2目录运行一次本脚本就是，运行后你可以继续使用git工具生成edk2具体版本的patch文件
#作者 李晓流  20240824出品
brand="Dell" #这里修改品牌，仅4个大写英文字母
echo "开始sed工作"
sed -i 's/0x20202020324B4445/0x20202020204c5450/g' MdeModulePkg/MdeModulePkg.dec
sed -i 's/QemuFwCfgAcpiPlatform/'${brand}'FwCfgAcpiPlatform/g' OvmfPkg/AcpiPlatformDxe/AcpiPlatformDxe.inf
sed -i 's/= VirtioFdtDxe/= '${brand}'ioFdtDxe/g' OvmfPkg/Fdt/VirtioFdtDxe/VirtioFdtDxe.inf
sed -i 's/BASE_NAME                      = QemuKernelLoaderFsDxe/BASE_NAME                      = '${brand}'KernelLoaderFsDxe/g' OvmfPkg/QemuKernelLoaderFsDxe/QemuKernelLoaderFsDxe.inf
sed -i 's/= QemuRamfbDxe/= '${brand}'RamfbDxe/g' OvmfPkg/QemuRamfbDxe/QemuRamfbDxe.inf
sed -i 's/= QemuVideoDxe/= '${brand}'VideoDxe/g' OvmfPkg/QemuVideoDxe/QemuVideoDxe.inf
sed -i 's/BASE_NAME                      = VirtHstiDxe/BASE_NAME                      = '${brand}'HstiDxe/g' OvmfPkg/VirtHstiDxe/VirtHstiDxe.inf
sed -i 's/BASE_NAME                      = Virtio10/BASE_NAME                      = '${brand}'io10/g' OvmfPkg/Virtio10Dxe/Virtio10.inf
sed -i 's/= VirtioBlkDxe/= '${brand}'ioBlkDxe/g' OvmfPkg/VirtioBlkDxe/VirtioBlk.inf
sed -i 's/= VirtioFsDxe/= '${brand}'ioFsDxe/g' OvmfPkg/VirtioFsDxe/VirtioFsDxe.inf
sed -i 's/= VirtioGpuDxe/= '${brand}'ioGpuDxe/g' OvmfPkg/VirtioGpuDxe/VirtioGpu.inf
sed -i 's/= VirtioKeyboardDxe/= '${brand}'ioKeyboardDxe/g' OvmfPkg/VirtioKeyboardDxe/VirtioKeyboard.inf
sed -i 's/= VirtioNetDxe/= '${brand}'ioNetDxe/g' OvmfPkg/VirtioNetDxe/VirtioNet.inf
sed -i 's/= VirtioPciDeviceDxe/= '${brand}'ioPciDeviceDxe/g' OvmfPkg/VirtioPciDeviceDxe/VirtioPciDeviceDxe.inf
sed -i 's/= VirtioRngDxe/= '${brand}'ioRngDxe/g' OvmfPkg/VirtioRngDxe/VirtioRng.inf
sed -i 's/= VirtioScsiDxe/= '${brand}'ioScsiDxe/g' OvmfPkg/VirtioScsiDxe/VirtioScsi.inf
sed -i 's/= VirtioSerialDxe/= '${brand}'ioSerialDxe/g' OvmfPkg/VirtioSerialDxe/VirtioSerial.inf
sed -i 's/= VirtNorFlashDxe/= '${brand}'NorFlashDxe/g' OvmfPkg/VirtNorFlashDxe/VirtNorFlashDxe.inf
sed -i 's/= XenAcpiPlatform/= '${brand}'AcpiPlatform/g' OvmfPkg/XenAcpiPlatformDxe/XenAcpiPlatformDxe.inf
sed -i 's/BASE_NAME                 = XenBusDxe/BASE_NAME                 = '${brand}'BusDxe/g' OvmfPkg/XenBusDxe/XenBusDxe.inf
sed -i 's/= XenIoPciDxe/= '${brand}'IoPciDxe/g' OvmfPkg/XenIoPciDxe/XenIoPciDxe.inf
sed -i 's/= XenIoPvhDxe/= '${brand}'IoPvhDxe/g' OvmfPkg/XenIoPvhDxe/XenIoPvhDxe.inf
sed -i 's/= XenPlatformPei/= '${brand}'PlatformPei/g' OvmfPkg/XenPlatformPei/XenPlatformPei.inf
sed -i 's/BASE_NAME                 = XenPvBlkDxe/BASE_NAME                 = '${brand}'PvBlkDxe/g' OvmfPkg/XenPvBlkDxe/XenPvBlkDxe.inf
sed -i 's/= XenResetVector/= '${brand}'ResetVector/g' OvmfPkg/XenResetVector/XenResetVector.inf
sed -i 's/BASE_NAME                      = XenSmbiosPlatformDxe/BASE_NAME                      = '${brand}'SmbiosPlatformDxe/g' OvmfPkg/SmbiosPlatformDxe/XenSmbiosPlatformDxe.inf
sed -i 's/BASE_NAME                      = XenIoMmioLib/BASE_NAME                      = '${brand}'IoMmioLib/g' OvmfPkg/Library/XenIoMmioLib/XenIoMmioLib.inf
sed -i 's/BASE_NAME                      = XenPlatformLib/BASE_NAME                      = '${brand}'PlatformLib/g' OvmfPkg/Library/XenPlatformLib/XenPlatformLib.inf
sed -i 's/BASE_NAME                      = QemuFwCfgDxeLib/BASE_NAME                      = '${brand}'FwCfgDxeLib/g' OvmfPkg/Library/QemuFwCfgLib/QemuFwCfgDxeLib.inf
sed -i 's/BASE_NAME                      = QemuFwCfgLibNull/BASE_NAME                      = '${brand}'FwCfgLibNull/g' OvmfPkg/Library/QemuFwCfgLib/QemuFwCfgLibNull.inf
sed -i 's/BASE_NAME                      = QemuFwCfgLib/BASE_NAME                      = '${brand}'FwCfgLib/g' OvmfPkg/Library/QemuFwCfgLib/QemuFwCfgMmioDxeLib.inf
sed -i 's/BASE_NAME                      = QemuFwCfgPeiLib/BASE_NAME                      = '${brand}'FwCfgPeiLib/g' OvmfPkg/Library/QemuFwCfgLib/QemuFwCfgMmioPeiLib.inf
sed -i 's/BASE_NAME                      = QemuFwCfgPeiLib/BASE_NAME                      = '${brand}'FwCfgPeiLib/g' OvmfPkg/Library/QemuFwCfgLib/QemuFwCfgPeiLib.inf
sed -i 's/BASE_NAME                      = QemuFwCfgSecLib/BASE_NAME                      = '${brand}'FwCfgSecLib/g' OvmfPkg/Library/QemuFwCfgLib/QemuFwCfgSecLib.inf
sed -i 's/BASE_NAME                      = XenHypercallLib/BASE_NAME                      = '${brand}'HypercallLib/g' OvmfPkg/Library/XenHypercallLib/XenHypercallLib.inf
sed -i 's/BASE_NAME                      = QemuBootOrderLib/BASE_NAME                      = '${brand}'BootOrderLib/g' OvmfPkg/Library/QemuBootOrderLib/QemuBootOrderLib.inf
sed -i 's/BASE_NAME                      = VirtioMmioDeviceLib/BASE_NAME                      = '${brand}'ioMmioDeviceLib/g' OvmfPkg/Library/VirtioMmioDeviceLib/VirtioMmioDeviceLib.inf
sed -i 's/BASE_NAME                      = X86QemuLoadImageLib/BASE_NAME                      = X86'${brand}'LoadImageLib/g' OvmfPkg/Library/X86QemuLoadImageLib/X86QemuLoadImageLib.inf
sed -i 's/BASE_NAME                      = XenRealTimeClockLib/BASE_NAME                      = '${brand}'RealTimeClockLib/g' OvmfPkg/Library/XenRealTimeClockLib/XenRealTimeClockLib.inf
sed -i 's/BASE_NAME                      = XenConsoleSerialPortLib/BASE_NAME                      = '${brand}'ConsoleSerialPortLib/g' OvmfPkg/Library/XenConsoleSerialPortLib/XenConsoleSerialPortLib.inf
sed -i 's/BASE_NAME                      = QemuFwCfgSimpleParserLib/BASE_NAME                      = '${brand}'FwCfgSimpleParserLib/g' OvmfPkg/Library/QemuFwCfgSimpleParserLib/QemuFwCfgSimpleParserLib.inf
sed -i 's/BASE_NAME                      = VirtNorFlashStaticLib/BASE_NAME                      = '${brand}'NorFlashStaticLib/g' OvmfPkg/RiscVVirt/Library/VirtNorFlashPlatformLib/VirtNorFlashStaticLib.inf
sed -i 's/BASE_NAME                      = VirtNorFlashDeviceTreeLib/BASE_NAME                      = '${brand}'NorFlashDeviceTreeLib/g' OvmfPkg/RiscVVirt/Library/VirtNorFlashPlatformLib/VirtNorFlashDeviceTreeLib.inf
sed -i 's/BASE_NAME                      = BaseQemuFwCfgS3LibNull/BASE_NAME                      = Base'${brand}'FwCfgS3LibNull/g' OvmfPkg/Library/QemuFwCfgS3Lib/BaseQemuFwCfgS3LibNull.inf
sed -i 's/BASE_NAME                      = DxeQemuFwCfgS3LibFwCfg/BASE_NAME                      = Dxe'${brand}'FwCfgS3LibFwCfg/g' OvmfPkg/Library/QemuFwCfgS3Lib/DxeQemuFwCfgS3LibFwCfg.inf
sed -i 's/BASE_NAME                      = PeiQemuFwCfgS3LibFwCfg/BASE_NAME                      = Pei'${brand}'FwCfgS3LibFwCfg/g' OvmfPkg/Library/QemuFwCfgS3Lib/PeiQemuFwCfgS3LibFwCfg.inf
sed -i 's/BASE_NAME                      = GenericQemuLoadImageLib/BASE_NAME                      = Generic'${brand}'LoadImageLib/g' OvmfPkg/Library/GenericQemuLoadImageLib/GenericQemuLoadImageLib.inf
echo "结束sed工作"
