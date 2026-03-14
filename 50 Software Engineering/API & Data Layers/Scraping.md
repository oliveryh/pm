# Resources

- [Scrapism](https://scrapism.lav.io/) ([HN Discussion](https://news.ycombinator.com/item?id=31500007))
- [har2requests (louisabraham) (58 ★)](https://github.com/louisabraham/har2requests) - Generate Python Requests code from your browser activity 🤖
- [currency-api (fawazahmed0) (667 ★)](https://github.com/fawazahmed0/currency-api) - Free Currency Exchange Rates API with 150+ Currencies & No Rate Limits
- [sfpc-scrapism (antiboredom) (73 ★)](https://github.com/antiboredom/sfpc-scrapism) - 7-week class at SFPC, Fall 2018
- [crul](https://www.crul.com/)
- [MrScraper — MrScraper AI powered web scraper](https://mrscraper.com/ai)
- [Web Scraping via Javascript Runtime Heap Snapshots - Adrian Cooney's Blog](https://www.adriancooney.ie/blog/web-scraping-via-javascript-heap-snapshots)

# Scrape YouTube Videos into Markdown Format

```js
document.querySelectorAll('.ytd-playlist-video-list-renderer').forEach((renderer) => {
    const title = renderer.querySelector('#video-title')?.innerText
    const author = renderer.querySelector('#channel-name')?.innerText
    const videoURL = renderer.querySelector('#video-title')?.href
    const videoID = videoURL?.slice(32, 43)
    const imgURL = `https://img.youtube.com/vi/${videoID}/0.jpg`
    console.log(`- [ ] [${title}](${videoURL}) by [[${author}]]<br><br>![${title}](${imgURL})`)
})
```