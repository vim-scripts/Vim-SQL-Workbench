Improvements
----------------------------------------

* add an option to change or not automatically the window to the results panel
  *DONE*
* take out the vars (they should be used just with wbvardef) *DONE*
* add the possibility to send a command from command line (this is usefull for
  making shortcuts for various commands; also, this could be used for
  variables, to automatically make a variable somehow or for changing the layout
  from record to tab and other way around) *DONE*
* after a command from command line, the possibility to view the result in a
  temporary buffer *DONE*
* add a message after finishing a command *DONE*
* autocomplete for wbconnect *DONE*
* autocomplete with grammars
* make it work with build 117 *DONE*
* some profiling *DONE*

Bugs
----------------------------------------

* when launching a command that takes time from a vim instance in a
  dbexplorer, then when launching another command from another vim instance in
  async mode, when getting out from the buffer and comming back, vim will block,
  waiting for the dbexplorer command to finish. 
* when using display as record, fucked up *FIXED*
