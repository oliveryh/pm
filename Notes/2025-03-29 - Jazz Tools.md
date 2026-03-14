# Log

## 2025-03-29

To start off my experimentation with Jazz Tools, I'm going to create a todo list where a user needs a passphrase to log in. The tech stack will be the standard vite vue app created via CLI with shadcn-vue.

The resources to create this have been:

- Jazz example passphrase app ([code](https://github.com/garden-co/jazz/tree/main/examples/passphrase) | [demo](https://passphrase-demo.jazz.tools/))
- [Demo Auth Basic UI](https://github.com/garden-co/jazz/blob/0dffa407a80f4017abf67a172e7764db9f5fdd01/packages/jazz-vue/src/auth/DemoAuthBasicUI.vue#L4)

I think I've got my current example to a state that supports pass phrase authentication and has some basic todo lists that I can see if I can check between devices.

After getting the project set up, I could get the improved formatting in VSCode by adding the following to the user settings file


```json
"[vue]": {
    "editor.formatOnSave": true,
    "editor.codeActionsOnSave": {
      "source.organizeImports": true
    }
  }
```

I realised that until I have TLS on my Linode server, I may not be able use the Jazz Tools cloud as it's a Secure Websocket

## 2025-05-25 - Reproduce performance issue with a repo example

I created a reproduction repo https://github.com/oliveryh/jazz-tools-local-issue-repro and shared it in the Discord server. It might be nice at some point to understand more of the design principles behind local-first as I'm making some assumptions about what's even possible.
## 2025-03-30

There appears to be a good example of workers in https://github.com/Unicorn-Poo

After deploying the first PR. There are some immediate improvements I can think to make.

- Remove orphaned assets from vue create app CLI
- Add better site title, favicon
- Capture improvements to docs
	- Mismatch node version
	- An FAQ in case someone gets the same web lock error that I did
- Correct styling to banner
- Make it possible to delete tasks
- Add an E2E test in playwright

## 2025-04-18 - Adding a Service Worker

This will have been the second thing I added to the account root schema, so I needed to do a partial migration. 

https://jazz.tools/docs/react/schemas/accounts-and-migrations#undefined

