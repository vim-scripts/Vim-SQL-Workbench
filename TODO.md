* highlight the table selected when something in the left panel - *DONE*

* export - *DONE*

* add_tab should just send an array of panels as a fifth parameter - *DONE*

* when selecting an sql source, add a file type. In fact, put the filetype in
  the settings and change it with change_panel. If no filetype defined, then
  default back to txt - *DONE*

* the possibility to change the column to rows and then get back to normal
  layout - *DONE*

* change the maxrows query. the documentation states that the set maxrows in
  console mode will keep the rows until called again. (the problem is that we
  don't have a continous connection, so I don't know if this will work, but
  something must be different for export to work) - *DONE*

* on the left panel to handle blob columns

* the possibility to change the connection schema - *NOT POSSIBLE*

* check if the csv.vim plugin is installed, and if yes, add the option to see
  the columns as CSV. Also, take advantage of this in the sql command window

* export in the sql command - *DONE*

* take out the comments in the sql command - *NOT NECESSARY*

* don't keep the wbdisplay or set maxrows in the `last_sql_query` when added
  via options - *DONE*

* db explorer to work with connection details - *DONE*

* search data structure - *DONE*

* search database data - *DONE*

* move the settings in the resource folder. If a global variable is default,
  then load them from there, otherwise load them from a file. This way, one
  can define his own db explorer panel from scratch - *DONE*

* replace wincmd with `sw#goto_window`

* parse the `profile.xml` file from sql workbench to give autocomplete for
  profile names - *DONE*

* in the dbexplorer, the source view should eliminate the first column - *DONE*

* see easy the profile from an sql buffer - *JUST SET A MAP IN VIMRC FOR ECHO
  B:PROFILE*

* move the autocomplete cache in the b: variable. Like this, it will be saved
  with the session - *DONE*

* the possibility to just add a profile on an already opened sql file - *DONE*

* the possibility to set the autocomplete from a buffer as default for all sql
  buffers - *DONE*

Bugs
----------------------------------------

* when opening 2 sql buffers on the same profile - *FIXED*
* highlight on search data still not working properly
* if the folder location changes, the variables will not be restored, since
  the key is the buffer name - *FIXED*
* ignore comments on autocomplete - *FIXED*
* autocomplete is case sensitive - *FIXED*
* when autocomplete files for swsqlopen, add a path at the end if it's a
  folder - *NOT WORTH*
* in dbexporer, get source looses the last row - *FIXED*

Help sections
----------------------------------------

* profile manager
* db explorer (mention also the panel and the -- AFTER comment)
* extending
* sql buffer
* shortcuts
* autocomplete
* search

Commands: 
----------------------------------------

* SWDbExplorer <profile>
* SWDbExplorerDirect parameters
* SWDbExplorerClose <profile>
* SWDbExplorerChangeSchema <new-schema>
* SWSqlOpen <profile> <file> <command>
* SWSqlOpenDirect <file> <command> parameters
* SWSqlExecuteCurrent
* SWSqlExecuteSelected
* SWSqlExecuteAll
* SWSqlDisplayResultsAs <what>
* SWSqlMaxResults <n>
* SWSqlDelimiter <new-delimiter>
* SWSqlAbortOnErrors <0|1>
* SWSqlShowFeedback
* SWSqlToggleMessages
* SWSqlToggleFormDisplay
* SWSqlObjectInfo
* SWSqlObjectSource
* SWSqlExport
* SWSqlAutocomplete
* SWSearchObject
* SWSearchObjectAdvanced
* SWSearchObjectDefaults
* SWSearchData
* SWSearchDataAdvanced
* SWSearchDataDefaults
