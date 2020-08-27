+++
title = "在Linux上安装HL-1218w的驱动"
date = 2020-08-28T01:05:23+08:00
tags = ["linux,brother,打印机,驱动"]
categories = ["family"]
draft = false
+++

# 在Linux上安装HL-1218w的驱动

## Step1. Download the tool.(linux-brprinter-installer-*.*.*-*.gz)

The tool will be downloaded into the default "Download" directory.

(The directory location varies depending on your Linux distribution.)

e.g. /home/(LoginName)/Download

## Step2. Open a terminal window.

## Step3. Go to the directory you downloaded the file to in the last step. By using the cd command.

e.g. 

``` 
cd Downloads 
```

## Step4. Enter this command to extract the downloaded file:

```
gunzip linux-brprinter-installer-*.*.*-*.gz
```
e.g. gunzip linux-brprinter-installer-2.1.1-1.gz


## Step5. Get superuser authorization with the "su" command or "sudo su" command.

## Step6. Run the tool:

```
bash linux-brprinter-installer-*.*.*-* Brother machine name
```
e.g. bash linux-brprinter-installer-2.1.1-1 HL-1218W

## Step7. The driver installation will start. Follow the installation screen directions.

When you see the message "Will you specify the DeviceURI ?",

For USB Users: Choose N(No)

For Network Users: Choose Y(Yes) and DeviceURI number.

The install process may take some time. Please wait until it is complete.