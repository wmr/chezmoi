#
# Sets shell behavior options
#
# (c) 2017 wmr <wmr101@gmail.com>
#


#
# Quoting & special chars
#


# Allow the character sequence ‘''’ to signify a single quote within
# singly quoted strings. Note this does not apply in quoted strings
# using the format $'...', where a backslashed single quote can be used.
setopt rc_quotes

# Assume that the terminal displays combining characters correctly
# If this option is set, the pattern test [[:WORD:]] matches a
# zero-width punctuation character
setopt combining_chars


#
# Job control
#

# Treat single word simple commands without redirection as candidates
# for resumption of an existing job.
setopt auto_resume

# List jobs in the long format by default
setopt long_list_jobs

# Report the status of background jobs immediately, rather than waiting
# until just before printing a prompt.
setopt notify


#
# Input/Output
#

# Disable auto correction
unsetopt correctall
unsetopt correct

# Do NOT print a warning message if a mail file has been accessed
# since the shell last checked.
unsetopt mail_warning

# Set key sequence wait time to .1 seconds
export KEYTIMEOUT=1
