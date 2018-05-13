---
layout: page
title: How To Contribute
permalink: /help/howtocontribute
---

## How to contribute

### Github account

To contribute to the website first you need to create a github account, if you already have one then skip to the next step, otherwise [signup here](https://github.com/join)

### Fork the repository

In order to make changes you need to take a copy of the site into your own area on github, this is known as _forking_.  To do this, go to the main Monday Night Skippys [github repository](https://github.com/mondaynightskippys/mondaynightskippys.github.io) and click "Fork"


![Fork the Repository](/images/help/contribute/fork.png){: .w-75 .img-thumbnail .mx-auto .d-block .shadow }

Once you have created a fork it should be visible in your own github space and look something like this

![View you forked the Repository](/images/help/contribute/forked-full.png){: .w-50 .img-thumbnail .mx-auto .d-block .shadow }

### Make changes

The next step is to make some changes to the site.  This example will cover updating a driver profile.

* Click the `_driverss` folder, you should see a list of driver names, e.g. `darrell_taylor.md`
* Click the driver you want to update, for this example use `darrell_taylor.md`
* Click the edit icon: ![Edit](/images/help/contribute/edit.png){: height="50em" }

You should see something like this:

![Edit file](/images/help/contribute/edit-full.png){: .w-75 .img-thumbnail .mx-auto .d-block .shadow }

Make changes to the file, and commit them to the `master` branch, add a useful short comment to describe what you changed.

![Commit changes](/images/help/contribute/commit-changes.png){: .w-75 .img-thumbnail .mx-auto .d-block .shadow }

_Advanced: You could also commit to your own local branch, but for now use master_

Continue making changes until you are ready to create a pull request to get the changes approved and live on the site.

### Create a Pull Request

This is the last few click to contribute your changes to the website.

Go to the [Pull Requests](https://github.com/mondaynightskippys/mondaynightskippys.github.io/pulls) page of the main Monday Night Skippys page and click "New pull request":

![Pull Request](/images/help/contribute/pull-request.png){: .w-75 .img-thumbnail .mx-auto .d-block .shadow }

This will take you to a Compare Changes page, you will need to click "compare across forks" to make it look like this:

![Compare Changes](/images/help/contribute/compare-changes.png){: .w-75 .img-thumbnail .mx-auto .d-block .shadow }

Choose your fork from the "head fork" drop down, the default will be pointing at the main `mondaynightskippys`, change it to yours:

![Head Fork](/images/help/contribute/head-fork.png){: .w-75 .img-thumbnail .mx-auto .d-block .shadow }

Leave the compare menu as `master` (unless you have followed the _Advanced_ option and created your own branch).  The page should update to display the changes you have made, e.g.:

![Diff](/images/help/contribute/compare-changes-diff.png){: .w-75 .img-thumbnail .mx-auto .d-block .shadow }

Click the green "Create pull request" button and fill in any details that are relevant, if your pull request related to an [issue](https://github.com/mondaynightskippys/mondaynightskippys.github.io/issues) then tag that in the description (use the tools on the toolbar), then you are ready, click the green "Create pull request" button again to submit it:

![Create Pull Request](/images/help/contribute/create-pull-request.png){: .w-75 .img-thumbnail .mx-auto .d-block .shadow }

Congratulations!  You have made your first contribution to the website!

## Reference

* [Utah government](https://gis.utah.gov/about/contributing/) has a very good guide for their site.
