if (!exists('g:extra_sw_tabs'))
    let g:extra_sw_tabs = {}
endif

let sw_columns = {'title': 'Columns', 'shortcut': 'C', 'command': 'desc %object%;'}

let sw_sql_source = {'title': 'SQL Source', 'shortcut': 'S', 'command': 'WbGrepSource -searchValues="%object%" -objects=%object% -types=* -useRegex=true;', 'skip_columns': [0, 1], 'hide_header': 1, 'filetype': 'sql'}

let sw_data = {'title': 'Data', 'shortcut': 'D', 'command': 'set maxrows=100; select * from %object%;'}

let sw_indexes = {'title': 'Indexes', 'shortcut': 'I', 'command': 'WbListIndexes -tableName=%object%;'}

let sw_referenced_by = {'title': 'Referenced by', 'shortcut': 'R', 'command': 'WbGrepSource -searchValues="references %object%" -types=TABLE -useRegex=false;', 'skip_columns': [2]}

let objects = {'title': 'Objects', 'shortcut': 'O', 'command': 'WbList -objects=% -types=SYNONYM,SEQUENCE,TABLE,TYPE,VIEW', 'panels': [sw_columns, sw_sql_source, sw_data, sw_indexes, sw_referenced_by]}

let procedures = {'title': 'Procedures', 'shortcut': 'P', 'command': 'WbListProcs;', 'panels': [sw_sql_source]}
        
let triggers = {'title': 'Triggers', 'shortcut': 'T', 'command': 'WbListTriggers;', 'panels': [sw_sql_source]}

let g:SW_Tabs = {'*': [objects, procedures, triggers]}


for _profile in items(g:extra_sw_tabs)
    let profile = _profile[0]
    let tabs = _profile[1]
    if (!has_key(g:SW_Tabs, profile))
        let g:SW_Tabs[profile] = []
    endif
    for tab in tabs
        call add(g:SW_Tabs[profile], tab)
    endfor
endfor
