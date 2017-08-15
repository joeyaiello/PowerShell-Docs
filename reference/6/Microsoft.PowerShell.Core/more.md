---
ms.date:  2017-06-09
schema:  2.0.0
locale:  en-us
keywords:  powershell,cmdlet
---

# more

## SYNOPSIS
A built-in function that paginates output.

## SYNTAX

```
more
```

## DESCRIPTION
When console output returns more lines than are available in the visible buffer,
pagination splits output so that you can view pieces of it at a time.

On Windows, `more` uses `more.com` to do pagination.
On non-Windows platforms, `more` first checks for a default pager via `$env:PAGER`,
and then falls back to use `less` if `$env:PAGER` isn't defined.

With most of these pagers, use the Enter key to go down one line,
the Space key to go down a page, and the Q key to quit.

## EXAMPLES

### Example 1: Paginate the output of Get-Command
```powershell
Get-Command | more
```

`Get-Command` returns a long list of available commands that will quickly flow past your console buffer.
`more` will split this output until multiple pages so that you can read them all without scrolling up in your terminal.

## PARAMETERS

## INPUTS

### None

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS
