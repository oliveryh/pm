# Introduction

## Thoughts from Grok

Beginner → Intermediate (Great starting points)

1. "How Browsers Work" by Tali Garsiel & Paul Irish (2011, still unbeatable)
    - Classic article that explains the browser internals in detail: parsing, CSSOM, render tree, layout, painting, compositing, etc.
    - Link: [https://www.html5rocks.com/en/tutorials/internals/howbrowserswork/](https://www.html5rocks.com/en/tutorials/internals/howbrowserswork/)
        (Also read the updated version on web.dev: [https://web.dev/howbrowserswork/](https://web.dev/howbrowserswork/))
2. MDN Web Docs – "Web Technology for Developers" section
    - The gold standard reference. Free and constantly updated.
    - Especially good sections:
        - HTTP [(https://developer.mozilla.org/en-US/docs/Web/HTTP)](https://developer.mozilla.org/en-US/docs/Web/HTTP)
        - JavaScript internals
        - Browser architecture
    - Just start here: [https://developer.mozilla.org/en-US/docs/Learn](https://developer.mozilla.org/en-US/docs/Learn)
3. "Eloquent JavaScript" by Marijn Haverbeke (4th edition, 2024) – Free online
    - One of the best books to truly understand JavaScript (not just syntax).
    - Covers the language, the browser platform, Node.js, and has excellent chapters on asynchronous programming and the event loop.
    - [https://eloquentjavascript.net/](https://eloquentjavascript.net/)

Intermediate → Advanced (Deeper into how the Web platform really works)

4. Web.dev by Google (free courses)
    - "Browser rendering optimization"
    - "Network fundamentals"
    - "Web performance fundamentals"
    - All free, very high quality: [https://web.dev/learn/](https://web.dev/learn/)
5. "High Performance Browser Networking" by Ilya Grigorik (O'Reilly)
    - The bible of web networking. Covers TCP, UDP, TLS, HTTP/1.1 → HTTP/3, WebSockets, WebRTC, mobile networks, etc.
    - Free online: [https://hpbn.co/](https://hpbn.co/)
6. "JavaScript: The Definitive Guide" by David Flanagan (7th edition)
    - Still the most comprehensive single book on JavaScript and the browser platform.
7. "You Don't Know JS" (2nd edition) by Kyle Simpson – Free on GitHub
    - 6-book series that dives very deep into scope, closures, this, objects, async, ES6+, etc.
    - [https://github.com/getify/You-Dont-Know-JS](https://github.com/getify/You-Dont-Know-JS)

Advanced / Systems-Level (If you want to go really deep)

8. "What Happens When You Type google.com into the Browser and Press Enter?"
    - The famous systems-design-style explanation. Best version is still this one:
    - [https://github.com/alex/what-happens-when](https://github.com/alex/what-happens-when)
9. "Web Browser Engineering" by Pavel Panchekha & Lindsey Kuper (2023–2024)
    - You literally build a toy web browser in Python (parser, layout engine, etc.).
    - Extremely good for understanding the fundamentals.
    - Free online book + code: [https://browser.engineering/](https://browser.engineering/)
10. Lin Clark's illustrated deep dives (CSS-Tricks / Mozilla)
    - Amazing visual explanations of the event loop, WebAssembly, browser internals, etc.
    - Example: [https://www.youtube.com/watch?v=8aGhZQkoFbQ](https://www.youtube.com/watch?v=8aGhZQkoFbQ) (Event loop)
    - Her whole YouTube channel and illustrated posts on css-tricks.com

My personal recommended learning path (most effective order)

1. MDN basics + Eloquent JavaScript
2. How Browsers Work (Tali Garsiel article)
3. web.dev courses (especially HTTP and performance)
4. High Performance Browser Networking (Ilya Grigorik)
5. Web Browser Engineering (build your own browser) ← this one is a game-changer
6. You Don't Know JS series for JS mastery

If you only have time for three resources:

- MDN Web Docs (ongoing reference)
- How Browsers Work + Web Browser Engineering (for real understanding)
- High Performance Browser Networking

These will give you a much deeper mental model than any bootcamp-style "learn React in 7 days" course.Enjoy the rabbit hole – the web platform is fascinating once you go below the framework layer!

# Notes

## "How Browsers Work"

https://web.dev/articles/howbrowserswork
https://developer.mozilla.org/en-US/docs/Web/Performance/Guides/How_browsers_work

- URI
- HTML and CSS specs are maintained by the W3C
- DOM
	- Document Object Model
	- The object presentation of the HTML document and the interface of HTML elements to the outside world like JavaScript.

### High Level Infrastructure

#flashcards/web

Describe the high level structure of the browser
?
- User Interface
- Browser Engine
- Rendering Engine
	- Parse HTML and convert elements to DOM nodes in a tree called a "content tree"
	- HTML cannot be parsed easily by conventional parsers, since its grammar is not context free. HTML cannot be parsed by XML parsers
- Networking
- UI Backend
- Javascript interpreter
- Data storage
	- e.g. Cookies, localStorage, IndexedDB, WebSQL, Filesystem

What does the networking component handle?
?
Networking handles HTTP/HTTPS requests and responses, DNS resolution, and connection management (TCP/TLS), providing raw resources to the browser.

What does the browser UI contain and do?
?
The browser UI contains visible controls like the address bar, back/forward buttons, bookmarks, and menus, and it coordinates user interactions with the engine.

What is the browser engine and what is its role?
?
The browser engine mediates between the UI and the rendering engine and orchestrates high-level actions like navigation and layout decisions.

What is the rendering engine (layout engine) responsible for?
?
The rendering engine parses HTML/CSS, constructs the DOM and CSSOM, builds the render tree, performs layout, paints, and composites pixels to the screen.

What is the JavaScript engine and its responsibilities?
?
The JavaScript engine parses, compiles, and executes JavaScript, performs runtime optimizations, and manages the heap and call stack for scripts.

What is the purpose of data storage in browsers?
?
Data storage holds persistent data like cookies, localStorage, IndexedDB, and caches used for later retrieval and offline support.

What are the high-level steps of the critical rendering path?
?
The critical rendering path involves fetching resources, parsing HTML to build the DOM, parsing CSS to build the CSSOM, constructing the render tree, performing layout, painting, and compositing.

### Network

#### DNS

How does navigation begin when a user enters a URL?
?
Navigation begins with parsing the URL, resolving the hostname via DNS, opening TCP/TLS connections as needed, and sending an HTTP(S) request to fetch resources.

What role does DNS play in loading a page?
?
DNS resolves a hostname to an IP address so the browser can establish a connection to the server hosting the page.

#### TCP

A three-part handshake consisting of SYN, SYN-ACK, and ACK

What happens once the browser receives the IP address of the destination server?
?
Once the browser receives the IP address of the destination server, it takes that and the given port number from the URL (the HTTP protocol defaults to port 80, and HTTPS to port 443), and makes a call to the system library function named `socket` and requests a TCP socket stream

#### TLS Handshake

What happens during a TLS handshake?
?
- Specify which version of TLS (TLS 1.0, 1.2, 1.3, etc.) they will use
- Decide on which cipher suites (see below) they will use
- Authenticate the identity of the server via the server's public key and the SSL certificate authority's digital signature
- Generate session keys in order to use symmetric encryption after the handshake is complete

How does TLS affect page load performance?
?
TLS adds cryptographic handshake overhead before encrypted transfers start, but TLS 1.3 and session resumption reduce latency while providing necessary security.

#### HTTP vs HTTPS

What's the difference between HTTP and HTTPS
?
HTTPS is an extension of the HTTP protocol with an encrypted connection

What is caching and how does it improve performance?
?
Caching stores fetched resources locally (memory/disk) with headers that describe freshness, reducing redundant network requests and lowering load times.

What is the same-origin policy?
?
The same-origin policy restricts how documents or scripts from different origins can access each other's data to prevent cross-origin data leakage and security breaches.

What is Time To First Byte (TTFB)?
?
TTFB measures the time from the initial request to when the first byte of the response is received, reflecting network and server latency.

### HTTP and REST

What does REST stand for?
?
Representational State Transfer

What are some REST design principles
?
Uniform Interface
Client-Server Decoupling
Statelessness
Cacheability
Layered System Architecture

What does it mean for a REST API to have a Uniform Interface
?
All requests for the same resource should look the same, no matter where it comes from

What is Client-Server Decoupling in the context of REST APIs
?
The only information that the client application should know is the URI of the requested resource, and the server shouldn't modify the client application other than passing it the requests data via HTTP

What is REST API Statelessness?
?
Reach request needs to include all the information necessary to process it

What is REST API Cacheability
?
When possible, resources should be cacheable on the client or server side. Server responses also contain information about wether caching is allowed for the delivered resource. The goal being to improve performance and scalability

What is a layered system in the context of REST APIs?
?
Calls can go through several layers, so neither the client or server should assume they're not communicating with an intermediary

What are the common REST methods?
?
GET
PUT
POST
DELETE
PATCH

What is a "safe" method in REST
?
If their defined semantics are essentially read-only. The client doesn't expect any state change on the origin server

What REST methods are considered safe?
?
GET, HEAD, OPTIONS, TRACE

What is an "Idempotent" method?
?
Used to describe and operation that will produce the same results if executed once or multiple times

What REST methods are idempotent?
?
PUT, DELETE, and safe methods (GET, HEAD, OPTIONS, TRACE)

What are the most common response codes for a GET request?
?
200 OK - Resource Found
404 Not Found
400 Bad Request

What are the most common response codes for a POST request?
?
201 Created
204 No Content or 200 Okay - If it's not possible to identify the URI

What are the most common response codes for a PUT request?
?
Same as POST (201, 204, or 200)

What is a PUT request used for
?
To update an existing record

Whats the difference between a PATCH and PUT request
?
You should only use PUT to replace a resource entirely, while PATCH should be used to make a partial update

### Parsing Algorithm

Describe how the HTML parser works
?
Parsing can't be done using a regular topdown or bottom parser as the language is forgiving, error tolerant to accommodate well known cases of invalid HTML, and it's possible to dynamically add tokens during parsing (e.g. through a `document.write()` call)
![[Pasted image 20251208133608.png]]

### CSS Parsing

CSS is a Context Free Grammar

How is the CSSOM created from CSS?
?
The CSS parser parses stylesheets and style elements into rules and selectors, producing the CSSOM which represents computed style relationships.

Is CSS render blocking and why
?
CSS is render blocking: the browser blocks page rendering until it receives and processes all the CSS. CSS is render blocking because rules can be overwritten, so
the content can't be rendered until the CSSOM is complete.

What makes CSS "Cascading"?
?
As the parser converts tokens to nodes, descendant nodes will inherit some of the styles of the parent.

### Processing order for scripts and style sheets

What's the difference between HTML and the DOM
?
HTML represents initial page content
DOM represents current page content, as javascript could modify the initial DOM

Describe the process of parsing HTML
?
It's forgiving in nature
It can be halted
It does speculative parsing
It's reentrant

What makes the HTML parser forgiving?
?
It can close tags
It can quote attributes
It can guess the nesting of tags

What is a parse tree?
?
It's a roughly 1:1 representation of your HTML

In what situations will it stop parsing the HTML
?
Network latency, such as an external script tag
Authors can defer a script until it's done parsing
In HTML5 there is an option to mark a script as asynchronous so it'll be parsed and executed by a different thread

What is the difference between async and defer on script tags?
?
async downloads the script and executes it as soon as it's available, possibly interrupting parsing; defer downloads during parsing and executes the scripts in order after parsing completes.

What is speculative parsing and why is it used?
?
Speculative parsing is the browser's background parsing of the HTML while scripts download, used to discover resource hints and accelerate loading without blocking.

What does it mean for something to be reentrant
?
Being able to modify the DOM means the parsing needs to be started again

### Render Trees

While the DOM tree is being constructed, the browser constructs another tree, the render tree. This tree is of visual elements in the order in which they will be displayed. It is the visual representation of the document. The purpose of this tree is to enable painting the contents in their correct order.

- Renderers correspond to DOM elements, but the relation is not one-to-one
	- Non-visual DOM elements won't be inserted into the render tree
- CSS has a struct concept that I would need to look into further

What is the render tree and how is it different from the DOM?
?
The render tree combines DOM nodes with their computed styles to create nodes for only those items that will be rendered; it excludes non-visual DOM nodes like script, meta, or things like `display: none`

### Layout

https://developer.mozilla.org/en-US/docs/Web/Performance/Guides/Critical_rendering_path

Concepts around how paint and layout are performed on a DOM element, it's children, siblings, or globally depending on what change has occurred

What happens during layout (reflow)?
?
During layout the browser computes the exact geometry — positions and sizes — of each node in the render tree relative to the viewport.

What happens during paint?
?
Paint transforms render tree nodes into drawing commands that rasterize pixels for each layer, producing the visual contents to be composited.

What is reflow (layout thrash) and why is it costly?
?
Reflow recalculates layout and geometry for affected elements and is computationally expensive because it can cascade through the render tree and trigger repaints.

What kinds of DOM/CSS changes trigger reflow?
?
Changes to geometry-related properties (width, height, margin, padding, position, font-size) or structural DOM changes typically trigger reflow.

What changes typically only trigger repaint and not reflow?
?
Changes to properties that don't affect layout, such as color, background-color, visibility, and opacity (when not affecting geometry), usually trigger repaint only.

What is First Contentful Paint (FCP)?
?
FCP is a performance metric marking the time when the browser renders the first bit of DOM content (text, image, SVG) to the screen.

What is Largest Contentful Paint (LCP)?
?
LCP is a metric that measures when the largest visible content element in the viewport is rendered, reflecting perceived loading speed.

What is Cumulative Layout Shift (CLS)?
?
CLS measures visual stability by quantifying unexpected layout shifts that occur during page load and interaction.

What is incremental rendering and why is it beneficial?
?
Incremental rendering displays parts of the page as they arrive rather than waiting for all resources, improving perceived performance and faster feedback to users.

What role does the GPU play in rendering?
?
The GPU accelerates rasterization and compositing of layers, offloading pixel-heavy work from the CPU to enable smoother animations and faster compositing.

How can developers minimize reflows and repaints?
?
Batch DOM reads/writes, use transforms and opacity for animations, avoid synchronous layout queries, use requestAnimationFrame, and reduce DOM complexity.

### Accessibility

What is the accessibility tree?
?
The accessibility tree is a browser-generated representation of semantic and structural information about the page used by assistive technologies like screen readers.

### CORS, XSS, Same Origin

What is Cross-Origin Resource Sharing (CORS)?
?
CORS is a browser mechanism using response headers that lets servers specify which origins may access a resource, enabling controlled cross-origin requests.

What is Cross-Sit Scripting (XSS)?
?
A web security vulnerability where attackers inject malicious scripts (like JavaScript) into trusted websites, tricking users' browsers into executing them, often to steal sensitive data (cookies, session tokens), hijack accounts, or deface websites.

### Performance

How should developers measure and diagnose browser performance?
?
Use browser DevTools performance timelines, Lighthouse, and standardized metrics (FCP, LCP, CLS, TTFB), plus profiling to identify and fix bottlenecks.

What practical steps improve page load and runtime performance?
?
Minify/concatenate resources where helpful, defer noncritical scripts, inline critical CSS, use efficient image formats and sizes, enable caching, use service workers, and optimize JavaScript and animations.

Why are service workers useful and what can they do?
?
Service workers intercept network requests to provide caching strategies, offline support, background sync, and push notifications, improving resilience and performance.

What are common performance bottlenecks in the rendering pipeline?
?
Common bottlenecks include render-blocking CSS, blocking scripts, heavy/inefficient JavaScript, excessive reflows/paints, large images, and network latency.

### Javascript Event Loop

What are the key components of the JS event loop
?
Heap
Call Stack
Web APIs
Render Queue
Callback Queue

### React

The most expensive thing you can do is write to the DOM

Write a basic JSX component
?
![[Pasted image 20260113175111.png]]

What happens with React creates an instance of a component
?
An element object is created with various properties such as type, props, key, ref

What is the Virtual DOM
?
This is the JS object representation of props and children within a component. It's really cheap to create and tear these down

What is reconciliation
?
A diffing algorithm that determine what part of the Virtual DOM needs to be replaced

### Websockets

What is a websocket
?
WebSockets are ==a communication protocol providing full-duplex, bi-directional data exchange over a single, persistent TCP connection between a web browser (client) and a server==, enabling real-time, low-latency data flow for applications like live chat, multiplayer games, and collaborative editing, unlike traditional HTTP's request-response model. They start as an HTTP connection but "upgrade" to maintain an open, continuous channel for instant data sharing without constant new requests, making them ideal for dynamic, event-driven web experiences.

### WebAssembly

## MDN How Browsers Work

### Flashcards

#### DNS

---


What is compositing in the rendering process?
?
Compositing assembles painted layers into the final bitmap shown on screen, often using the GPU to combine layers efficiently.

How do scripts affect parsing and rendering?
?
Parser-inserted scripts without async/defer can block HTML parsing; scripts can modify DOM/CSSOM and cause reflows/repaints, so script placement and attributes matter.



Why is external CSS considered render-blocking?
?
The browser needs the CSSOM to construct the render tree and avoid displaying content with incorrect styles, so external CSS blocks rendering until parsed.

Why can web fonts be render-blocking?
?
Web fonts can block text rendering to avoid Flash Of Unstyled Text (FOUT) or layout shifts while the font loads; browsers have various timeout/fallback strategies.





What are layers and why are they useful?
?
Layers are independently composited parts of the page (often GPU-backed) that can be repainted/composited separately to isolate expensive operations and enable smooth animations.

How does the browser optimize resource loading?
?
Browsers optimize via parallel connections, HTTP/2 multiplexing, connection reuse, prioritization, speculative preconnect, DNS prefetch, and resource prioritization strategies.

How do modern browsers use processes and threads?
?
Modern browsers use multiple processes (browser, renderer, GPU, network) and multiple threads within those processes to improve isolation, security, stability, and parallelism.

Why is JavaScript described as single-threaded, and how is concurrency provided?
?
Within a given JS context code runs on a single main thread (event loop), while browsers provide concurrency via web workers and asynchronous non-blocking APIs.

What is the event loop?
?
The event loop schedules and runs tasks from macrotask and microtask queues, executing them sequentially to process events, callbacks, and promise resolutions without blocking UI.

What are microtasks and macrotasks and how do they differ?
?
Microtasks (e.g., Promise callbacks) run immediately after the current task and before rendering; macrotasks (e.g., setTimeout, I/O) are scheduled for later turns of the event loop.

How does style calculation work?
?
Style calculation matches CSS rules to DOM nodes, computes cascaded and inherited values, and produces computed styles used in layout and painting.



What causes long tasks and why are they harmful?
?
Long tasks (typically >50ms) block the main thread, causing jank and delayed response to input; breaking work into smaller chunks improves responsiveness.

What is layout thrashing and how can it be avoided?
?
Layout thrashing is repeatedly reading layout-dependent properties that force synchronous reflows interleaved with writes; avoid by batching reads and writes and using requestAnimationFrame.

What are resource hints and what do they do?
?
Resource hints (dns-prefetch, preconnect, prefetch, prerender) let the browser perform preparatory actions like resolving DNS, opening connections, fetching resources, or loading a page early.
Answer
dns-prefetch resolves DNS ahead of time; preconnect opens connections (TCP/TLS) early; prefetch fetches likely-needed resources for later use; prerender loads a full page in the background.



How does HTTP/2 change resource-loading strategies?
?
HTTP/2 multiplexes multiple requests over a single connection, reducing the need for connection-per-resource and influencing optimizations like bundling and prioritization.

# Resources

- https://github.com/alex/what-happens-when
- https://www.destroyallsoftware.com/talks/the-birth-and-death-of-javascript
- https://www.reddit.com/r/javascript/comments/3ycqeo/best_jsdev_talks_online/
- https://www.youtube.com/watch?v=8aGhZQkoFbQ&t=35s
