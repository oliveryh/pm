# How Do Domain-Specific Chatbots Work? An Overview of Retrieval Augmented Generation

![rw-book-cover](https://communitykeeper-media.s3.amazonaws.com/media/rag-social1.png)

## Metadata
- Author: [[Scriv]]
- Full Title: How Do Domain-Specific Chatbots Work? An Overview of Retrieval Augmented Generation
- Category: #articles
- Summary: Demystifying and deconstructing Q&A bots that work over your data.
- URL: https://scriv.ai/guides/retrieval-augmented-generation-overview/

## Full Document
[[Full Document Contents/Articles/How Do Domain-Specific Chatbots Work An Overview of Retrieval Augmented Generation.md|See full document content →]]

## Highlights
- Let’s use my own use-case as an example. I wanted to build a chatbot to answer questions about my [saas boilerplate product, SaaS Pegasus](https://www.saaspegasus.com/). The first thing I wanted to add to my knowledge base was [the documentation site](https://docs.saaspegasus.com/). The *loader* is the piece of infrastructure that goes to my docs, figures out what pages are available, and then pulls down each page. When the loader is finished it will output individual *documents*—one for each page on the site. ([View Highlight](https://read.readwise.io/read/01h948xejb2sm7mxaw1s3a2f48))
- entire RAG pipeline. Here’s how it looks:
  ![](https://communitykeeper-media.s3.amazonaws.com/media/images/Complete.original.png) ([View Highlight](https://read.readwise.io/read/01h948ww3tc8h2rdt6fq379ajb))
