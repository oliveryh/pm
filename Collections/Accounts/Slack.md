# Code Snippets

## Run Slack in Developer Mode

`export SLACK_DEVELOPER_MENU=true && open -a /Applications/Slack.app`

# Extracting Conversation Previews

- https://piclo.slack.com/archives/C047CNSDHP1/p1691049668222279

```
curl 'https://piclo.slack.com/api/bookmarks.preview?_x_id=0dc1fd31-1694358647.832&_x_csid=AS66s0GOOeY&slack_route=T03J2UMQ7&_x_version_ts=1694180846&_x_frontend_build_type=current&_x_desktop_ia=3&_x_gantry=true&fp=1b' \
  -H 'authority: piclo.slack.com' \
  -H 'accept: */*' \
  -H 'accept-language: en-GB,en-US;q=0.9,en;q=0.8' \
  -H 'cache-control: no-cache' \
  -H 'content-type: multipart/form-data; boundary=----WebKitFormBoundary8z09BAzf3jCH5P7u' \
  -H 'cookie: b=e2f699c70fd3b5c8d527366a489624db; shown_ssb_redirect_page=1; ssb_instance_id=46d333f1-2ca1-59db-9687-4dad44c00041; shown_download_ssb_modal=1; show_download_ssb_banner=1; no_download_ssb_banner=1; tz=60; lc=1693989772; x=e2f699c70fd3b5c8d527366a489624db.1694356921; existing_users_hp={"launched":1694356922,"launch_count":1}; d-s=1694356948; d=xoxd-8QJUp0D%2Bsq5nEsedjY1zwZmKeaam5tQt2wwxFiuheaGmkW4KLDcBDpicL0odc4hWG3dq2KWKxcD3SZL0UbsS1jiOKzg4PZECldyTMlYEpn%2B2yN87dnbdx5S2BFtyycdGxoiQdpTeU8JOapIsrKHXDvLGZWOiV7KGlESYJdUXqqDmC2dBKBUtU8i9wI3h%2FuBEgcEKwiA%3D; OptanonConsent=isGpcEnabled=0&datestamp=Sun+Sep+10+2023+16%3A03%3A57+GMT%2B0100+(British+Summer+Time)&version=202211.1.0&isIABGlobal=false&hosts=&consentId=6a32d050-8887-4283-b139-adac39297e4c&interactionCount=1&landingPath=NotLandingPage&groups=1%3A1%2C3%3A0%2C2%3A0%2C4%3A0&AwaitingReconsent=false; web_cache_last_updated2a19d1fa6abb24c278d636dd8304ab54=1694358642137' \
  -H 'origin: https://app.slack.com' \
  -H 'pragma: no-cache' \
  -H 'sec-ch-ua: "Chromium";v="116", "Not)A;Brand";v="24", "Google Chrome";v="116"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "macOS"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-site' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36' \
  --data-raw $'------WebKitFormBoundary8z09BAzf3jCH5P7u\r\nContent-Disposition: form-data; name="token"\r\n\r\nxoxc-3614973823-2201582316839-5662902531509-4320efd9de3e8570312eccedf6a408cf6cd61bde6c171d35241c2c751a04e5cd\r\n------WebKitFormBoundary8z09BAzf3jCH5P7u\r\nContent-Disposition: form-data; name="link"\r\n\r\nhttps://piclo.slack.com/archives/C047CNSDHP1/p1691049668222279\r\n------WebKitFormBoundary8z09BAzf3jCH5P7u\r\nContent-Disposition: form-data; name="channel"\r\n\r\nC05RH50B8AJ\r\n------WebKitFormBoundary8z09BAzf3jCH5P7u\r\nContent-Disposition: form-data; name="_x_reason"\r\n\r\nbookmarks-bar\r\n------WebKitFormBoundary8z09BAzf3jCH5P7u\r\nContent-Disposition: form-data; name="_x_mode"\r\n\r\nonline\r\n------WebKitFormBoundary8z09BAzf3jCH5P7u\r\nContent-Disposition: form-data; name="_x_sonic"\r\n\r\ntrue\r\n------WebKitFormBoundary8z09BAzf3jCH5P7u\r\nContent-Disposition: form-data; name="_x_app_name"\r\n\r\nclient\r\n------WebKitFormBoundary8z09BAzf3jCH5P7u--\r\n' \
  --compressed
```

Step 1: Get all slack saved items URLs

