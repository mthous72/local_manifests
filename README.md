Guide for building

This assumes that:
	A: You have tried to build something in the past.
	B: That you have at least some rudimentary knowledge of Linux.
	C: That you aren't afraid to dig deeper and ask questions (but not of
		me, as I know almost as little as you I'd wager)
	D: That you have a freakish amount of spare time to try to help out

1st: You must have an android development environment set up.  I suggest
	http://forum.xda-developers.com/showthread.php?t=2224142
2nd: If you are going to try to play along at home with my changes, you
	probably should get a handle on github.
	Try http://help.github.com/catagories/54/articles
3rd: If you are going to try to clean up this specific build, you'll need to
	pull the same sources I am.

Create the Directories

You will need to set up some directories in your build environment.
To create them:
mkdir -p ~/bin
mkdir -p ~/android/system

Install the Repository

Enter the following to download make executable the "repo" binary:
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

NOTE: You may need to reboot for these changes to take effect.

Now enter the following to initialize the repository:
cd ~/android/system/
repo init -u git://github.com/CyanogenMod/android.git -b CM-10.1
wget https://github.com/mthous72/local_manifests/local_manifest.xml -O .repo/local_manifests/local_manifest.xml
repo sync -j16 -f

To Build CM

cd ~/android/system
. build/envsetup.sh
brunch a700

See what errors you come up with and feel free to commit changes to the github.

mthous01
