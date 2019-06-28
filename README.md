# ICitron

ICitron is a Citron kernel for the [Jupyter Notebook]().
The Jupyter notebook is some fancy...thing...that combines text documents with code execution for a bunch of programming languages.
The execution of code is done through a kernel that uses its messaging protocol.

## The current state of this thing

Things that don't work, period:
+ Code Completion is not implemented
+ Syntax highlighting is ruby's, so expect lots of wrong highlights


Things that sometimes break:
+ IO stream redirects are not redirected, but `JupyterPen` can write to the stdout of the cell
+ Execution of too many code blocks at once prompts Jupyter to restart the kernel (for no apparent reason?)
+ no Heartbeat messages are sent, so none are handled


Things that work:
+ the `Display` object can control the cell output format~

## Installation
You're nuts.

Requires:

+ [Citron](https://github.com/alimpfard/citron)
+ `Openssl` (if you're using windows, go away)

How-to:
+ run `install_script.sh`
+ `jupyter notebook` 
+ select "Citron Kernel"

Here's a screenshot
![Screenshot: Hello](images/screenshot-hello.png)
