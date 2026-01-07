# APEX-EXPORTS
Exports of APEX APPLICATIONS

## Accessing older versions
To access older versions of the application, check the Git commit history of this repository. From there you can browse any commit to view the exported files as they existed at that point in time.

Note: The complete export file is included starting from commit e5aea49.

## Releases (newest to oldest)

### 5.1
Improvements over 5.0 focused on developer clarity, UI diagnostics, and safer error handling.

- Plugin improvements
  - Added comments across HTML, JavaScript, and CSS files.
  - JavaScript now includes step-by-step comments explaining what the code is doing.
  - Added debug messages that display in the UI.
- Error handling
  - GET_RESPONSE and GET_SQL_RESULTS now check for data retrieval errors and return the details to the JavaScript layer for display in the UI.
- Data model
  - Table names changed from OCW23 to NL2SQL (column names remain the same).
- Notes
  - Exact plugin diffs are unavailable because the plugin is hex encoded in the export.

### 5.0
- Included conversational history.
- Works off the original OCW23 table names.
- Initial export from Derrick as of December 19, 2025.
