# Guides

## Issues installing packages

Generally the easiest fix appears to be running `termux-change-repo` and changing all repositories to something else.

## SSH into Termux

[SSH into Termux from Your Computer](https://joeprevite.com/ssh-termux-from-computer/)

# Troubleshooting

`CANNOT LINK EXECUTABLE "/data/data/com.termux/files/usr/libexec/git-core/git-remote-https": library "libssl.so.1.1" not found: needed by /data/data/com.termux/files/usr/lib/libcurl.so in namespace (default)
Can be fixed with
`export LD_LIBRARY_PATH=/data/data/com.termux/files/usr/lib/openssl-1.1`
