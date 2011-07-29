# Python RFC 3339 implementation

Implementation of the majority of
<http://www.ietf.org/rfc/rfc3339.txt>. Provides an implementation of
`tzinfo` for UTC (why isn't this in the standard library?) as well as
various parsing and formatting routines based on RFC 3339's syntax for
dates and times.

Use datetime.datetime.isoformat() as an inverse of the various parsing
routines in this module.

This library sticks quite closely to the RFC 3339 profile of ISO
8601. If that's too strict for you, and you need something for parsing
more general ISO 8601 dates and times, you might find
[pyiso8601](http://code.google.com/p/pyiso8601/) (in debian as package
[`python-iso8601`](http://packages.debian.org/search?keywords=python-iso8601))
useful.

## Examples and documentation

See the docstrings in the rfc3339 module source code itself.

## Limitations and potential improvements

Limitations, with respect to RFC 3339:

 - Section 4.3, "Unknown Local Offset Convention", is not implemented.

 - Section 5.6, "Internet Date/Time Format", is the ONLY supported format
   implemented by the various parsers in this module. (Section 5.6 is
   reproduced in its entirety below.)

 - Section 5.7, "Restrictions", is left to the datetime.datetime constructor
   to implement, with the exception of limits on timezone
   minutes-east-of-UTC magnitude. In particular, leap seconds are not
   addressed by this module. (And it appears that they are not supported
   by datetime, either.)

Potential Improvements:

 - Support for leap seconds. (There's a table of them in RFC 3339 itself,
   and <http://tf.nist.gov/pubs/bulletin/leapsecond.htm> updates monthly.)

## Copyright

rfc3339.py -- Implementation of the majority of RFC 3339 for python.  
Copyright (c) 2008, 2009, 2010 LShift Ltd. <query@lshift.net>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
