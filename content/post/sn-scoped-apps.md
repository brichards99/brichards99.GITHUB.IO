---
title: "ServiceNow Scoped Applications"
date: 2019-01-13T00:00:00-04:00
draft: false
tags: ['servicenow, development']
category: ['servicenow']
author: Brian Richards
---

#ServiceNow application development notes#

I am hesitant to characterize this as a 'best practices' post or a 'developer's guide' of any kind, because what I have come to believe after making use of application scope in ServiceNow for the last couple of years is that it is ultimately just another feature of the product. And as such there are many 'right' ways of taking advantage of application scopes for a project.

* Let's start with the first point I want to make: application scopes are not the same thing as applications. Nor are they the same thing as projects. If you're going to build something on the platform 'project' is the term you use for the way you manage your development effort, and 'application' is the term you use for the thing a user uses in order to do work. 'Scope' is different from both of these, and really just applies to a meta-information-linked set of objects that you have some tools to manipulate on the platform differently than things that are not in a 'scope.'

* So what can you do with a scoped application? Here's what I have found to be useful.

1. You can publish a scoped application as a container-ish thing from one instance to another easily as a one click action. Conversely you can easily uninstall that application in a similar easy manner. This is pretty nice.

2. You view all your scoped objects in a nice development interface called the Studio that helps to keep things organized. It does not really do much for your development process of, say, a business rule that cannot already do in the platform, but the organization thing is nice.

3. You use Git to back up your scoped application stuff to a third party environment (I've done this with both Github and Gitlab) so that you can, for example, transfer a project to a personal development instance to hack away. Don't get too excited about this relationship with Git things, however. While it is possible to work with branches and stashes when you use a repository, there are a few important things you cannot do. Such as merge branches. It's also valuable to know that switching branches causes the instance to uninstall and then reinstall the application. Which may or may not be a traumatic experience for you.

* This leaves a list of things that I have struggled with when it comes to scoped application development, and I think a number of other people have had similar problems:

1. The Scoped API is limited. I run across this very often while doing Service Portal work in scope, but it's certainly not limited. The trick here, however, is that finding code that is not allowed 'in scope' is often the result of copying code from another source. A global source. With a little diligence and lot of code cleanup you can almost always do what you want to do within the Scoped API, although it often requires some flavor of workaround.

2. Configuration thingies don't stick to scoped applications well. Two good examples of this are user criteria in service portal and home  page -based links in application menus. The many-to-many tables that these things need to write to are such that they do not 'save' with your application, and almost always have to be a post-release configuration step.

3. Doing anything that extends an existing application (such as a customized implementation of asset) will stumble on all the cross-scope-application stuff. Very sticky.

In all I believe developing in scope is a much better approach from a release perspective. The control we have over installing, updating, and removing applications is terrific. For development, however, building things in scope slows things down. For good or for bad, you need to plan your work better and perhaps do less 'copy a thing from out of box and make it my own.' If you can build from scratch, you're going to be in good shape.