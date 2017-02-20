ignoreflock is a wrapper with LD_PRELOAD library that disables flock function.


On local Linux filesystems, POSIX locks and BSD locks are invisible to one another.

But on network filesystems flock implemented open POSIX locks and
have intersections with fcntl style locking.

Linux version of 1C 8.3 uses flock and POSIX lock simulateously, so on network file system it needs flock
ignoring.

Example:
$ ignoreflock /opt/1C/v8.3/x86_64/1cestart

See also https://bugs.etersoft.ru/show_bug.cgi?id=11666
