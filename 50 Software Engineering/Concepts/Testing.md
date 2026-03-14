# Links

- [Test-Driven Development by Example](https://www.eecs.yorku.ca/course_archive/2003-04/W/3311/sectionM/case_studies/money/KentBeck_TDD_byexample.pdf)
- [nabaz (nabaz-io) (228 ★)](https://github.com/nabaz-io/nabaz) - Test runner for the easily distracted
- [JetBrains Aqua](https://www.jetbrains.com/aqua/)
- [Test-Driven Development: By Example by Kent Beck | Goodreads](https://www.goodreads.com/book/show/387190.Test_Driven_Development)
- [Google test blog](https://testing.googleblog.com/)

# Code Snippets

## Convert Unit Test Report to List of Tests

`grep "^FAIL" | sed "s/FAIL: //g" | sed 's/ (/,/g' | sed 's/)//g' | awk -F, '{ print $2 "." $1}'`