# lsc
screen changer for linux writen in bash. 

# uses 
* ctv
* xrandr

# Install 
chmod +x install. (this will cp the lsc to /bin/ with root perm.

# Usage

* type : slc 
* Enter desired size {size size refresh_rate >> 1600 1200 60.00}
* Copy the generated modeline string {"sizexsize_refresh_rate" ........"}
* Enter the copied line. 
* Copy the newmode {"sizexsize_refresh_rate"}
* Enter the copied line

Wait and there ya go. 
Maybe needs manual display opening to make screens 2 independed once, and not clones.
Maybe it can be implented in bash that part but for now thats not covered. 
