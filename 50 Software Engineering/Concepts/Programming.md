# The Three Virtues

[Three Virtues](http://threevirtues.com/)

1. **Laziness**: The quality that makes you go to great effort to reduce overall energy expenditure. It makes you write labor-saving programs that other people will find useful and document what you wrote so you don't have to answer so many questions about it.
2. **Impatience**: The anger you feel when the computer is being lazy. This makes you write programs that don't just react to your needs, but actually anticipate them. Or at least pretend to.
3. **Hubris**: The quality that makes you write (and maintain) programs that other people won't want to say bad things about

# Programming Tips

## Version Control

- All code and configuration has a copy in version control. Code left uncommitted on servers will get lost
- Changes should always be revisioned. Potential breaking changes should be put in a branch
- Diff your code on every commit to ensure you're pushing what you expect
- Small, self-contained commits with detailed messages can produce readable logs
- Prepare your [[Code Reviews]] nicely

## Testing

- Write unit tests and create functions small enough to be tested
- Apply Test Driven Development (TDD), this will ensure tests are written alongside features

## Automation

- Automate any task that you know you'll have to repeat

## Documentation

- Documentation is the best form of self-code-review.

## Learning

- RTFM. It is your job to use the resources available to you to learn a piece of technology
- If you don't understand exactly what a function. symbol or piece of syntax means, write practice code.

## Performance

- Use [[Code Profilers]] to enhance performance

## General

- **Avoid Duplication of Knowledge.** Examples include copy and pasting code, extraneous comments, duplicated documentation
- **Less is more** - Bad Codebases are proportional to the amount of code. Always strive to do everything with as little code as humanly possible.
- Find evidence to support design decisions, running experiments to support your viewpoints.
- **Parse, don't validate!** Code that takes data in from the outside world should do it best to parse it into an acceptable structure as early as possible so that code down stream doesn't have to check if the data it receives is valid or not. [^1]
- **Push effects to the edge** If something has to talk to the outside world make sure it happens in, ideally, one place. Writing tests first ensures that your code is easy to test so putting effect-full code all over the place is painful.
- **There are different kinds of correct**. Know ahead of time what success will be for your task. Passing tests is one kind of correctness. Functional correctness of the system is another -- you will want to reach to tools like TLA+ or Alloy to write specifications for the latter.
- **Talk to your team**. Sketch out your ideas first and shop them around and spit ball them with other experienced team members. Get their take on it before you start coding.
- **Public by default**. Everytime you create or learn something useful, do it in public. This will help develop your communication skills and benefit everyone
- **Typed Languages**. Typed languages are better when you're working on a team of people with various experience levels
- Clever code isn't usually good code. Clarity trumps all other concerns
- Despite being called "engineers," most decision are pure cargo-cult with no backing analysis, data, or numbers

# Resources

## People

- [Swizec Teller](https://swizec.com/blog/)
- [David Bieber](https://davidbieber.com/)
- [Caleb Doxsey](http://www.doxsey.net/) - Go Enthusiast
- [ThoughtBot](https://thoughtbot.com/blog)
- [Robert Chang](https://medium.com/@rchang)
- [Sean Bradley](https://medium.com/@sean_bradley)
- [Florian Wilhelm](https://florianwilhelm.info)
- [DK The Human](https://www.dkthehuman.com/about/)
- [Code Without Rules](https://codewithoutrules.com/)
- [Julia Evans](https://jvns.ca/)
- [Glenn Engstrand](http://glennengstrand.info/blog/) - Software Architecture Focused on Open Source Technology
- [Archives - Eli Bendersky's website](https://eli.thegreenplace.net/archives/all)
- [Drew DeVault's blog](https://drewdevault.com/)
- [Overreacted — A blog by Dan Abramov](https://overreacted.io/)
- [https://martinheinz.dev/](https://martinheinz.dev/)
- [Portfolio - Thedro Neely](https://www.thedroneely.com/)
- [Ramblings from Jessie: Home](https://blog.jessfraz.com/)
- [Jamie Tanna | Software Engineer](https://www.jvt.me/)
- [Maxime Vaillancourt](https://maximevaillancourt.com/)
- [Ship better Python software, faster](https://pythonspeed.com/)
- [Arpit Bhayani](https://arpitbhayani.me/) - CS Engineer, Educator, and a Polymath
- [Julian Shapiro](https://www.julian.com/)
- [Blog | Ben Congdon](https://benjamincongdon.me/blog)
- [the mango zone](https://mango.pdf.zone/)
- [Alex Gude](https://alexgude.com/blog/custom-markdown-for-github-pages/)
- [Paul Vanderlaken](https://paulvanderlaken.com/)
- [Kevin Kelly](https://kk.org/)
- [Nicole van der Hoeven](https://nicolevanderhoeven.com)
- [Martin Fowler](https://martinfowler.com/)
- [source/target editions](https://sourcetarget.email/editions/)
- [Josh W Comeau](https://www.joshwcomeau.com/)
- [My blog](https://blog.luap.info/)
- [RoyalSloth Blog](https://blog.royalsloth.eu/)
- [Blog - Simple Thread](https://www.simplethread.com/blog/)
- [Where there is a Will](https://www.willmcgugan.com/)
- [SaltyCrane Blog](https://www.saltycrane.com/blog)
- [Alexander's Garden](https://dragonman225.js.org/index.html)
- [Cory Zue](https://www.coryzue.com/) - Full-Stack Developer, Maker of Products, and Solopreneur
- [Deniz Cem Önduygu](https://www.denizcemonduygu.com/)
- [Darren Burns - Blog](https://darrenburns.net/)
- [Martin Heinz](https://martinheinz.dev/)
- [Haki Benita](https://hakibenita.com/)
- [ribbonfarm – constructions in magical thinking](https://www.ribbonfarm.com/)
- [Erich Grunewald's Blog](https://www.erichgrunewald.com/)
- [Gitlab - Engineering Blog](https://about.gitlab.com/blog/categories/engineering/)
- [Blog | Home](https://kevinkle.in/)
- [Caffeinspiration](https://alexanderell.is)
- [Wesley Moore](https://www.wezm.net/v2/)
- [Projects—bullinger.dev](https://bullinger.dev/projects)
- [Cushion Blog](https://cushionapp.com/blog)
- [peppe.rs](https://peppe.rs/)
- [Dries Depoorter – artist and speaker working with technology 🔥](https://driesdepoorter.be/)
- [Nelson Figueroa - Software Engineer](https://nelsonfigueroa.dev/)
- [512KB Club | A showcase of lightweight websites.](https://512kb.club/)
- https://www.tdpain.net/blog
- https://alistair.sh/
- https://nicolasbouliane.com/blog
- [benkuhn.net](https://www.benkuhn.net/)
- [Garrit Franke](https://garrit.xyz/)
- https://blakewatson.com/
- https://mango.pdf.zone/
- [Home | Rach Smith's digital garden](https://rachsmith.com/)
- https://maggieappleton.com/
- [ooh.directory](https://ooh.directory/)
- [Arun Venkatesan](https://arun.is/)
- [Darek Kay — Solving web mysteries](https://darekkay.com/)
- [LessWrong](https://www.lesswrong.com/)
- [Eugene Yan](https://eugeneyan.com)
- [Byte Tank - Pedro Lopes Blog](https://lopespm.com)
- [Steph Ango](https://stephanango.com)
- [Ask HN: Could you share your personal blog here? | Hacker News](https://news.ycombinator.com/item?id=36575081)
- [Eugene Yan](https://eugeneyan.com)
- [Blog @ tonsky.me](https://tonsky.me)
- [remy sharp's b:log](https://remysharp.com)
- https://mary.codes/
- [About Ideas Now | Search 1000s of personal sites](https://aboutideasnow.com)
- [Blog |  Bryan Braun - Frontend Developer](https://www.bryanbraun.com/blog)
- [Monolog](https://www.monolog.dev)
- [ryanbuening.com](https://ryanbuening.com)
- [Money | Uncurled](https://un.curl.dev/money)
- [Developer, writer and speaker | Stefan Judis Web Development](https://www.stefanjudis.com)/
- [Julia Evans | Wizard Zines](https://wizardzines.com/comics/)
- [λ ryan. himmelwright. net](https://ryan.himmelwright.net/)
- [samwho](https://samwho.dev/)
- https://www.geoffreylitt.com/
- https://alexanderobenauer.com/
- https://sinja.io/
- https://rorydbain.github.io/page7/
- https://www.benjames.io/
- https://jasmcole.com/
- https://www.petemillspaugh.com/
- https://justoffbyone.com/
- https://codeinthehole.com/writing/ - David Winterbottom - Works at Kraken Tech
- https://leerob.com/
- https://www.seangoedecke.com/
- https://velvetshark.com/
- https://www.ejmastnak.com/
- https://rapidrehita.health.nz/blog/extending-django-with-rust/ - I quite like the typeface from this blog
- https://github.com/fayazara/zooper - A Nuxt / Tailwind blog template
- https://brianlovin.com/
- https://projects.priyavkaneria.com/
- https://fuma-nama.vercel.app/blog
- https://chrisnicholas.dev/about
- https://mary.codes/
- https://ryan.himmelwright.net
- https://worrydream.com/


# Videos

## Code Style Guides / Good Practices

- [Microsoft Engineering Playbook](https://microsoft.github.io/code-with-engineering-playbook/ENG-FUNDAMENTALS-CHECKLIST/)
- [Google Style Guides](https://google.github.io/styleguide/)

## Link

- [CommandLineFu](https://www.commandlinefu.com/commands/browse) - Useful Linux Command Line Snippets
- [DEV Community](https://dev.to/) - Various posts about developer interests
- [TODAY I LEARNED](https://til.hashrocket.com/) - Feed of tips and tricks in various languages
- [Free Programming eBooks](https://github.com/EbookFoundation/free-programming-books/blob/master/free-programming-books.md) - Free eBooks covering virtually every programming language
- [Stack Overflow Developer Survey 2022](https://survey.stackoverflow.co/2022/#overview)

## Books

- [Ask HN: Books that teach programming by building a series of small projects? | Hacker News](https://news.ycombinator.com/item?id=34412069)

# Further Reading

[10 Papers Every Developer Should Read](https://michaelfeathers.silvrback.com/10-papers-every-developer-should-read-at-least-twice?utm_source=pocket_mylist)

[^1]: https://lexi-lambda.github.io/blog/2019/11/05/parse-don-t-validate/
