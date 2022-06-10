# mojtext

## Contents
* [What is this repo for?](#what-is-this-repo-for)
* [Using the package](#using-the-package)
* [Functions in the package](#functions-in-the-package)
* [Package infrastructure](#package-infrastructure)
* [Contributing to the package](#contributing-to-the-package)
* [Found a bug?](#found-a-bug)
* [The mojverse](#mojverse)
* [Other RAP Resources](#other-resources)

## What is this repo for?

This package is a collection of generic convenience functions for automating elements of writing text, for example formatting numbers as comma separated strings, describing changes in quantities, or returning the year and quarter from a given date. It can be useful, for example when writing commentary on the trends observed with some data that is published in a regular report. If parts of the commentary are consistent between publications, e.g. describing changes for various values, then functions in this package can help to automate those sentences when the latest data is imported, without having to manually update those sentences each time. 

## Using the package

To download, install, and then load the package, run the following:

```
devtools::install_github("moj-analytical-services/mojtext")
library(mojtext)
```

Functions from the package can be used by running the following: `mojtext::FUNCTION()` where FUNCTION is replaced with the name of the function.

## Functions in the package

* `as_number.R` - Turns numerical strings into number format
* `change.R` - Calculates changes over a given time period
* `change_desc.R` - Describes changes over a given time period
* `choose_value.R` - Choose a value from a dataframe
* `connector.R` - Produces a connecting word for a compound sentence
* `date_type.R` - Takes dates in "%Y%m%d" format, with any or no separators, and outputs them in specified formats
* `format_expenditure.R` - Formats a number as an expenditure
* `format_num.R` - Formats numerical values as thousand delimited numerical strings
* `format_perc.R` - Formats fractions as numerical strings in percentage format
* `incdec.R` - Quantifies changes in values eg. "increased by ..."
* `mojquarter.R` - Converts dates in "%Y%m%d" format, with or without separators, to calendar or financial quarters
* `pluralise.R` - Pluralises words with an 's', depending on a given value
* `previous_quarter` - Given the latest quarter, return the previous quarter or quarters further back in time
* `quarter_dates.R` - Calculates the start or end dates of a quarter

## Package Infrastructure
A whistle stop tour of the package for those who aren't as familiar with R/package development 

### R/
This is where most of the code which does the analysis lives. All the code is functions, only some of which are avaiable when you install the package.

### man/
This is where the package documentation that can usually be found running ?function_name 

### tests/
The code here simply tests the functions in the package are working as expected. None of this code does any of the analysis the package was designed for, instead acting as quality assurance for the functions that have been created to do the analysis.

### README.md
Contains the text for this document in Markdown format. This is the sole documentation for the package, other than occasional comments in the source code. The source code should be transparent enough that it is best to read the source code to understand how functions in the package work.

### NAMESPACE
Is a config file that should not be updated manually - instead use roxygen comments in the code. http://r-pkgs.had.co.nz/namespace.html

### DESCRIPTION
Is a config file. Most fields are self explanatory. http://r-pkgs.had.co.nz/description.html

## Contributing to the package

To contribute a function to this package:

1) Clone this repo:
In the terminal, run `git clone git@github.com:moj-analytical-services/mojrap.git`
Or see the [platform guidance](https://user-guidance.services.alpha.mojanalytics.xyz/github.html#r-studio) if you are having any difficulties.

2) Create a new branch and add your function(s) to it - see the [platform guidance](https://user-guidance.services.alpha.mojanalytics.xyz/github.html#working-on-a-branch) if you aren't familiar with doing this

3) Open a [Pull Request](https://help.github.com/articles/creating-a-pull-request/) to merge your functions into the package. 

4) Get someone to [review](https://help.github.com/articles/about-pull-request-reviews/) your pull request. Approval from at least one package admin is also required before the pull request can be merged. The reviewer should check that the function satisfies the following:
  * Must have unit testing
  * Must pass R CMD checks of the entire package, with no Errors or Warnings, and preferably no Notes.
  * Must have documentation around functions with examples
  * Should follow coding best practice guidelines, e.g. [DASD Coding Principles](https://moj-analytical-services.github.io/our-coding-standards/), [MoJ Harmonisation Guidance](https://moj-analytical-services.github.io/harmonisation-guidance/), [ONS Quality Assurance of Code for Analysis and Research guidlines](https://best-practice-and-impact.github.io/qa-of-code-guidance/intro.html). 

5) Once your pull request has been approved and merged by an admin, make sure to post in the [#rap](https://app.slack.com/client/T1PU1AP6D/C02DSC3Q4P6) Slack channel that your changes have been merged in so people can update their version of the package.

Congratulations! You have now contributed to the package! If you [reinstall the package](#using-the-package) you will be able to use your functions.

## Found a bug?

You can also contribute by helping to improve the existing functions. If you find a bug, or think there is a better way of doing something, raise an [issue](https://github.com/moj-analytical-services/mojtext/issues) and/or open a [pull request](https://github.com/moj-analytical-services/mojtext/pulls) with your suggested solution.

## mojverse

This package is intended to sit within a tidyverse-style ecosystem of packages known as the [mojverse](https://github.com/moj-analytical-services/mojverse), providing functions to assist with building a variety of elements/outputs that may sit in a Reproducible Analytical Pipeline. Below is a list of packages within the `mojverse`:

* [mojspeakr](https://github.com/moj-analytical-services/mojspeakr): Formatting RMarkdown into govspeak for publishing on gov.uk
* [mojchart](https://github.com/moj-analytical-services/mojchart): Formatting ggplot2 charts and applying MoJ corporate colours
* [mojrap](https://github.com/moj-analytical-services/mojrap): Generalised functions for RAP

Please install the `mojverse` package, to install all the packages listed above.

## Other resources

To find other useful packages, please see a list of all R packages developed within MoJ contained in the [mojRpackages](https://github.com/moj-analytical-services/mojRpackages) repo.

Slack/MS Teams channels:
* If you are working within government and are looking to get up to speed with RAP, we would recommend joining the #rap_collaboration channel of the [Government Data Science Slack](https://govdatascience.slack.com/?redir=%2Fhome) and getting involved with the community there. 
*  To engage with the MoJ RAP community, you can either use the [#rap](https://app.slack.com/client/T1PU1AP6D/C02DSC3Q4P6) Slack channel, or contact Aidan Mews to join the RAP Publication group on MS Teams.

Documentation:
* Free online resources are available, such as the [RAP Companion](https://ukgovdatascience.github.io/rap_companion/) written by the Government Digital Service (GDS), a [Udemy RAP using R course](https://www.udemy.com/course/reproducible-analytical-pipelines/), the [RAP Manual](https://moj-analytical-services.github.io/rap-manual/index.html) written by members of the MoJ RAP Publication group, or the [GSS RAP site](https://gss.civilservice.gov.uk/reproducible-analytical-pipelines/).