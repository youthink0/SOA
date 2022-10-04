# Serialization Showdown

## Download files

Download all the files in this repository using the green 'Clone or download' button on Github. You may download the whole repo as a ZIP file and then unzip it in your working directory. *Do NOT fork this repo".

**Assignment:**

You will write two small ruby applications in this assignment. First, write a command-line application that converts a spreadsheet of students programming skills from a TSV (tab separated columns) file format into a YAML file. Second, write another command-line application that converts a YAML file back into a TSV file. Take a look at the files called `surveys/programmers_survey_*.*` to see examples of these two file formats. Please read *all* the following instructions before starting.

## 1. Coding Practices

Let's put together all the good programming practices that we discussed in class to do this assignment.

- **Tests**:
  - Continuously test your code as you write it
  - First write code to pass all tests (shameless green)
  - Only refactor after you've passed all tests
- **REPL**: Use `irb`/`pry` to try each step as you are coding
- **Idiomatic code**:
  - “No more for loops!”: use functional idioms for iteration (map/reduce/select/each/etc.)
  - Make sure your code has no `rubocop` violations (ask us about any unusual violations)
- **Readability**:
  - Run `flog` on your code to see if it is too complex
  - Ask classmates to review your code on our class Slack!

## 2. Testing

Before beginning, take a look at the test file that you are given: `serializer_spec.rb`

Setup our testing framework by running the following commands from the command line, in the directory with all the files:

```sh
$ bundle install
(only need to run this once; bundle should report success)

$ ruby serializer_spec.rb
(this should report errors before you've written any code)
```

While you are coding, remember to keep running `ruby serializer_spec.rb` on the command line to see if tests are passing.

## 3. TSV to YAML

Create a ruby command-line application: `tsv_to_yml.rb`

This file should have a script that converts a TSV file into a YAML file. Your YAML output should be saved into a YAML file of the user's choosing.
Let your Ruby program take two parameters from command line: the name of input and output files

You would run it like this:

`$  ruby tsv_to_yml.rb programmers_survey_2017.tsv outfile.yml`

You can access command line parameters from your Ruby code using the `ARGV` array (`ARGV[0]`, `ARGV[1]`).

If the user does not supply an output filename, please print output to screen.

If you have done this correctly, each student in your output should look something like:

```yaml
- date: 8/30/2017 15:40:19
  student_id: '3522933'
  languages: Java, C#, C++, Python, Javascript, Oz, Racket Lang, Go Lang, Php, Hack
    lang, Ruby on Rails
  best_language: Javascript, PHP, Phyton, C#, Java
  app_experience: Command line Apps, Desktop GUI Apps, Web Front-end Apps, Web Back-end
    Apps, Mobile Apps, Maths/Statistics Coding, Database Driven Apps
  tech_experience: Command Line, Version Control, Database, Software Testing, Web
    Design, Cloud Platforms, Regular Expressions
```

You must submit `tsv_to_yml.rb` as a Gist URL (use your Github account on <https://gist.github.com>).

## 4. YAML to TSV

Create a ruby command-line application: `yml_to_tsv.rb`

This file should have a script converts a YAML skills file into a TSV file. You would run it like this:

`$  ruby yml_to_tsv.rb programmers_survey_2020.yml outfile.tsv`

Your generated TSV file should have the correct header information in the top row, and should be identical to the corresponding TSV file we've provided.

You must submit `yml_to_tsv.rb` as a Gist URL (use your Github account on <https://gist.github.com>).
