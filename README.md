# ICitron

ICitron is a Citron kernel for the [Jupyter Notebook]().
The Jupyter notebook is some fancy...thing...that combines text documents with code execution for a bunch of programming languages.
The execution of code is done through a kernel that uses its messaging protocol.

## The current state of this thing

Things that don't work, period:
+ Signing is broken (set session key to `b''` to get around this
+ Code Completion is not implemented
+ Syntax highlighting is nonexistent
+ IO streams are not redirected
+ The kernel will sit and look at you for a few restarts (:shrug:)


Things that sometimes break:
+ Execution of too many code blocks at once prompts Jupyter to restart the kernel (for no apparent reason?)
+ no Heartbeat messages are sent, so none are handled


Things that work:
+ Once the kernel is up and connected, expressions can be executed.
+ Unary/Binary messages don't require an ending dot
+ Keyword messages _must_ end in a dot.

## Installation
You're nuts.

Requires:

+ [Citron](https://github.com/alimpfard/citron)
+ `Openssl` (if you're using windows, go away)

How-to:

write a kernel.json file according to [this](https://jupyter-client.readthedocs.io/en/stable/kernels.html#kernel-specs), or copy the ready one (hopefully once I add it)
to `~/.local/share/jupyter/kernels/citron`


**This also works with Jupyter Lab** (Why would it not?)

Here's a screenshot
![Screenshot: Hello](images/screenshot-hello.png)
