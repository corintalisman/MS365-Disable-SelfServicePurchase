# MS365 Disable SelfServicePurchase

Quick and dirty PowerShell script to disable the late 2024 feature that allows users to start certain product trials and purchase products on the MS365 tenant.

## Requirements

 * PowerShell
 * Local machine admin rights
 * Global Admin rights on the target MS365 tenant

## FAQ

**Q:** Is this safe to run?

**A:** No! Are you crazy? Oh, I guess you are since you're here. While I'd like to say yes, the real answer is that you should read through the script and make sure this it will do all the things *you* want it to do.

&nbsp;

**Q:** Can I run the script repeatedly?

**A:** Yes.

&nbsp;

**Q:** Are there any requirements?

**A:** You need PowerShell, local admin rights, and Global Admin rights on the MS365 tenant you want to modify.

&nbsp;

**Q:** I've run the script and it did something I don't like. Fix it!

**A:** No, I will not fix your computer(s). This script is provided as is and is documented here as well as within the script files. Remember what I said when you asked if it was safe to run? Yeah. If you don't know what this is going to do, *don't run it!*

&nbsp;

**Q:** How long will you support these scripts?

**A:** As long as I can tolerate Windows 10 and 11. I've been migrating my data and default applications to things that I can use on any OS and will be shifting to some flavor of Linux hopefully by the end of 2022. That said, I'll still support Windows 10 in my occupation and I'll carry on dealing with it there.

## Usage

Right click the file and click "Run with PowerShell". If it's the system one, it'll ask you to provide admin rights to elevate.

If you want to use it in startup scripts or group policy deployment, you're on your own.
