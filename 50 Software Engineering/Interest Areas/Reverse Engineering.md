# Ever Fit

I was able to extract some data from Ever Fit using `mitm` and the following guide:
https://howdoitestthat.com/export-curl-from-mitm-proxy

# Resources

- [Reverse engineering the Facebook Messenger API](https://intuitiveexplanations.com/tech/messenger)
- [Introduction · Reverse Engineering](https://0xinfection.github.io/reversing/)

# Basic MITM Steps

- Install mitm-proxy on a laptop (`pip install mitm-proxy`)
- Run `mitmweb`
- It will show you an address of the proxy along the lines of *:8080
- Find out the local address of your machine by using `ipconfig getifaddr en0`
- Install the mitm-proxy certificate on your phone
- Change the proxy of your wifi and select your local IP address and the port displayed when running the `mitmweb` application
- Download the original xapk
- Patch it using `apk-mitm` - You can use `npx` to get this
- Unzip the patched `.xapk` file on the phone and download the `.apk`
- You may have to uninstall the original app
