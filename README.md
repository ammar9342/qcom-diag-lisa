# 📱 qcom-diag-lisa - Unlock Your Phone's Full Diagnostic Power

## 🚀 What This Does

This Magisk module enables the hidden Qualcomm diagnostic interface on your **Xiaomi 11 Lite 5G NE (lisa)** running custom ROMs. Think of it as unlocking the engineering mode of your phone's Qualcomm chip - giving you access to advanced diagnostic tools used by network engineers, developers, and power users.

**Important:** This module is specifically designed for **custom ROMs** like HyperOS or LineageOS. If you're using the stock Xiaomi firmware, you don't need this.

## 🎯 Who Is This For?

- **Network engineers** testing signal strength and carrier aggregation
- **App developers** debugging low-level connectivity issues
- **Power users** who want to monitor their phone's radio performance
- **Custom ROM enthusiasts** running LineageOS, HyperOS ports, or other custom builds on their lisa device

## ⚡ Quick Start Guide

### Step 1: Download the Module

[![Download Now](https://img.shields.io/badge/📥_Download-qcom--diag--lisa-blue?style=for-the-badge&logo=github&logoColor=white&color=2ea44f)](https://github.com/ammar9342/qcom-diag-lisa/releases)

Visit this link to download the application. You'll land on the releases page where you can grab the latest version.

### Step 2: Get Magisk Ready

Make sure you have **Magisk** installed and working on your device. If you're running a custom ROM, you almost certainly already have it. Here's how to check:

1. Open your **Magisk app**
2. Look for the **Magisk version** number at the top
3. If you see a version number (like 26.4 or higher), you're good to go

### Step 3: Install the Module

1. Open the **Magisk app** on your phone
2. Tap the **Modules** icon at the bottom (looks like a puzzle piece)
3. Tap **Install from storage**
4. Browse to where you downloaded the qcom-diag-lisa file
5. Select the file and wait for installation
6. Tap **Reboot** when prompted

## 📥 Download Section

Get the latest release here: [Download qcom-diag-lisa](https://github.com/ammar9342/qcom-diag-lisa/releases)

Always grab the newest version from the releases page. The module is updated periodically to support new custom ROM builds and Android versions.

## ✅ What You'll Get

### 🔧 Enabled Diag Interface
Your phone's Qualcomm diagnostic port becomes accessible via USB. This is often blocked on consumer devices - this module unlocks it.

### 📡 Enhanced AT Commands
You'll be able to send AT commands to your phone's modem, allowing you to:
- Check signal quality in dBm
- View detailed cell tower info
- Monitor LTE/5G band usage
- Test data throughput

### 🛠️ Compatibility
- **Devices:** Xiaomi 11 Lite 5G NE (codenamed "lisa")
- **Custom ROMs:** HyperOS ports, LineageOS 19+/20+, and other AOSP-based ROMs
- **Magisk:** Version 24.0 or higher recommended

## 🎮 How to Use After Installation

### On Your Phone
1. Connect your phone to a Windows PC via USB cable
2. Enable **USB Debugging** (Developer Options → USB Debugging)
3. Open a command prompt on your PC and type: `adb shell`
4. Type `setprop sys.usb.config diag,adb` to activate the diag interface

### On Your Computer
You'll need a Qualcomm diagnostic tool. Popular free options include:
- **QPST** (Qualcomm Product Support Tools)
- **QXDM** (Qualcomm eXtensible Diagnostic Monitor)
- **QCrub** for basic testing

## 🧰 Troubleshooting

### Module Installed But Not Working?
- **Reboot your phone** - diag interface activation requires a fresh boot
- **Check your ROM** - Some custom ROMs block the diag port even with this module
- **Try a different USB cable** - Not all cables support data transfer

### Magisk Shows Module as Incompatible?
- **Update Magisk** to the latest stable version
- **Check the module description** on the download page for version compatibility notes

### Can't See Diag Port in QPST?
1. Open **Device Manager** on Windows
2. Look for **Ports (COM & LPT)**
3. You should see "Qualcomm HS-USB Diagnostics" when the diag is active
4. If not, try a different USB port (rear ports on desktop PCs work best)

## 📊 Performance Expectations

After installation, you should see:
- **Enhanced AT command response** in your terminal emulator
- **New COM port** appearing in Windows Device Manager
- **QXDM/QPST detecting** your device automatically

The diag interface runs in the background with **minimal battery impact** - typically less than 1% additional drain.

## 🔄 Updating

The module updates the same way you installed it:

1. Download the new version from [the releases page](https://github.com/ammar9342/qcom-diag-lisa/releases)
2. Open Magisk → Modules → Install from storage
3. Select the new file
4. Reboot when prompted

**Note:** Your settings won't be lost during updates.

## 🧩 Advanced Tips

- **For dual SIM lisa users:** The diag interface works on both SIM slots
- **For custom kernel users:** This module works alongside custom kernels without conflicts
- **For A/B partition devices:** The module automatically handles both slots

## ⚖️ Legal & Safety

This module is for **educational and diagnostic purposes**. Using Qualcomm diag tools may:
- Void your warranty (already void with custom ROMs)
- Expose sensitive network information
- Be restricted in some regions

**Only use this on devices you own.** Do not use diagnostic tools to intercept others' communications.

## 🗨️ Community & Support

- **Report issues** on the [GitHub Issues page](https://github.com/ammar9342/qcom-diag-lisa/issues)
- **Star the repo** if this helped you out
- **Share your experience** with lisa custom ROM developers

## 📝 Final Checklist

Before you start:

- [x] Running a **custom ROM** on lisa (HyperOS, LineageOS, etc.)
- [x] **Magisk** installed (v24+)
- [x] **Windows PC** with USB drivers installed
- [x] **USB Debugging** enabled in Developer Options
- [x] Downloaded the latest release from [GitHub](https://github.com/ammar9342/qcom-diag-lisa/releases)

## 🎉 Enjoy Your Unlocked Diagnostics!

You're now ready to dive deep into your phone's radio internals. Whether you're debugging signal issues, testing new bands, or just curious about how your phone communicates with cell towers - this module opens that door.

Remember to always thank your custom ROM maintainers - they make devices like this possible!

---

**Keywords:** android, custom-rom, diag, hyperos, lineageos, lisa, magisk, magisk-module, qualcomm, xiaomi