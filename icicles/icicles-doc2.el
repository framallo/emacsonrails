;;; icicles-doc2.el --- Minibuffer input completion and cycling.
;;
;; Filename: icicles-doc2.el
;; Description: Minibuffer completion and cycling.
;; Author: Drew Adams
;; Maintainer: Drew Adams
;; Copyright (C) 1996-2008, Drew Adams, all rights reserved.
;; Created: Tue Aug  1 14:21:16 1995
;; Version: 22.0
;; Last-Updated: Sat Oct 18 15:04:21 2008 (-0700)
;;           By: dradams
;;     Update #: 23998
;; URL: http://www.emacswiki.org/cgi-bin/wiki/icicles-doc2.el
;; Keywords: internal, extensions, help, abbrev, local, minibuffer,
;;           keys, apropos, completion, matching, regexp, command
;; Compatibility: GNU Emacs 20.x, GNU Emacs 21.x, GNU Emacs 22.x
;;
;; Features that might be required by this library:
;;
;;   None
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;  Icicles documentation, part 2.
;;
;;  Files `icicles-doc1.el' and `icicles-doc2.el' contain the doc for
;;  Icicles, including how to install and use Icicles.  You can also
;;  read the Icicles doc, in formatted form, on the Emacs-Wiki Web
;;  site: http://www.emacswiki.org/cgi-bin/wiki/Icicles.  Emacs Wiki
;;  also has a few addtional pages about Icicles.  In particular, if
;;  you are new to Emacs, as well as Icicles, see this page:
;;  http://www.emacswiki.org/cgi-bin/wiki/EmacsNewbieWithIcicles.
;;
;;  This file continues the Icicles documentation, which starts in
;;  file `icicles-doc1.el'.
 
;;(@* "Index")
;;
;;  Index
;;  -----
;;
;;  If you have library `linkd.el' and Emacs 22 or later, load
;;  `linkd.el' and turn on `linkd-mode' now.  It lets you easily
;;  navigate around the sections of this doc.  Linkd mode will
;;  highlight this Index and render it more readable.  Likewise, for
;;  the cross-references and section headings throughout this file.
;;  You can get `linkd.el' here:
;;  http://www.emacswiki.org/cgi-bin/wiki/linkd.el.
;;
;;  (@file :file-name "icicles-doc1.el" :to "Documentation in File `icicles-doc1.el'")
;;  -----------------------------------------------------------
;;
;;  (@file :file-name "icicles-doc1.el" :to "Nutshell View of Icicles")
;;    (@file :file-name "icicles-doc1.el" :to "README for Non-Readers")
;;    (@file :file-name "icicles-doc1.el" :to "Toggle Options on the Fly")
;;    (@file :file-name "icicles-doc1.el" :to "Cycle Completion Candidates")
;;    (@file :file-name "icicles-doc1.el" :to "Display Completion Candidates")
;;    (@file :file-name "icicles-doc1.el" :to "Prefix Completion and Apropos Completion")
;;    (@file :file-name "icicles-doc1.el" :to "Chains of Simple Match Patterns - Progressive Completion")
;;    (@file :file-name "icicles-doc1.el" :to "Chip Away the Non-Elephant")
;;    (@file :file-name "icicles-doc1.el" :to "Choose Before You Act")
;;    (@file :file-name "icicles-doc1.el" :to "Help on Completion Candidates")
;;    (@file :file-name "icicles-doc1.el" :to "Perform Multiple Operations In One Command")
;;    (@file :file-name "icicles-doc1.el" :to "Completion Status Indicators")
;;    (@file :file-name "icicles-doc1.el" :to "Icicles Search")
;;    (@file :file-name "icicles-doc1.el" :to "Complete Key Sequences Too")
;;    (@file :file-name "icicles-doc1.el" :to "Available for Almost Any Input")
;;    (@file :file-name "icicles-doc1.el" :to "Component Icicles Libraries")
;;    (@file :file-name "icicles-doc1.el" :to "If You Are an Emacs-Lisp Programmer")
;;
;;  (@file :file-name "icicles-doc1.el" :to "Inserting Text Found Near the Cursor")
;;  (@file :file-name "icicles-doc1.el" :to "Background on Vanilla Emacs Input Completion")
;;  (@file :file-name "icicles-doc1.el" :to "Cycling Completions")
;;  (@file :file-name "icicles-doc1.el" :to "Traversing Minibuffer Histories")
;;  (@file :file-name "icicles-doc1.el" :to "Apropos Completions")
;;  (@file :file-name "icicles-doc1.el" :to "Expanded-Common-Match Completion")
;;  (@file :file-name "icicles-doc1.el" :to "Progressive Completion")
;;    (@file :file-name "icicles-doc1.el" :to "`M-*': Matching Additional Regexps")
;;    (@file :file-name "icicles-doc1.el" :to "Successive Approximation...")
;;    (@file :file-name "icicles-doc1.el" :to "`M-&': Satisfying Additional Predicates")
;;
;;  (@file :file-name "icicles-doc1.el" :to "Inserting a Regexp from a Variable")
;;  (@file :file-name "icicles-doc1.el" :to "What About Special-Character Conflicts?")
;;  (@file :file-name "icicles-doc1.el" :to "Alternative Libraries: Other Methods of Choosing Default Values")
;;  (@file :file-name "icicles-doc1.el" :to "Exiting the Minibuffer Without Confirmation")
;;  (@file :file-name "icicles-doc1.el" :to "*Completions* Display")
;;  (@file :file-name "icicles-doc1.el" :to "Icompletion")
;;    (@file :file-name "icicles-doc1.el" :to "icomplete+.el Displays the Number of Other Prefix Candidates")
;;    (@file :file-name "icicles-doc1.el" :to "Icicles Highlights the Input that Won't Complete")
;;    (@file :file-name "icicles-doc1.el" :to "Icompletion in *Completions*: Apropos and Prefix Completion")
;;
;;  (@file :file-name "icicles-doc1.el" :to "Sorting Candidates and Removing Duplicates")
;;    (@file :file-name "icicles-doc1.el" :to "Changing the Sort Order")
;;    (@file :file-name "icicles-doc1.el" :to "Defining New Sort Orders")
;;    (@file :file-name "icicles-doc1.el" :to "Different Sorts for Different Sorts of Uses")

;;  (@file :file-name "icicles-doc1.el" :to "Get Help on Candidates")
;;    (@file :file-name "icicles-doc1.el" :to "Use Candidate Help Like You Use Emacs Command `apropos'")
;;    (@file :file-name "icicles-doc1.el" :to "Other Icicles Apropos Commands")
;;
;;  (@file :file-name "icicles-doc1.el" :to "Multi-Commands")
;;    (@file :file-name "icicles-doc1.el" :to "What Is a Multi-Command?")
;;    (@file :file-name "icicles-doc1.el" :to "How Does a Multi-Command Work?")
;;
;;  (@file :file-name "icicles-doc1.el" :to "More about Multi-Commands")
;;    (@file :file-name "icicles-doc1.el" :to "Alternative Actions")
;;    (@file :file-name "icicles-doc1.el" :to "Deleting Objects")
;;
;;  (@file :file-name "icicles-doc1.el" :to "Icicles Tripping")
;;    (@file :file-name "icicles-doc1.el" :to "Defining Your Own Trips")
;;
;;  (@file :file-name "icicles-doc1.el" :to "Key Completion")
;;    (@file :file-name "icicles-doc1.el" :to "Completing Keys")
;;    (@file :file-name "icicles-doc1.el" :to "`S-TAB' Is Everywhere - Start With It")
;;    (@file :file-name "icicles-doc1.el" :to "Completing Keys By Name")
;;    (@file :file-name "icicles-doc1.el" :to "Completing Prefix Keys")
;;    (@file :file-name "icicles-doc1.el" :to "Meta Key Bindings")
;;    (@file :file-name "icicles-doc1.el" :to "Navigate the Key-Binding Hierarchy")
;;    (@file :file-name "icicles-doc1.el" :to "Local Bindings Are Highlighted")
;;    (@file :file-name "icicles-doc1.el" :to "Completing Keys By Just Hitting Them")
;;    (@file :file-name "icicles-doc1.el" :to "Key and Command Help")
;;    (@file :file-name "icicles-doc1.el" :to "`S-TAB' Is a Multi-Command")
;;    (@file :file-name "icicles-doc1.el" :to "Possible Source of Confusion")
;;    (@file :file-name "icicles-doc1.el" :to "Three-Key Emacs")
;;    (@file :file-name "icicles-doc1.el" :to "Entering Special and Foreign Characters")
;;    (@file :file-name "icicles-doc1.el" :to "Handling Keymaps That Are Inaccessible From the Global Map")
;;
;;  (@file :file-name "icicles-doc1.el" :to "Icicles Multi `M-x'")
;;    (@file :file-name "icicles-doc1.el" :to "Examples of Using Multi `M-x'")
;;      (@file :file-name "icicles-doc1.el" :to "What about describe-variable and describe-function?")
;;
;;    (@file :file-name "icicles-doc1.el" :to "Multi `M-x' Turns Every Command into a Multi-Command")
;;
;;  (@file :file-name "icicles-doc1.el" :to "Choose All Completion Candidates")
;;  (@file :file-name "icicles-doc1.el" :to "Sets of Completion Candidates")
;;    (@file :file-name "icicles-doc1.el" :to "Saving and Retrieving Completion Candidates")
;;    (@file :file-name "icicles-doc1.el" :to "Different Places for Saving and Retrieving Candidates")
;;    (@file :file-name "icicles-doc1.el" :to "Set Operations")
;;
;;  (@file :file-name "icicles-doc1.el" :to "Google Matching")
;;    (@file :file-name "icicles-doc1.el" :to "Domain of Discourse")
;;    (@file :file-name "icicles-doc1.el" :to "Global Filtering")
;;    (@file :file-name "icicles-doc1.el" :to "Word Matching and String Matching")
;;    (@file :file-name "icicles-doc1.el" :to "AND Matching and OR Matching")
;;    (@file :file-name "icicles-doc1.el" :to "NOT Matching")
;;
;;  (@file :file-name "icicles-doc1.el" :to "File-Name Input and Locating Files Anywhere")
;;    (@file :file-name "icicles-doc1.el" :to "Function `read-file-name'")
;;    (@file :file-name "icicles-doc1.el" :to "Function `completing-read'")
;;    (@file :file-name "icicles-doc1.el" :to "Icicles Commands that Read File Names")
;;    (@file :file-name "icicles-doc1.el" :to "Absolute File Names and Different Directories")
;;
;;  (@file :file-name "icicles-doc1.el" :to "Persistent Sets of Completion Candidates")
;;    (@file :file-name "icicles-doc1.el" :to "Saving Candidates in Cache Files")
;;    (@file :file-name "icicles-doc1.el" :to "Filesets and Icicles Saved Completion Sets")
;;    (@file :file-name "icicles-doc1.el" :to "Improving Performance with Persistent Sets")
;;      (@file :file-name "icicles-doc1.el" :to "Avoid Remote File-Name Completion")
;;      (@file :file-name "icicles-doc1.el" :to "Avoid Generating A Large Completion Set")
;;
;;  (@file :file-name "icicles-doc1.el" :to "Dealing With Large Candidate Sets")
;;  (@file :file-name "icicles-doc1.el" :to "History Enhancements")
;;    (@file :file-name "icicles-doc1.el" :to "What Input, What History?")
;;    (@file :file-name "icicles-doc1.el" :to "Overview of Minibuffer History Enhancements")
;;    (@file :file-name "icicles-doc1.el" :to "Using Completion to Insert Previous Inputs: `M-o'")
;;    (@file :file-name "icicles-doc1.el" :to "Putting Previous Candidates First: `C-M-,'")
;;    (@file :file-name "icicles-doc1.el" :to "Matching Only Historical Candidates: `M-h' and `M-pause'")
;;
;;  (@file :file-name "icicles-doc1.el" :to "Isearch Enhancements")
;;    (@file :file-name "icicles-doc1.el" :to "Launch Occur using the Isearch Search String")
;;    (@file :file-name "icicles-doc1.el" :to "Launch Icicles Search using the Isearch Search String")
;;
;;  (@* "Documentation in File `icicles-doc2.el'")
;;  ----------------------------------------------
;;
;;  (@> "Icicles Search Commands, Overview")
;;    (@> "Introduction: On Beyond Occur...")
;;    (@> "How Icicles Search Works")
;;    (@> "Why Use 2 Search Patterns?")
;;    (@> "Search Multiple Buffers, Files, and Saved Regions")
;;    (@> "User Options for Icicles Searching")
;;    (@> "Using Regexps With Icicles Search")
;;
;;  (@> "Search and Replace")
;;  (@> "Other Icicles Search Commands")
;;    (@> "Icicles Imenu")
;;      (@> "`icicle-imenu' Combines Benefits of Imenu and Emacs Tags")
;;    (@> "Compile/Grep Search")
;;    (@> "Input Reuse in Interactive Interpreter Modes")
;;    (@> "Define Your Own Icicles Search Commands")
;;
;;  (@> "Multiple Regions")
;;  (@> "Icicles Tags Enhancements")
;;    (@> "`icicle-find-tag': Find Tags in All Tags Tables")
;;    (@> "`icicle-find-first-tag': Find First Tag in Current Table")
;;    (@> "`icicle-tags-search': Search and Replace Using Tags")
;;  (@> "Icicles Dired Enhancements")
;;    (@> "Search-and-Replace Marked Files")
;;    (@> "Save Marked Files as Completion Candidates")
;;    (@> "Open Dired for Saved File Names")
;;    (@> "Marked Files as a Project")
;;  (@> "Icicles Info Enhancements")
;;    (@> "Icicles Completion for Info")
;;    (@> "Using Icicle-Search With Info")
;;
;;  (@> "Support for Projects")
;;    (@> "Defining and Saving Sets of Files, Buffers, Regions")
;;    (@> "Navigating Among Code Definitions")
;;    (@> "Searching Project Files")
;;    (@> "Retrieving and Reusing a Saved Project")
;;    (@> "Semantics? Roll Your Own?")
;;
;;  (@> "Using Complex Completion Candidates")
;;  (@> "Icicles OO: Object-Action Interaction")
;;    (@> "Apropos Completion as OO")
;;    (@> "M-RET")
;;    (@> "`icicle-object-action' and `icicle-anything'")
;;    (@> "Icicles with Anything")
;;
;;  (@> "Multi-Completions")
;;    (@> "Icicles Multi-Completion Commands")
;;    (@> "How Multi-Completions Work")
;;    (@> "Multi-Completions vs `completing-read-multiple'")
;;
;;  (@> "Fuzzy Completion")
;;    (@> "Scatter-Match Completion")
;;    (@> "Fuzzy-Match Completion")
;;  (@> "Completion in Other Buffers")
;;    (@> "Dynamic Abbreviation")
;;    (@> "BBDB Completion")
;;    (@> "Thesaurus Completion")
;;    (@> "Shell Command Completion")
;;
;;  (@> "Customization and General Tips")
;;    (@> "Using Icicles with Delete Selection Mode")
;;    (@> "Icicles User Options and Faces")
;;
;;  (@> "File-Name and Directory-Name Completion Tips")
;;  (@> "Key Bindings")
;;    (@> "Global Bindings")
;;    (@> "Icicles-Mode Bindings")
;;    (@> "Minibuffer Bindings")
;;
;;  (@> "Customizing Key Bindings")
;;    (@> "Customizing Menu-Bar Menus")
;;    (@> "Customizing Minibuffer Bindings")
;;
;;  (@> "Icicles Redefines Some Standard Commands")
;;  (@> "Programming Multi-Completions")
;;    (@> "Variable icicle-list-use-nth-parts")
;;    (@> "Variable icicle-candidate-properties-alist")
;;    (@> "What You See Is Not What You Get")
;;
;;  (@> "Text Properties in *Completions*")
;;    (@> "Using Property icicle-special-candidate")
;;    (@> "Applying Text Properties to a Candidate String")
;;  (@> "Defining Icicles Commands (Including Multi-Commands)")
;;    (@> "Nothing To It!")
;;    (@> "Multi-Commands Are Easy To Define Too")
;;    (@> "Are Users Dependent on Icicles To Use Multi-Commands?")
;;
;;  (@> "Defining Multiple-Choice Menus")
;;  (@> "Defining Icicles Multi `M-x'")
;;    (@> "How Multi `M-x' is Defined")
;;
;;  (@> "Defining Multi-Commands the Hard Way")
;;  (@> "Global Filters")
;;  (@> "Note to Programmers")
;;  (@> "La Petite Histoire")
;;  (@> "Note on Non-nil `pop-up-frames' on MS Windows")
 
;;(@* "Icicles Search Commands, Overview")
;;
;;  Icicles Search Commands, Overview
;;  ---------------------------------
;;
;;  This section provides an overview of Icicles search.
;;
;;  See Also:
;;
;;  * The doc string (`C-h f') of command `icicle-search'; it provides
;;    general information about Icicles search.
;;
;;  * (@> "Other Icicles Search Commands") for specialized Icicles
;;    search commands, including search in particular buffers.
;;
;;  * (@> "Icicles Info Enhancements") for information about using
;;    Icicles to search in Info mode.
;;
;;  * (@> "Multiple Regions") for information about searching
;;    multiple regions.
;;
;;  * (@> "Support for Projects") for information about using `grep'
;;    to search all of the files in a project.
;;
;;(@* "Introduction: On Beyond Occur...")
;;  ** Introduction: On Beyond Occur... **
;;
;;  You've no doubt used standard Emacs command `occur'.  It finds all
;;  lines in a buffer that match a regexp that you enter.  It displays
;;  the matching lines as links in buffer *Occur* - you can click a
;;  link to navigate to the corresponding line in the original buffer.
;;  Using buffer *Occur* is similar to using the output of the Emacs
;;  `grep' command.
;;
;;  Command `icicle-occur' is similar to `occur', but instead of
;;  entering a regexp (with `RET') you type a regexp and then use
;;  `S-TAB' to show the matching lines in buffer `*Completions*'.  As
;;  usual in Icicles, you can complete to a single candidate, or cycle
;;  among candidates to choose one.  To navigate to a match in the
;;  original buffer, use `C-RET', `C-mouse-2', `C-next', or `C-prior'.
;;  One advantage of `icicle-occur' over `occur' is that you can
;;  change the regexp on the fly to match different sets of lines.
;;
;;  Another, major advantage is that you can use progressive
;;  completion to find lines that match multiple regexps.  A similar,
;;  but less interactive, effect can be had using chained `grep'
;;  commands, but it is otherwise not possible with other search
;;  methods such as regexp Isearch.  A regexp simply cannot express
;;  intersection ("and") except in the limited form of "followed by".
;;
;;  Command `icicle-search' is a generalization of `icicle-occur'.
;;  You enter an initial, search-context regexp (using `RET'), which
;;  defines a set of completion candidates: all of the matching
;;  strings in the current buffer (by default).  These candidates are
;;  called "search contexts".
;;
;;  Command `icicle-occur' is really `icicle-search' with an implicit
;;  initial regexp of `.*' (which you do not enter, however).  That
;;  is, the initial completion candidates for `icicle-occur' are all
;;  of the lines of the buffer (`.' matches any character except a
;;  newline).
;;
;;  With `icicle-search', the candidates need not be single, complete
;;  lines; they can be any strings in the buffer, including
;;  multiple-line strings.  Your initial regexp is used over and over
;;  to find the set of matching strings in the region or buffer that
;;  you search.  These strings then serve as the completion
;;  candidates.
;;
;;  For example, you might use a search-context regexp of "[^^L]*[^L]"
;;  to search pages or "[^.?!]+[.?!][]\"')}]*[ ^I^J]*" to search
;;  sentences.
;;
;;  (`^L' is the page-separator character.  This assumes that `.',
;;  `?', and `!' end sentences, and it allows for quoted sentences and
;;  sentences inside parentheses, brackets, and braces.  You input
;;  `^L', `^I', and `^J' using `C-q l', `C-q TAB', and `C-j'.)
;;
;;  Again, you can use progressive completion (`M-*') to match several
;;  different regexps within the same page or the same sentence.  For
;;  example, you could find all sentences that contain `character',
;;  `delete', and `backward', in any order, as follows:
;;
;;    C-` [^.?!]+[.?!][]\"')}]*[ C-q TAB C-j]* RET
;;    character M-* delete M-* backward
;;
;;  When you visit a search context, both `icicle-occur' and
;;  `icicle-search' highlight that hit.  For `icicle-occur', the
;;  search context is the current line.  For `icicle-search', it is
;;  whatever your search-context regexp matches.
;;
;;(@* "How Icicles Search Works")
;;  ** How Icicles Search Works **
;;
;;  There are several Icicles search commands, some of which are bound
;;  to keys in Icicle mode:
;;
;;  `C-c '',  `icicle-occur' - An `occur' with icompletion.
;;  `C-c `'   `icicle-search' - Seach buffer areas that match regexp.
;;            `icicle-search-buffer' - Search selected buffers.
;;            `icicle-search-file' - Search selected files.
;;            `icicle-search-region' - Search selected saved regions.
;;            `icicle-search-all-regions' - Search all saved regions.
;;  `C-c $'   `icicle-search-word' - Search for a whole word.
;;  `C-c ^'   `icicle-search-keywords' - Search with regexp keywords.
;;  `C-c `'   `icicle-compilation-search' - Search compilation hits
;;                                          (e.g `grep' hits).
;;  `C-c "'   ["] `icicle-search-char-property' -
;;               Search for a given character property value.
;;  `C-c ='   `icicle-imenu' - Navigate among Imenu entries.
;;            `icicle-imenu-command' -
;;               Navigate among Emacs command definitions.
;;            `icicle-imenu-non-interactive-function' -
;;               Navigate among Emacs non-interactive function
;;               definitions.
;;  `C-c TAB' `icicle-comint-command' - Retrieve a past shell command.
;;
;;  All operate in the same general way:
;;
;;  1. Unlike standard incremental search, Icicles search commands
;;     search the entire buffer, not just the part that follows the
;;     cursor.  If the region is active, however, then the search is
;;     confined to the region.  Some Icicles search commands let you
;;     search across multiple buffers, multiple files, or multiple
;;     saved regions.  Searching within one or more regions of text is
;;     a first way to limit the context of a search.
;;
;;  2. You limit the search context in a second way, by providing some
;;     information, such as a regexp or a character property (text or
;;     overlay property), that defines zones of text that you want to
;;     search.  You can use (lax) completion against previous input to
;;     enter the regexp or the character property.  In some cases, the
;;     information (e.g. regexp) to define the search context is
;;     provided automatically by the search command; for example,
;;     `icicle-occur' assumes that you want to search lines.
;;
;;  3. If you use a regexp to define the search context, and if that
;;     regexp has subgroups, that is, subexpressions of the form
;;     `\(...\)', then you are prompted for the subgroup to use to
;;     define the search context.  0 means the entire regexp match is
;;     used as a context.  1 means that whatever the first subgroup
;;     matches is used as a context, and so on.
;;
;;     Using a subgroup thus limits the search context in a third way.
;;     It lets you find a search match within a larger search-match
;;     context.  For example, you might choose a Lisp argument list as
;;     the search context, specifying that it must follow `(defun ':
;;     `(defun [^(]*\(([^(]*)\)'.  Subgroup 1 is the argument list.
;;     Specifying a subgroup search context helps you become more
;;     familiar with regexps.  Icicles search highlighting (see below)
;;     shows you the subgroup matches instantly.
;;
;;  4. You can limit the set of search contexts in a fourth way by
;;     using `M-&' to provide predicates that search-context
;;     candidates must satisfy.  Command `icicle-search' and its
;;     derivative functions use candidates of the form (CONTEXT
;;     . MARKER), where CONTEXT is a string, the search hit (search
;;     context), and MARKER is a buffer marker that locates the
;;     CONTEXT.  Predicates you supply to the `M-&' prompt must expect
;;     such candidates.  Only contexts that satisfy the predicate are
;;     found.  For example, if the predicate is (lambda (x) (commandp
;;     (intern-soft (car x)))), then only contexts that name Emacs
;;     commands are found.  Or, if you have a predicate `verbp' that
;;     tests whether a word is an English verb form, then you can use
;;     that to limit word matches to verbs.  In this way, you can
;;     combine purely syntactic searching (regexp or text-property
;;     match) with more semantic search criteria.  After building up a
;;     complex predicate by using `M-&', you can save it to a variable
;;     with `C-M-&' and then reuse it later with `C-='.  In addition
;;     to, or instead of, using `M-&', you can set user option
;;     `icicle-search-context-match-predicate' to a predicate that
;;     takes a CONTEXT as argument (the match string only, no MARKER).
;;     See also (@file :file-name "icicles-doc1.el" :to "Progressive Completion").
;;
;;  5. Icicles finds all of the qualified search contexts, and
;;     presents them to you as completion candidates.
;;
;;  6. You can navigate among the source-buffer search contexts, using
;;     the multi-command action keys (`C-next', `C-prior', `C-RET',
;;     `C-mouse-2').  The contexts are highlighted in the source
;;     buffer(s).
;;
;;  7. As always in Icicles, your current minibuffer input filters the
;;     set of current candidates - the search contexts, so that only
;;     those that contain matches to your input remain as candidates.
;;     This is a second level of matching: looking for a refinement
;;     pattern within the search contexts. And this constitutes a
;;     fifth way you can limit the set of search contexts.
;;
;;  8. As always in Icicles, this input can be a regexp.  This is
;;     ordinary apropos completion, applied to searching.  You don't
;;     type `RET' to enter this regexp, and you can change it on the
;;     fly to change the set of search hits.  Icicles searching is
;;     thus incremental, in the sense that changing your input
;;     dynamically changes the set of matching search hits.  Icicles
;;     searching is not incremental with respect to the initial,
;;     context matching, however.
;;
;;  9. As always in Icicles, you can type some input and then hit
;;     `C-~' to remove all candidates that match that input.  Then
;;     type some other input and hit `C-~' again to remove those
;;     matches.  Or you can use `M-&' to define a predicate, and then
;;     hit `C-~' to remove all candidates that satisfy that predicate.
;;     And so on.  And you can use `S-mouse-2' or the `delete' key to
;;     remove individual search hits.  These techniques let you chip
;;     away at the search set, removing hits that are uninteresting.
;;     This is a very powerful technique for both searching and
;;     search-and-replace (see next), and it constitutes a sixth way
;;     to limit the set of search contexts.  See also
;;     (@file :file-name "icicles-doc1.el" :to "Chip Away the Non-Elephant").
;;
;;  10. You can replace text while you search, forward, backward, or
;;     randomly.  You can replace entire search contexts or just the
;;     parts that match your current input.  You can use any
;;     replacement string that is allowed by `query-replace-regexp'.
;;     In Emacs 22 or later, this includes `\,', to substitute the
;;     result of a Lisp evaluation.  Use the alternative-action keys
;;     for replacement: `C-S-RET', `C-S-mouse-2', `C-S-next',
;;     `C-S-prior', `C-S-down', and `C-S-up'.  At the first use, you
;;     are prompted for the replacement string; it is used thereafter.
;;     You can use `C-|' (`icicle-all-candidates-alt-action') to
;;     replace all matches.  See (@> "Search and Replace").
;;
;;  11. When you visit a search context (using `C-mouse-2' or
;;     `C-next', for example), the part of the candidate that matches
;;     your input is highlighted.  An entire search context is
;;     highlighted in face `icicle-search-main-regexp-current', and
;;     the part that matches your input is highlighted in face
;;     `icicle-search-current-input'.  All other search contexts are
;;     also highlighted (in face `icicle-search-main-regexp-others').
;;
;;  12. User option `icicle-search-highlight-all-current-flag'
;;     controls whether the input matches are highlighted within each
;;     search context or only within the current context.  It,
;;     together with `icicle-expand-input-to-common-match-flag',
;;     control whether the input-match highlighting covers an expanded
;;     common match among all matches or just the exact input match.
;;
;;  13. If you do not use a subgroup to define the search context (as
;;     in #3, above), that is, if the search context corresponds to
;;     the entire search regexp, then up to eight context levels
;;     (subgroups) are each highlighted differently, using faces
;;     `icicle-search-context-level-1' through
;;     `icicle-search-context-level-8'.  This context-level
;;     highlighting is not done if user option
;;     `icicle-search-highlight-context-levels-flag' is nil.
;;
;;  You might have noticed that out of these 13 search features, 6
;;  constitute independent ways in which you can narrow or limit the
;;  set of search hits among which you can navigate.  Restricting the
;;  search space is in fact what search is all about, and Icicles
;;  offers you some unique tools to do this.
;;
;;  For several Icicles search commands, including `icicle-search'
;;  (`C-c `'), you provide an initial regexp to define the search
;;  contexts (step 1, above).  Why use two regexps to search (steps 1
;;  and 4, above)?  To make things simpler.  Regular expressions are
;;  powerful for searching, but they can also be cumbersome sometimes.
;;  Why not use one simple regexp to set up a set of candidates and
;;  then, optionally, use a second simple regexp to filter those
;;  candidates?  This is the same idea as that behind progressive
;;  completion with `M-*'.  (Using `M-*' together with the search
;;  commands serves no purpose; its filtering is not cumulative in
;;  this context.)
;;
;;  Like `icicle-occur' (`C-c ''), `icicle-search-word' (`C-c $') and
;;  `icicle-search-keywords' (`C-c ^') are variants of `icicle-search'
;;  that differ only in the regexp used.  Each accepts your input and
;;  converts it to a regexp that does the right thing.
;;  `icicle-search-word' just adds `\b' before and after the word you
;;  type, so that it matches at word boundaries.
;;  `icicle-search-keywords' wraps the keywords you provide as input
;;  with regexp grouping (`\(...\)') and alternative (`\|') syntax, so
;;  that search looks for any of the keywords.
;;
;;  "Keywords" here is an understatement. Each keyword is actually a
;;  regexp and is treated as such, unless you use `C-`' to turn on
;;  escaping of regexp special characters.  In that case, each keyword
;;  is matched as a substring.  At the `C-c $' prompt, you can use
;;  completion to choose keywords that you have already entered, or
;;  you can use `C-RET' to enter new keywords.
;;
;;  As a shortcut, you can use the search string during incremental
;;  search (Isearch) as the initial regexp for `icicle-search'.  You
;;  do this by hitting `S-TAB' during Isearch.  This ends Isearch and
;;  passes its search string to `icicle-search'.  This can be a handy
;;  way to start `icicle-search', picking up its search pattern by
;;  using, say, `C-s C-w C-w...'.
;;
;;
;;(@* "Search Multiple Buffers, Files, and Saved Regions")
;;  ** Search Multiple Buffers, Files, and Saved Regions **
;;
;;  If you provide a plain prefix argument (only `C-u') to most
;;  Icicles search functions, then you can search multiple regions,
;;  which can be in multiple buffers.  The regions are those in user
;;  option `icicle-region-alist', which you have previously defined
;;  using command `icicle-add-region'.  See (@> "Multiple Regions").
;;
;;  If you provide a non-negative numeric prefix argument (e.g. `C-9')
;;  to most Icicles search functions, then you can search multiple
;;  buffers - you are prompted for the buffers to search.  If the
;;  prefix argument is 99, then only buffers that are visiting files
;;  are candidates.  You can use `C-RET' and so on to choose
;;  individual buffers with completion.  You can use `C-!' to choose
;;  all buffers or all buffers that match a regexp.
;;  (See (@file :file-name "icicles-doc1.el" :to "Multi-Commands").)
;;
;;  Note: You can use `M-s i' in Ibuffer or Buffer Menu to search all
;;  marked buffers using Icicles search.  In Ibuffer, menu item
;;  `Icicles Search (and Replace)...' does the same thing as `M-s i'.
;;
;;  If you provide a negative numeric prefix argument (e.g. `C--') to
;;  most Icicles search functions, then you can search multiple files
;;  in the current directory - you are prompted for the files to
;;  search.  As for multiple-buffer searching, you can use `C-RET' and
;;  so on.
;;
;;  Note: You can use `M-s i' in Dired to search all marked files
;;  using Icicles search.  Menu item `Search (and Replace)...' is
;;  added to the Icicles submenu of menu `Multiple' (or `Operate'),
;;  and it does the same thing as `M-s i'.
;;
;;  As a convenience, some specialized Icicles commands are defined,
;;  corresponding to `icicle-search' with each of the prefix-argument
;;  cases: `icicle-search-all-regions', `icicle-search-buffer', and
;;  `icicle-search-file'.  If you often use `C-c `' with one of the
;;  prefix argument options, then you might want to bind one or more
;;  of these commands.  These commands are also available in the
;;  Icicles menu-bar menu (or the Search menu, if it exists).
;;
;;(@* "User Options for Icicles Searching")
;;  ** User Options for Icicles Searching **
;;
;;  You can customize the following user options, to control search
;;  and replacement behavior.
;;
;;  * If `icicle-add-buffer-name-flag' is non-nil (the default value),
;;    then, whenever you use a prefix argument, Icicles search
;;    functions annotate each candidate with the name of the buffer
;;    where the search hit occurs, highlighted, to help orient you.
;;    The buffer name is actually part of the (multi-completion)
;;    candidate, so you can match against it.  Note that even when the
;;    value of this option is nil, you can use `C-M-mouse-2', and so
;;    on, to see the buffer name, as well as the position of the
;;    search context in the buffer.
;;
;;  * Icicles search functions that use an initial regexp highlight
;;    the first `icicle-search-highlight-threshold' matches for that
;;    regexp at once (using face `icicle-search-main-regexp-others').
;;    The effect is similar to the Emacs 22+ lazy search highlighting
;;    of Isearch (except that the highlighting is not in fact lazy).
;;
;;  * If `icicle-search-highlight-all-current-flag' is non-nil, then
;;    Icicles search functions highlight your current input match
;;    within *all* search contexts at once.  If it is non-nil and
;;    `icicle-expand-input-to-common-match-flag' is also non-nil, then
;;    what is highlighted for each input match is the expanded common
;;    match among all input matches throughout the search area.  If
;;    either is nil, then only the exact input match is highlighted.
;;
;;    For example
;;    (see (@file :file-name "icicles-doc1.el" :to "Nutshell View of Icicles")),
;;    if the initial regexp defining the search context is
;;    `.*recursive.*', and your input is `edit', then searching file
;;    `icicles-doc1.el' highlights not `edit' but
;;    ``abort-recursive-edit'', which is the longest common match
;;    among all input matches.
;;
;;    If `icicle-expand-input-to-common-match-flag',
;;    `icicle-search-highlight-all-current-flag', and
;;    `icicle-search-replace-common-match-flag' are all non-nil, then
;;    a search replacement replaces the expanded common match;
;;    otherwise, it replaces only the exact match.
;;
;;    The default value of `icicle-search-highlight-all-current-flag'
;;    is nil, because non-nil can impact performance negatively if
;;    there are many search contexts - the highlighting is updated
;;    with each input change.  You can toggle the value at any time
;;    using command `icicle-toggle-highlight-all-current', bound to
;;    `C-^' in the minibuffer during Icicles search.
;;
;;  * If `icicle-search-cleanup-flag' is non-nil (the default value)
;;    then search highlighting is removed after the search.  If you
;;    set this to nil then you can remove search highlighting manually
;;    later using command `icicle-search-highlight-cleanup'.  You can
;;    toggle this search highlight removal at any time using command
;;    `icicle-toggle-search-cleanup', bound to `C-.' in the minibuffer
;;    (except during file-name completion).
;;
;;    One use of nil `icicle-search-cleanup-flag' is to highlight
;;    regexp matches throughout a region or buffer (or multiple files
;;    or...).  In that capacity, Icicles search functions act like
;;    some of the highlighting commands in my library `highlight.el'.
;;    Note that when `icicle-search-cleanup-flag' is nil, *all*
;;    Icicles search highlighting remains: last-visited search
;;    context, other context matches, current-input matches, and even
;;    regexp subgroups.  The faces for these are, respectively:
;;
;;    - `icicle-search-main-regexp-current'
;;    - `icicle-search-main-regexp-others'
;;    - `icicle-search-highlight-input-matches-here' (everywhere, if
;;      `icicle-search-highlight-all-current-flag' is non-nil)
;;    - `icicle-search-context-level-1' through
;;      `icicle-search-context-level-8'
;;
;;  * If `icicle-search-replace-whole-candidate-flag' is nil, then
;;    whatever matches your current input is replaced, within the
;;    current search context, when you perform replacement
;;    (e.g. `C-S-RET').  If the value is non-nil (the default value),
;;    then the entire search context is replaced, instead.  You can
;;    use `C-,' at any time during searching and replacing, to toggle
;;    the value.
;;
;;  * Command `icicle-search-word' (bound to `C-c $') always searches
;;    for a whole word: your initial search string is matched only
;;    against whole words.  Non-nil `icicle-search-whole-word-flag'
;;    makes other Icicles search commands also perform whole-word
;;    searching.  The search string you type is matched literally, but
;;    matches must start and end at word boundaries.  Because it is
;;    matched literally, all regexp special characters in the search
;;    string are escaped.  This means, for instance, that you can
;;    match `foo-bar' as a word, even in contexts (such as Emacs Lisp)
;;    where `-' is not a word-constituent character.  Similarly, you
;;    can match the literal four-character "word" `f.*g'.  You can use
;;    `M-q' while searching to toggle this option; the new value takes
;;    effect for the next complete search.
;;
;;  * You can toggle `icicle-use-C-for-actions-flag' at any time using
;;    `M-g' in the minibuffer.  This is handy for multi-commands that
;;    browse, such as Icicles search.  It means that you can use
;;    `next' and so on instead of `C-next' and so on to navigate among
;;    search hits.  See
;;    (@file :file-name "icicles-doc1.el" :to "Option `icicle-use-C-for-actions-flag'").
;;
;;  * `icicle-search-hook': Functions run after searching and moving
;;    to a match, whether by `RET' or `C-RET' (or `C-next' or
;;    `C-prior').
;;
;;  It can sometimes be useful to highlight all regexp matches using a
;;  large value of `icicle-search-highlight-threshold' and a nil value
;;  of `icicle-search-cleanup-flag', and then set
;;  `icicle-search-highlight-threshold' to zero and use an Icicles
;;  search function again with a different regexp to search through
;;  the same region or buffer.  This lets you see the relation between
;;  the two sets of regexp matches.
;;
;;(@* "Using Regexps With Icicles Search")
;;  ** Using Regexps With Icicles Search **
;;
;;  You can use Icicles search to find text entities of a certain kind
;;  - sentences, paragraphs, file names, URLs, and so on.  A
;;  convenient way to do this is to use `C-=' in the minibuffer
;;  (`icicle-insert-string-from-variable') to insert a predefined
;;  regexp that matches a particular kind of text entity.
;;
;;  For example, suppose you are in a mail client and you want to move
;;  between mail headers.  If you use a regexp that matches the header
;;  field you want (e.g. the sent date or sender) then Icicles search
;;  highlights all such occurrences and lets you navigate among them -
;;  instant mail browser!  Or, suppose you are in a C++ or Perl file
;;  and you want to navigate among function definitions or other
;;  definitions.  If you have a canned regexp that matches the start
;;  of a definition, then you can use `C-=' to quickly turn
;;  `icicle-search' into a code browser.  In a log file, navigate
;;  among date or time entries or IP addresses...  Of course, most
;;  programming modes and mail clients already provide other ways to
;;  navigate, but you get the idea - Icicles search provides a general
;;  way to navigate among things, as long as you can match them with
;;  regexps, and `C-=' lets you quickly access a library of predefined
;;  regexps.
;;
;;  You can find useful regexps to store in variables in the standard
;;  Emacs Lisp libraries.  Grep for `font-lock-keywords' or `regexp'
;;  in the Emacs `lisp' directory and its subdirectories.
;;
;;   See `align.el' for regexps for programming languages.
;;   See `url-dav.el' for regexps matching ISO 8601 dates.
;;   See `rmail.el', `sendmail.el', and `mh-show.el' for regexps
;;   matching mail-header fields.
;;
;;  Imenu regexps occurring as parts of different values of
;;  `imenu-generic-expression' for different buffer types can be used
;;  as variable values for `C-='.  They all work fine with
;;  `icicle-search', turning it into a navigator for the given mode.
;;  See, for example, `generic-x.el' and `lisp-mode.el'.  Here is a
;;  regexp for Javascript function definitions from `generic-x.el':
;;
;;   "^function\\s-+\\([A-Za-z0-9_]+\\)"
;;
;;  And `lisp-imenu-generic-expression' (in `lisp-mode.el') provides
;;  regexps for Lisp function, variable, and type definitions.  Here
;;  is the variable-definition regexp:
;;
;;   "^\\s-*(\\(def\\(c\\(onst\\(ant\\)?\\|ustom\\)\\|ine-symbol-macro
;;   \\|parameter\\|var\\)\\)\\s-+\\(\\(\\sw\\|\\s_\\)+\\)"
;;
;;  You certainly don't want to type a regexp like that into the
;;  minibuffer (and the function-definition regexp is twice as
;;  complex)!  Put it into a variable once and use `C-=' from then on
;;  to retrieve it - simple.
;;
;;  If it's so simple, then why not let a command do it?  This is
;;  exactly what command `icicle-imenu' (bound to `C-c =') does.  You
;;  don't need to bother looking up Imenu regexps and assigning them
;;  to variables for use with `C-=' and `icicle-search'-
;;  `icicle-imenu' does that for you automatically.
;;  See (@> "Other Icicles Search Commands").
;;
;;  In sum: For complete interactivity, type a regexp dynamically as
;;  input to `icicle-search'.  For isolated special regexps that you
;;  use, save them in variables and use `C-=' with `icicle-search'.
;;  For well-defined sets of regexps, especially if used frequently,
;;  define a command that uses `icicle-search'.  There is a spectrum
;;  of use cases for `icicle-search'.
;;
;;  Command `icicle-search' is very general and very powerful.  It
;;  might never replace incremental search - either regexp or literal
;;  string search, but in some cases it can be quite handy.  Think of
;;  it as another tool to add to your search-tool belt.  Admittedly,
;;  it does take a little getting used to.  Remember, in particular,
;;  that the initial, context regexp you enter (with `RET') cannot be
;;  changed without re-executing `icicle-search'.
;;
;;  And remember too that `C-l' (`icicle-retrieve-previous-input') is
;;  your friend - it clears the minibuffer during cycling, retrieving
;;  your last real input.  Use it to modify your second and subsequent
;;  regexps on the fly - those that filter the initial candidate list
;;  further.  You can repeat `C-l' to retrieve older completion
;;  inputs, and you can use `C-S-l' (that is, `C-L') to cycle previous
;;  inputs in the other direction.  See
;;  (@file :file-name "icicles-doc1.el" :to "History Enhancements").
;;
;;  Oh - And don't forget that you can do things like take the
;;  complement of your fine-tuning regexp matches, within the context
;;  of your coarse-tuning matches.  See
;;  (@file :file-name "icicles-doc1.el" :to "Sets of Completion Candidates").
;;
;;  For example, use `^.*defun.*$' as the main regexp, to find all
;;  lines containing `defun'.  Then type `icicle' to match only the
;;  lines with `defun' that also contain `icicle'.  Then complement
;;  (`C-~') that set, to see the lines that contain `defun' but not
;;  `icicle'.
;;
;;  And you can then save that set of matches, and then subtract it
;;  from another set of matches in a different search...  You get the
;;  idea.  When performing set operations combined with
;;  `icicle-search', keep in mind that the saved set does not include
;;  any position information - it is only a set of matching strings.
;;  So, in particular, a set-union operation (`C-+') is not useful
;;  with `icicle-search' (adding a saved set of strings without
;;  positions is useless).  Still, you can do things like match lines
;;  that contain `defun' followed somewhere by `()', and then subtract
;;  the (saved) set of lines in the same region that contain `icicle'.
;;  Try it in an Icicles library, using regexps `.*icicle.*$' and
;;  `^*.defun.*().*$'.
;;
;;  One more reminder: When you save a set of completion candidates
;;  (`C-M->'), make sure that you actually have a set of candidates to
;;  save!  It is not enough to just enter a regexp at the
;;  `icicle-search' prompt.  You must also use some Icicles command,
;;  such as `TAB', `S-TAB', `next', or `down' to tell Icicles how to
;;  create the candidate set - how to match the regexp.
;;
;;  See Also:
;;
;;  * The doc string (`C-h f') of command `icicle-search'; it provides
;;    general information about Icicles search.
;;
;;  * (@> "Other Icicles Search Commands") for specialized Icicles
;;    search commands `icicle-comint-search',
;;    `icicle-compilation-search', `icicle-imenu',
;;    `icicle-imenu-command', `icicle-imenu-non-interactive-function',
;;    `icicle-search-keywords', `icicle-search-char-property',
;;    `icicle-search-keywords', `icicle-search-overlay-property', and
;;    `icicle-search-text-property'.
;;
;;  * (@> "Search and Replace") for information about replacing search
;;    hits or parts of search hits.
;;
;;  * (@> "Customization and General Tips") for information about the
;;    `icicle-search-*' faces, which control Icicles search.
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Progressive Completion")
;;    for information about `M-*' and `M-&'.
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Multi-Commands") for
;;    information about `C-RET', `C-mouse-2', `C-next', and `C-prior'.
;;
;;  * (@> "Multiple Regions") for information about searching multiple
;;    regions.
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Inserting a Regexp from a Variable")
;;    for more about `C-='.
;;
;;  * (@> "Icicles Info Enhancements") for information about using
;;    Icicles to search in Info mode.
 
;;(@* "Search and Replace")
;;
;;  Search and Replace
;;  ------------------
;;
;;  You can replace the current search match by using any of the
;;  alternative action keys: `C-S-RET', `C-S-mouse-2' (in
;;  `*Completions*'), `C-S-next', `C-S-prior', `C-S-down', and
;;  `C-S-up'.  You can use `C-|' (`icicle-all-candidates-alt-action')
;;  to replace all matches at once.
;;
;;  At the first use of any of these, you are prompted for the
;;  replacement string; it is used thereafter, or until you use `M-,'
;;  (`icicle-search-define-replacement').  You can use `M-,' at any
;;  time during searching to change the string for subsequent
;;  replacements.  The replacement string can be anything that is
;;  allowed as a replacement by `query-replace-regexp'.  In Emacs 22
;;  or later, this includes Lisp sexp evaluation via `\,'.
;;
;;  Unlike `query-replace', you need not visit each search match - you
;;  can visit and replace selected matches in any order.  Some other
;;  differences from standard `query-replace' and
;;  `query-replace-regexp':
;;
;;   * Replacing matches of your current input provides a contextual
;;     replacement feature: replace `foo' by `fu', but only in zones
;;     that match `toto.*titi'.
;;
;;   * Icicles search navigation lets you replace individual search
;;     hits without navigating through each search context in turn:
;;     direct access.
;;
;;   * Replace-all (`C-|') means replace all matches of your current
;;     input, throughout the search space, not just all matches that
;;     follow the cursor.
;;
;;   * You can act across multiple buffers, files, or saved regions -
;;     see information about the prefix arg.
;;
;;   * You can also replace matches within character-property search
;;     contexts - just use `icicle-search-char-property' (`C-c "') ["]
;;     as the search command.
;;
;;  Search matches are replaced - but what is meant by a "search
;;  match"?  It can be either an entire search context or whatever
;;  your current minibuffer input matches.
;;
;;  During search and replace:
;;
;;   * `M-,' redefines the replacement string.
;;
;;   * `C-`' toggles `icicle-toggle-regexp-quote' (as always).  This
;;     escapes regexp special characters, so that search is literal.
;;
;;   * `M-q' toggles `icicle-search-whole-word-flag'.  By default,
;;     this is nil, meaning that searching is not for whole words
;;     (except for `icicle-search-word', bound to `C-c $').
;;
;;   * `C-M-`' toggles `icicle-search-replace-literally-flag'.  By
;;      default, this is nil, which means that `\' character sequences
;;      in replacement text are intrepreted as for
;;      `query-replace-regexp'.
;;
;;   * `C-,' toggles `icicle-search-replace-whole-candidate-flag'.  By
;;     default, this is non-nil, which means that the entire current
;;     search context is replaced.  The search context is whatever
;;     matches the context regexp that you entered initially, using
;;     `RET'.  However, you can use `C-,' at any time during searching
;;     to toggle between this default behavior and replacement of
;;     whatever your current minibuffer input matches.
;;
;;   * `M-;' toggles `icicle-search-replace-common-match-flag'.
;;     Together with other options, it controls whether to replace the
;;     expanded common match or just the exact match.  See below.
;;
;;  Remember this:
;;
;;  - If `icicle-search-replace-whole-candidate-flag' is non-nil, then
;;    the granularity of replacement is a complete search context.  In
;;    this case, replacement behaves similarly to
;;    `query-replace-regexp'.  You can still use minibuffer input to
;;    filter the set of search contexts, but replacement is on a
;;    whole-context basis.
;;
;;  - If `icicle-search-replace-whole-candidate-flag' is nil, then you
;;    can replace multiple input matches separately within a search
;;    context.  This behavior is unique to Icicles.
;;
;;  If `icicle-search-replace-whole-candidate-flag' is non-nil, then
;;  you can use the navigational alternative action keys, `C-S-next',
;;  `C-S-prior', `C-S-down', and `C-S-up', to replace successive
;;  search contexts.
;;
;;  Search traversal using these keys is always by search context, not
;;  by input match.  This means that you cannot use these keys to
;;  replace individual input matches within a search context, except
;;  for the first such match.  That is, if
;;  `icicle-search-replace-whole-candidate-flag' is nil and you use
;;  these keys, then only the first match of your input in each search
;;  context is replaced.
;;
;;  If your input matches multiple parts of the search context, and
;;  you want to replace them in order, then use `C-S-RET' repeatedly.
;;  This replaces successive input matches within a search context,
;;  then moves on to the next context, and so on.  You can traverse
;;  all matches of your input in the order they appear in the buffer
;;  by repeating `C-S-RET'.
;;
;;  Repeated use of `C-S-RET' is generally for the case where you are
;;  replacing input matches, not whole search contexts.  If you repeat
;;  `C-S-RET' when `icicle-search-replace-whole-candidate-flag' is
;;  non-nil, then you will, in effect, just replace the same context
;;  over and over - unless, that is, your current input does not match
;;  the replacement text.  In that case, the replacement is no longer
;;  a matching search context (candidate), and `C-S-RET' moves on to
;;  the next context.
;;
;;  What your input matches depends on a few Icicles options:
;;
;;  - `icicle-regexp-quote-flag' determines whether to use regexp
;;    matching or literal matching.
;;
;;  - `icicle-search-highlight-all-current-flag',
;;    `icicle-expand-input-to-common-match-flag' and
;;    `icicle-search-replace-common-match-flag' together determine
;;    whether to replace exactly what your input matches in the
;;    current search hit or the expanded common match (ECM) of your
;;    input among all search hits.  If any of these options is nil,
;;    then your exact input match is replaced; otherwise, the ECM is
;;    replaced.
;;
;;  What is meant by a "search match" ... revisited - Here's another
;;  oddity of Icicles search-and-replace: Your search matches remain
;;  defined as the set of search contexts that match your current
;;  input, even after you have made replacements.  And the set of
;;  search contexts that can be matched doesn't change.  It is the
;;  original set of matches of your context regexp - these matches are
;;  not recomputed during an `icicle-search' invocation.
;;
;;  For example, if you empty the minibuffer, then all of the search
;;  contexts are shown in *Completions*.  Their text is updated to
;;  reflect any replacements you have made, but they are all there.
;;  It is only your current input that filters them, as always.  This
;;  means that you can revisit any replacements you have made, in any
;;  order.  You can even use `M-,' to alter some of them, if you like.
;;
;;  See Also:
;;
;;  * (@> "Icicles Search Commands, Overview") and the doc string of
;;    `icicle-search' for more information about search-and-replace.
;;
;;  * (@> "Compile/Grep Search") for information about using
;;    search-and-replace with `grep' buffers and compilation buffers.
;;
;;  * (@* "Icicles Dired Enhancements") for information about using
;;    search-and-replace on marked files in Dired.
 
;;(@* "Other Icicles Search Commands")
;;
;;  Other Icicles Search Commands
;;  -----------------------------
;;
;;  Function `icicle-search' is very general.  As is explained in
;;  (@> "Icicles Search Commands, Overview"), command `icicle-occur'
;;  is defined trivially using `icicle-search' - it is basically
;;  `icicle-search' with a regexp of `.*', to match lines.  Similarly,
;;  `icicle-search-word' (`C-c $') uses a regexp of `\bWORD\b', where
;;  `WORD' is the word to look for, and `icicle-search-keywords'
;;  (`C-c ^') uses a regexp of `\(KW1\|KW2\|KW2...\|KWn\)', where the
;;  `KWm' are the keywords (regexps) to look for.
;;
;;  Still other Icicles commands are available that make use of
;;  `icicle-search'.  And you can define your own, specialized search
;;  commands along the same lines.  To do that, it is instructive to
;;  look at the source code of the commands described in this section;
;;  they can serve as a model for defining your own search commands.
;;
;;  Two of the commands described here, `icicle-compilation-search'
;;  and `icicle-comint-search', are specialized versions of
;;  `icicle-search' that work only in particular buffers where there
;;  is little need for `icicle-search' itself. For this reason, these
;;  commands reuse the key sequence, `C-c `' (backquote), that is
;;  normally bound to `icicle-search'.  This shadow binding occurs if
;;  the current major mode is a compilation mode (for
;;  `icicle-compilation-search') or an interactive interpreter mode
;;  such as `shell-mode' or Lisp interactive mode (for
;;  `icicle-comint-search').
;;
;;  [Programmer Note: Actually, the way this works is that `C-c `' is
;;  bound to the value of internal variable `icicle-search-generic'.
;;  You can use this mechanism to provide custom Icicles search
;;  commands for particular buffers.]
;;
;;  Besides the commands described in this section, there are Icicles
;;  search commands for navigating tags-file definitions and searching
;;  their associated source files.  These are described in section
;;  (@> "Icicles Tags Enhancements").
;;
;;  If you use `M-g' in the minibuffer to toggle option
;;  `icicle-use-C-for-actions-flag', then you can use just `next'
;;  instead of `C-next' to navigate when using any Icicles search
;;  command.  See
;;  (@file :file-name "icicles-doc1.el" :to "Option `icicle-use-C-for-actions-flag'").
;;
;;(@* "Searching Text with Properties")
;;  ** Searching Text with Properties **
;;
;;  Instead of providing a context regexp, for commands
;;  `icicle-search-char-property' (`C-c "') ["],
;;  `icicle-search-overlay-property', and
;;  `icicle-search-text-property' you provide a character property
;;  (e.g. `face') and its value (e.g. `font-lock-function-name-face').
;;  All zones of text that have that property with that value become
;;  the completion candidates (search hits).  As always, you can
;;  filter this set of candidates by typing input in the minibuffer.
;;
;;  By a "character property" is meant either a text property or an
;;  overlay property.  `C-c "' ["] searches both kinds of character
;;  property; `icicle-search-overlay-property' searches only overlay
;;  properties; and `icicle-search-text-property' searches only text
;;  properties.  For example, if you use `C-c "' ["] with a `face'
;;  property value `highlight', then the text searched includes text
;;  with that overlay value and text with that text-property value.
;;
;;  If the property chosen is `face', then you can in fact choose
;;  multiple faces, in multi-command fashion (e.g. `C-mouse-2'), and
;;  the text that is searched has at least one of the faces you
;;  choose.  If you choose no face value (empty input), then the
;;  target is text that has any face at all.  The search hits are
;;  zones of text that are distinguished by their `face' values.
;;
;;  As with other Icicles search commands, a prefix argument controls
;;  whether these character-property commands search the current
;;  buffer, saved regions, selected files, or selected buffers.
;;  However, keep in mind that, since in this case you are searching
;;  character properties, you will find search hits only for buffers
;;  that already have such properties, for example, buffers that have
;;  been fontified.
;;
;;(@* "Icicles Imenu")
;;  ** Icicles Imenu **
;;
;;  Command `icicle-imenu', which is bound to `C-c =', is an Imenu
;;  browser.  It lets you use Icicles completion to navigate among
;;  definitions of functions, variables, types, keys, and so on in a
;;  programming language (in fact, any language that Imenu handles).
;;  As always in Icicles, your current input (e.g. a regexp) filters
;;  the set of available candidates.  That is, you can match against
;;  parts of an Imenu entry - any parts.  That's particularly useful
;;  if there are many entries in the Imenu menu; you don't need to
;;  read/scan the whole list.
;;
;;  If you look at the definition of `icicle-imenu' you'll see that it
;;  simply lets you choose an Imenu submenu (Functions, User Options,
;;  and so on) that is appropriate for the current buffer type, and
;;  then it calls `icicle-search', passing it the appropriate Imenu
;;  regexp.  You can similarly define your own specialized search
;;  commands using `icicle-search' to browse regexp matches.  You get
;;  all of the features of `icicle-search' when you do that.  For
;;  example, `icicle-imenu' gives you these advantages over a standard
;;  Imenu menu:
;;
;;  * You can restrict navigation (search) to a region.
;;
;;  * You can navigate (browse) among multiple entries, instead of
;;    choosing them one by one from a menu.
;;
;;  * You can restrict the entries to browse using (regexp) pattern
;;    matching.
;;
;;  * As for `icicle-search', you can search multiple saved regions,
;;    multiple buffers, or multiple files.
;;
;;  In addition, for Emacs-Lisp function definitions, Icicles provides
;;  two specializations of `icicle-imenu', to find only Emacs command
;;  definitions and only non-interactive function (that is,
;;  non-command) definitions: `icicle-imenu-command' and
;;  `icicle-imenu-non-interactive-function'.  The definitions of these
;;  two search commands provide examples of using `icicle-search' with
;;  a predicate argument.
;;
;;(@* "`icicle-imenu' Combines Benefits of Imenu and Emacs Tags")
;;  *** `icicle-imenu' Combines Benefits of Imenu and Emacs Tags ***
;;
;;  * Imenu lets you navigate among definitions in a single buffer.
;;
;;  * Emacs tags let you navigate among definitions in multiple files,
;;    but you must build and update the tags file that identifies the
;;    definitions.
;;
;;  Like Emacs tags, `icicle-imenu' lets you navigate among
;;  definitions in multiple files - and also multiple saved regions
;;  and non-file buffers.  Like Imenu, you need not build a tags file.
;;  Unlike Imenu, Icicles provides regexp completion that lets you
;;  filter Imenu hits that you want to visit.
;;
;;  Another difference from Emacs tags, besides the need for a tags
;;  file, is that, since Icicles locates definitions using Imenu
;;  regexps, you can only navigate among definitions in buffers that
;;  you are visiting.  This is both an advantage and a disadvantage:
;;  you can narrow the search to certain files, but you must know
;;  which files to search. And if you want to search all files, then
;;  you must open them all (e.g. by matching a project regexp),
;;
;;  The differences mean that `icicle-imenu' does not provide a
;;  substitute for Emacs tags; it provides some similar
;;  functionality. It is another tool in your belt, handier in some
;;  situations than using tags, and less useful in some other
;;  situations.
;;
;;  See Also: (@> "Icicles Tags Enhancements")
;;
;;(@* "Compile/Grep Search")
;;  ** Compile/Grep Search **
;;
;;  In a compilation-results buffer, such as `*Compilation* or
;;  `*grep*', you can use command `icicle-compilation-search', bound
;;  to `C-c `', to search among the result set (search hits).  This is
;;  similar to `icicle-search', but when you use `C-RET', `C-mouse-2',
;;  `C-prior', `C-next', `C-up', or `C-down', it visits the source
;;  code that corresponds to the current line in the compilation
;;  buffer.  Just as for `icicle-search', you can narrow the set of
;;  search contexts by typing a regexp.
;;
;;  Using `icicle-compilation-search' with `grep' gives you two levels
;;  of regexp searching: 1) the `grep' regexp and 2) your current
;;  input regexp.  And you can of course use progressive completion
;;  (`M-*') to add any number of additional levels.  (And, starting
;;  with Emacs 22, you can pipe to other `grep' commands in the same
;;  `M-x grep'.)
;;
;;  In Emacs 22 and later, you can also replace search-hit text.  You
;;  can replace the entire grep regexp match or just the part of it
;;  that matches your current input, depending on the value of option
;;  `icicle-search-replace-whole-candidate-flag' (which you can toggle
;;  with `C-,').  Replacement acts here just as it does for
;;  `icicle-search'.
;;
;;  You can also use a non-`grep' compilation buffer to perform search
;;  and replace.  Use it, for example, to correct errors in source
;;  files.
;;
;;  Icicles thus gives you several ways to perform search-and-replace
;;  throughout multiple files: `grep'/compilation, `icicle-occur', and
;;  `icicle-search'.  The latter is of course not limited to
;;  line-by-line search.
;;
;;  See Also: (@> "Search and Replace").
;;
;;(@* "Input Reuse in Interactive Interpreter Modes")
;;  ** Input Reuse in Interactive Interpreter Modes **
;;
;;  In an interactive interpreter mode such as `shell-mode' or
;;  interactive Lisp mode, you can search for and reuse a previous
;;  input, possibly editing it first.  Command `icicle-comint-search',
;;  bound to `C-c `', lets you use Icicles completion and cycling to
;;  access your previous (shell or Lisp) inputs; it uses
;;  `icicle-search', so it highlights your regexp input matches, and
;;  so on.  You can use `C-$' at any time to toggle removal of
;;  duplicate past inputs as completion candidates; by default,
;;  duplicates are removed.
;;
;;  Being a search command, however, `icicle-comint-search' has access
;;  only to the commands that are visible in the buffer.  It does not
;;  use the `comint-input-ring', so it cannot, for instance, give you
;;  access to commands used in a previous session, which might have
;;  been recorded in a history file.
;;
;;  Another Icicles command, `icicle-comint-command', which is not a
;;  search command, does use `comint-input-ring' and does give you
;;  completion and cycling against previous inputs that might not have
;;  come from the current session.  It is bound to `C-c TAB' in
;;  `comint-mode' and derived modes.
;;
;;(@* "Define Your Own Icicles Search Commands")
;;  ** Define Your Own Icicles Search Commands **
;;
;;  Function `icicle-search' is not only a useful user command; it is
;;  also a framework for you to define your own Icicles search
;;  commands.  Consult the source code for the commands presented
;;  above for models.  And consult the doc string of `icicle-search'
;;  for more information about calling it non-interactively.  In
;;  particular, note that:
;;
;;  * You can pass a functional argument instead of a regexp to
;;    `icicle-search', and it will use that function to define the
;;    search contexts.  The function is passed, as arguments, the
;;    buffer to search, the beginning and end of the search region in
;;    that buffer, and any additional arguments that you pass to
;;    `icicle-search'.
;;
;;  * You can pass a predicate argument to `icicle-search', in
;;    addition to passing a regexp, and the search contexts will be
;;    only those regexp matches that also satisfy the predicate.  The
;;    predicate takes two arguments, the search-context string and a
;;    marker at the end of the search context.  For information about
;;    this, consult the doc string for function
;;    `icicle-search-regexp-scan'.  For a model of using this feature,
;;    see the code that defines command `icicle-imenu'.
;;
;;  By using your own function to define the search contexts, either
;;  from scratch or by limiting regexp matches using a predicate, you
;;  can perform semantic-based searching.  That is, your search
;;  command can use information besides syntax to define search hits.
;;  For instance, commands `icicle-imenu-command' and
;;  `icicle-imenu-non-interactive-function' use the semantic predicate
;;  `commandp' to distinguish Emacs-Lisp commands from non-interactive
;;  functions.
;;
;;  See Also:
;;
;;  * (@> "Icicles Search Commands, Overview") for general information
;;    about Icicles search and the commands `icicle-search' and
;;    `icicle-occur'.
;;
;;  * (@> "Search and Replace") for information about replacing search
;;    hits or parts of search hits.
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Multi-Commands") for
;;    information about using `C-RET', `C-mouse-2', `C-prior',
;;    `C-next', `C-up', and `C-down'.
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Progressive Completion")
;;    for information about using any number of search regexps with
;;    `M-*' and any number of search predicates with `M-&'.
;;
;;  * (@> "Icicles Info Enhancements") for information about using
;;    Icicles with Info mode.
 
;;(@* "Multiple Regions")
;;
;;  Multiple Regions
;;  ----------------
;;
;;  Icicles lets you define multiple regions, which you can then act
;;  on individually or together.  The regions can be in any buffers:
;;  any number of regions in any number of buffers.
;;
;;  The multiple Icicles regions are saved persistently in user option
;;  `icicle-region-alist'.  You can customize this option directly,
;;  but it is usually easier and less error-prone to define the list
;;  of regions incrementally, using command `icicle-add-region' (`C-N
;;  C-x C-x', for N = 0,1,2,...), which adds the current Emacs region
;;  to `icicle-region-alist'.  You can remove one or more regions from
;;  `icicle-region-alist', using command `icicle-remove-region' or by
;;  customizing the option.  You can remove all regions in a given
;;  buffer, using command `icicle-remove-all-regions-in-buffer'.
;;
;;  You can use multi-command `icicle-select-region' (`C-u C-x C-x) to
;;  choose any region in `icicle-region-alist', navigate to it, and
;;  activate it.  You can use this as a sort of bookmark mechanism,
;;  retrieving saved regions later for operations in different Emacs
;;  sessions.  Unlike Emacs bookmarks, Icicles regions are not limited
;;  to being in file buffers - any buffer can be used.
;;
;;  You can also think of Icicles region definition and selection as a
;;  kind of tagging mechanism.  You can assign any identifying tag,
;;  and you can assign the same tag to multiple regions, whether they
;;  are in the same buffer or in different buffers.  You can also
;;  assign multiple tags to the same region, but in that case there
;;  will be multiple entries for that region in `icicle-region-alist':
;;  each entry corresponds to a single tag and a single region.  The
;;  default tag proposed when you add a region to
;;  `icicle-region-alist' is the first
;;  `icicle-regions-name-length-max' characters of the region itself.
;;
;;  The tag text is not added to your buffers.  It is recorded,
;;  together with the region limits, the buffer name, and the buffer's
;;  associated file name, in variable `icicle-region-alist'.  Each
;;  region is defined by its recorded limits.  Its tag is used only to
;;  identify it as a completion candidate.  This means that if a
;;  region tag was defined as the text at the beginning of the region
;;  (the default tag value), and you have changed the region's buffer
;;  (inserting or deleting text) since that definition, then the tag
;;  might no longer correspond exactly to the current region prefix.
;;
;;  For commands such as `icicle-select-region' that use
;;  `icicle-region-alist', there is generally little sense in using
;;  regions as completion candidates if they are in buffers that no
;;  longer exist and are not associated with files.  For this reason,
;;  such regions are filtered out for completion.  They remain
;;  recorded in `icicle-region-alist', however, and if a non-existent
;;  buffer is re-created, then it will once again be available as a
;;  completion candidate.
;;
;;  Buffers associated with files are an important special case: the
;;  files can be opened, re-creating the buffers, and then the regions
;;  can be accessed.  For this reason, buffers associated with files
;;  are always made available as completion candidates.  When you
;;  choose such a candidate, the file is automatically visited,
;;  provided it is readable.
;;
;;  In addition to this automatic opening of individual files on
;;  demand, you can at any time open all of the (readable) files
;;  listed in `icicle-region-alist', using command
;;  `icicle-region-open-all-files'.  And, if user option
;;  `icicle-region-auto-open-files-flag' is non-nil, then all files
;;  listed in `icicle-region-alist' are visited automatically, as soon
;;  as you invoke any Icicles command that uses that alist.
;;
;;  In Icicle mode, `C-x C-x' is bound to command
;;  `icicle-exchange-point-and-mark'.  With no prefix argument, this
;;  is the same as `exchange-point-and-mark': it swaps the position of
;;  the text cursor and the mark and activates the region.  With a
;;  numeric prefix argument, this is the same as `icicle-add-region':
;;  it adds the current region to `icicle-region-alist'.  With a plain
;;  `C-u' prefix argument, this is the same as `icicle-select-region'.
;;
;;  You can search any region in `icicle-region-alist' using command
;;  `icicle-search-region'.  Because this is a multi-command, you can
;;  search any number of the regions, one at a time.  You can also
;;  search through all of the regions at once, using a special feature
;;  of command `icicle-search' (`C-c `').  Provide a numeric prefix
;;  argument to `icicle-search' (e.g. `C-9 C-c `'), and the regions in
;;  `icicle-region-alist' become the search space.
;;
;;  Commands `icicle-remove-region', `icicle-search-region', and
;;  `icicle-select-region' are multi-commands.  You can act on any
;;  number of regions using `C-RET' and so on.  Help on region
;;  candidates (`C-M-RET' and so on) displays the following
;;  information about the candidate region, in the minibuffer:
;;
;;   - its start and end positions in the buffer
;;   - its buffer
;;   - the buffer's associated file, if any
;;   - its length
;;
;;  (Command `icicle-remove-all-regions-in-buffer' is also a
;;  multi-command, but its completion candidates are buffers, not
;;  regions.)
;;
;;  For commands `icicle-select-region' and `icicle-search-region', if
;;  user option `icicle-add-buffer-name-flag' is non-nil (the default
;;  value), then each region-name candidate is annotated with the name
;;  of the region's buffer, highlighted, to help orient you.  The
;;  buffer name is actually part of the (multi-completion) candidate,
;;  so you can match against it.  As mentioned, even when the value of
;;  `icicle-add-buffer-name-flag' is nil, you can use `C-M-mouse-2'
;;  and so on to see the candidate region's buffer name.
;;
;;  See Also:
;;
;;  * (@> "Icicles Search Commands, Overview") for information about
;;    command `icicle-search'.
 
;;(@* "Icicles Tags Enhancements")
;;
;;  Icicles Tags Enhancements
;;  -------------------------
;;
;;  In Emacs and Icicles, the word "tag" is used in multiple ways.
;;  This section is about tags as identifiers of source-code
;;  definitions.  Emacs uses tags files, typically named `TAGS', to
;;  index these definition locations.
;;
;;  What constitutes a "definition" is determined by the content of
;;  the tags file.  Typically, definition recognition is available for
;;  programming languages, but in fact a tags table can record any
;;  text at all as a definition.  That is, if you create your own tags
;;  table, you can use the Emacs tags feature to navigate among any
;;  "definitions" of your own choosing.
;;
;;  If you use `M-g' in the minibuffer to toggle option
;;  `icicle-use-C-for-actions-flag', then you can use just `next'
;;  instead of `C-next' to navigate when using any of the Icicles tags
;;  browsing commands described here.  See
;;  (@file :file-name "icicles-doc1.el" :to "Option `icicle-use-C-for-actions-flag'").
;;
;;(@* "`icicle-find-tag': Find Tags in All Tags Tables")
;;  ** `icicle-find-tag': Find Tags in All Tags Tables **
;;
;;  In vanilla Emacs, you use commands such as `find-tag' (`M-.') to
;;  find a tag, `tags-loop-continue' (`M-,') to find another matching
;;  tag, `tags-apropos' to list all tags that match a regexp, and
;;  `list-tags' to show all tags (definitions) in a given source file.
;;
;;  In Icicles, you can use multi-command `icicle-find-tag', bound to
;;  `M-.' in Icicle mode, to do all of this.  It is similar to the
;;  Icicles search commands.  It is a general tags browser, just as
;;  `icicle-imenu' is an Imenu browser.  Being a multicommand, you can
;;  visit any number of tags, in any order, in a single `M-.'
;;  invocation.
;;
;;  With `icicle-find-tag', you enter (using `RET') a regexp to match
;;  the tags you want to visit.  By default, all tags in all tags
;;  files are searched, and the matches become completion candidates
;;  (which you can of course match further by typing another pattern).
;;  As always, you can use progressive completion, chip away the
;;  non-elephant, and so on.  Just as with Icicles search commands,
;;  you use `C-RET', `C-mouse-2', `C-next', and so on, to visit the
;;  search hits.  You can use `M-*' (`icicle-pop-mark') to return to
;;  the place you invoked `M-.'.
;;
;;  By default, the completion candidates are multi-completions: the
;;  source file name is included.  This is an important aid, because
;;  there can be similar, or even identical, tags in different source
;;  files.  Your current input can of course filter the source-file
;;  name also, excluding certain files from the search.
;;
;;  A prefix argument  changes the default behavior, as follows:
;;
;;  * If non-negative (>= 0), then only the current tag table is used,
;;    instead of all tag tables.
;;
;;  * If non-positive (<= 0), then the source file name is not part of
;;    the completion candidate; only the tag itself is used.
;;
;;  See Also:
;;
;;  * (@> "Icicles Search Commands, Overview") for general information
;;    about Icicles search commmands.
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Nutshell View of Icicles")
;;    for information about progressive completion and chipping away
;;    the non-elephant.
;;
;;(@* "`icicle-find-first-tag': Find First Tag in Current Table")
;;  ** `icicle-find-first-tag': Find First Tag in Current Table **
;;
;;  Sometimes you don't need the full power and flexibility of
;;  `icicle-find-tag'.  If you just want to find the first tag among
;;  several duplicates that match your input, and you just want to use
;;  the current tags table, then you can use `icicle-find-first-tag'
;;  or `icicle-find-first-tag-other-window'.  These commands are like
;;  vanilla `find-tag', but they are multi-commands, so you can visit
;;  any number of tags in one invocation.  Unlike `find-tag', however,
;;  you cannot follow up to find another tag that matches using `M-,'.
;;
;;(@* "`icicle-tags-search': Search and Replace Using Tags")
;;  ** `icicle-tags-search': Search and Replace Using Tags **
;;
;;  In vanilla Emacs, you use commands `tags-search',
;;  `tags-query-replace', and `tags-loop-continue' (`M-,') to search
;;  and replace text in source files whose definitions are indexed in
;;  a tags file.
;;
;;  In Icicles, you can use multi-command `icicle-tags-search' to
;;  search and replace.  It is in fact just command `icicle-search'
;;  applied to the relevant source files.
;;
;;  See Also (@> "Icicles Search Commands, Overview") for information
;;  about `icicle-search.
 
;;(@* "Icicles Dired Enhancements")
;;
;;  Icicles Dired Enhancements
;;  --------------------------
;;
;;  Icicles can help with Dired in these ways:
;;
;;  * You can use Icicles search-and-replace on the marked files.
;;
;;  * You can save marked file names as completion candidates for
;;    reuse later.
;;
;;  * You can open Dired on saved file names, that is, names that you
;;    previously saved as a completion candidates set or as an Emacs
;;    fileset.  It does not matter how the file names were saved or
;;    which directories the files are in.
;;
;;(@* "Search-and-Replace Marked Files")
;;  ** Search-and-Replace Marked Files **
;;
;;  In Dired, `A' searches the marked files using a regexp, and `Q'
;;  launches `query-replace-regexp' on them.  But suppose that you
;;  want to change only a few occurrences in each file, perhaps among
;;  the first occurrences.  Using `Q', you are forced to review each
;;  search hit in turn - all of them; you cannot simply skip the rest
;;  in one file and continue with the next file.
;;
;;  [I suggested that this feature be added to Emacs, and it looks as
;;  if this will happen in Emacs 23: you will be able to skip to the
;;  next file.]
;;
;;  One workaround is to use `M->' to go to the end of a file, and
;;  then `M-,' to resume query-replace.  Or you can quit the command
;;  altogether, unmark the file you're finished searching, and then
;;  hit `Q' again, but that's not very convenient.  A similar problem
;;  applies to searching using `A'.
;;
;;  In Dired with Icicles, you can use `M-s i'
;;  (`icicle-search-dired-marked') to search the files and possibly
;;  replace search hits.  This runs `icicle-search', so you have
;;  available all of its features, including accessing search hits
;;  directly, in any order.  To skip a whole file, just match its name
;;  with your minibuffer input and then use `C-~' to remove all of its
;;  occurrences from the set of hits.
;;
;;  Note: You can similarly use `M-s i' in Ibuffer or Buffer Menu to
;;  search all marked buffers using Icicles search.
;;
;;(@* "Save Marked Files as Completion Candidates")
;;  ** Save Marked Files as Completion Candidates **
;;
;;  In Dired with Icicles, you can use `C-M->'
;;  (`icicle-dired-save-marked') to save the marked file names as a
;;  set of completion candidates, for reuse later.  You can use `C->'
;;  to add the marked files to an existing saved set of candidates.
;;  These bindings act similarly to `C-M->' and `C->' in the
;;  minibuffer: a prefix argument controls whether you save candidates
;;  to a variable or a cache file.
;;
;;  You can use such a saved set of file names as candidates during
;;  file-name completion.  They are saved as absolute names,
;;  which means you can use them with, say, `C-u C-x C-f'.  See
;;  (@file :file-name "icicles-doc1.el" :to "Absolute File Names and Different Directories").
;;
;;(@* "Open Dired for Saved File Names")
;;  ** Open Dired for Saved File Names **
;;
;;  In Dired with Icicles you can use `C-M-<'
;;  (`icicle-dired-saved-file-candidates-other-window') to open Dired
;;  for a set of files whose names were saved (persistently or not) as
;;  completion candidates or as an Emacs fileset.  The Dired buffer
;;  that is created is named `Icy File Set' (suffixed with <1>, <2>,
;;  etc. as needed), and it contains only the saved file names.
;;
;;  The file names are checked to be sure they reference existing
;;  files.  If any of the names are relative names, those files are
;;  checked for existence in the Dired directory.  If you use a prefix
;;  argument, then you are prompted for the directory to use.
;;
;;(@* "Marked Files as a Project")
;;  ** Marked Files as a Project **
;;
;;  Just as `C-}' in the minibuffer is a shortcut for `C-u C-M->',
;;  which saves the current set of completion candidates persistently,
;;  so `C-}' in Dired saves the marked file names in a cache file or,
;;  with a prefix arg, an Emacs fileset.  Similarly, just as `C-{' in
;;  the minibuffer is a shortcut for `C-u C-M-<', which retrieves
;;  candidates from a persistent set, so `C-{' in Dired retrieves a
;;  persistent set of file names and opens them in a separate Dired
;;  buffer.
;;
;;  You can think of such persistent file-name sets as projects.
;;  `C-}' is bound to command `icicle-dired-save-marked-as-project'
;;  (aka `icicle-dired-save-marked-persistently').  `C-{' is bound to
;;  command `icicle-dired-project-other-window'.
;;
;;  Again, you can use such a project as a candidate set for file-name
;;  completion at any time.  In addition, `C-}' and `C-{' can be handy
;;  in Dired for working with projects even without using completion.
;;  The files in a project can be distributed among any directories
;;  anywhere.  This gives you an easy way to open Dired on just the
;;  files you want and operate on them there.
;;
;;  And while in a project in Dired you can use `C-M-<' to mark a
;;  project subset to work on, and then use `C-M->' to operate on that
;;  subset using Icicles completion.  And you can have any number of
;;  projects - you access each by its name (with completion) and need
;;  not remember its cache file name.
;;
;;
;;  See Also:
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Sets of Completion Candidates")
;;    for information about saved completion candidates
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Chip Away the Non-Elephant")
;;    for the use of `C-~' to remove matching candidates
;;
;;  * (@> "Icicles Search Commands, Overview") for information about
;;    `icicle-search'
;;
;;  * (@> "Search and Replace") for how to replace selected search hits
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Persistent Sets of Completion Candidates")
;;    for more information about using persistent sets
;;
;;  * (@> "Support for Projects") for more information about working
;;    with projects
;;
;;  * Library `dired+.el', which has related features such as `C-M-*'
;;    to open Dired on just the marked files and `M-g' to `grep' just
;;    the marked files.
 
;;(@* "Icicles Info Enhancements")
;;
;;  Icicles Info Enhancements
;;  -------------------------
;;
;;  Icicles can help with Info in these ways:
;;
;;  * Icicles completion is available for any input.
;;
;;  * You can use `icicle-search' on part or all of a manual, if you
;;    flatten it first with `Info-merge-subnodes' .
;;
;;(@* "Icicles Completion for Info")
;;  ** Icicles Completion for Info **
;;
;;  Whenever completion is available for Info commands, such as `g'
;;  (`Info-goto-node'), `i' (`Info-index'), and `m' (`Info-menu'), you
;;  can take advantage of Icicles completion.  For instance, if you
;;  type `g yan', you can use `S-TAB' for apropos completion and
;;  choose node `Isearch Yank', whose name contains `yan' but does not
;;  start with it.  This is an obvious and standard Icicles feature.
;;
;;  Although vanilla Emacs also accepts a substring as input for `i',
;;  it does not provide substring or regexp completion, and it won't
;;  accept a regexp as final input.
;;
;;  Icicles binds `g', `i', and `m' to multi-commands
;;  `icicle-Info-goto-node', `icicle-Info-index', and
;;  `icicle-Info-menu', which means that you can also use `g', `i',
;;  and `m' with `C-next', `C-RET', `C-mouse-2', and so on, to browse
;;  among matching Info nodes.  Unlike browsing with repeated use of
;;  `,' after `i' in vanilla Emacs, you can continue to see all of the
;;  matching candidates, in buffer `*Completions*', and you need not
;;  visit the index hits in sequential order.
;;
;;  If you use `M-g' in the minibuffer to toggle
;;  `icicle-use-C-for-actions-flag', then you can use just `next'
;;  instead of `C-next' to navigate.  See
;;  (@file :file-name "icicles-doc1.el" :to "Option `icicle-use-C-for-actions-flag'").
;;
;;  As usual in Icicles, you can sort completion candidates in various
;;  ways, using `C-,' (`icicle-change-sort-order').  For `g', in
;;  particular, although the default order is alphabetical, you can
;;  choose `in book order', which shows the node candidates in the
;;  same order as in the book.  In that case, using `g' and then
;;  navigating among candidates sequentially using `C-up', `C-down',
;;  `C-next', or `C-prior' visits the nodes in their natural order.
;;
;;  As a special case of this, if you use a negative prefix argument
;;  (that is, `M-- g'), then not only are the candidate nodes
;;  presented `in book order', they are also limited to the nodes that
;;  follow your current location in the book - that is, to the
;;  remainder of the book.  (A non-negative prefix argument has the
;;  same meaning as for `Info-goto-node'.)
;;
;;  In addition, except when you are at the `Top' node, a pseudo-node
;;  `..' is added to the set of completion candidates.  Choosing this
;;  takes you up to the parent of the current node.  You can thus use
;;  `g' in Info not only to explore nodes by name, but also as another
;;  means to traverse the Info menu hierarchy.
;;
;;(@* "Using Icicle-Search With Info")
;;  ** Using Icicle-Search With Info **
;;
;;  Icicles searching (`icicle-search') is not Isearch.  It searches
;;  for all matches in the portion of text you tell it to search.
;;  This means that you cannot use it to search an entire manual in
;;  one operation, unless you have the entire manual available in a
;;  single buffer to be searched.
;;
;;  So, when you use `icicle-search' (`C-c `') to search with Info,
;;  you are limited to a few options:
;;
;;  * You can use it normally, to search within a single Info node.
;;
;;  * You can widen the visible portion of the Info buffer
;;    (`C-x n w'), to use it on an entire Info file.  However:
;;
;;    1. It is not obvious how a given Info manual is divided into
;;       files.  That is, you need to be aware of the point at which
;;       the manual moves from one file to the next.
;;
;;    2. Only the nodes in the same file that you have already visited
;;       are highlighted, and lots of ugly Info "plumbing" becomes
;;       visible in the other nodes.
;;
;;    3. You lose all Info features, such as navigation using links.
;;
;;  * There is another way to search across nodes, which addresses #1
;;    and #2, but still does not give you navigable links and such.
;;    Think of it as a hack that can sometimes be handy.  That is what
;;    is described below.
;;
;;  The idea is to flatten a subtree of Info nodes - possibly an
;;  entire manual, but more typically a node and its children - and
;;  then use `icicle-search' (`C-c `') over that flattened document.
;;  What is needed is a command that flattens Info subtrees.  Library
;;  `info+.el' provides such a command, `Info-merge-subnodes', and
;;  binds it to `+' in Info.
;;
;;  You can control how you want the flattening to occur, by using
;;  different values of prefix argument.  For searching, you probably
;;  want complete flattening of the chosen subtree, in a single
;;  buffer, so you use a prefix arg of zero: `C-u 0 +'.
;;
;;  This does not replace the *Info* buffer that you started with; it
;;  creates a new buffer, named after the root node of the subtree you
;;  flattened.  A principle use of `Info-merge-subnodes' is to print
;;  out a manual or a portion of it.  Also, I wrote a library
;;  (`mkhtml.el', outdated now) that lets you convert the result to
;;  HTML.
;;
;;  In sum, you can use Icicles search in Info: `C-u 0 +', then
;;  `C-c `'.
;;
;;  One caveat, however: You will generally want to limit your search
;;  to a reasonably small subtree of a manual, instead of flattening
;;  and then searching the entire manual.  Flattening a large manual
;;  can take a while: it took me 10 minutes to flatten the Emacs
;;  Manual.  Of course, you could flatten a large manual once, and
;;  save the result in a file for later searches.
;;
;;  Obviously, flattening in order to search is less convenient than
;;  using manual-wide incremental search (`C-s') with Info (starting
;;  with Emacs 22), and it is often less convenient than using
;;  `Info-search' (bound to `s' in Info).  Icicles searching is
;;  different from both, and it has its advantages and disadvantages.
;;  When you want the advantages of Icicles searching in Info, the
;;  flattening hack can be useful.  When you don't need those
;;  advantages, other search methods can sometimes be more
;;  appropriate.
;;
;;  See Also:
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Multi-Commands") for
;;    information on using multi-commands.
;;
;;  * (@> "Icicles Search Commands, Overview") for information about
;;    command `icicle-search'.
;;
;;  * Library `info+.el' for information about `Info-merge-subnodes'.
 
;;(@* "Support for Projects")
;;
;;  Icicles Support for Projects
;;  ----------------------------
;;
;;  This section presents nothing really new.  It provides pointers to
;;  other sections that describe features that can help you work with
;;  a project that involves multiple files or buffers, or named
;;  regions of text (e.g. code) within files and buffers.
;;
;;  Let's assume that you have one or more sets of files or buffers
;;  that you use frequently.  You give these sets names and save the
;;  sets persistently.  Later, you can retrieve a set by name,
;;  bringing you back to the context of working with just those
;;  particular files, buffers, or regions that belong to your project.
;;  You can search these or navigate among their significant parts.
;;  Icicles has a number of features that can help with these tasks.
;;
;;  But before you can name and save such a set, you must define its
;;  members: pick the files, buffers, or regions that you want to
;;  belong to a given project.  Icicles can help with this too.
;;
;;(@* "Defining and Saving Sets of Files, Buffers, Regions")
;;  ** Defining and Saving Sets of Files, Buffers, Regions **
;;
;;  For buffers, use commands `icicle-add-buffer-config' and
;;  `icicle-remove-buffer-config' to define one or more buffer
;;  configurations.  These are named sets of buffers, sort functions,
;;  and other parameters that control completion of buffer names.
;;  Thereafter, you can use command `icicle-buffer-config' to choose a
;;  configuration to be current.
;;
;;  For multiple regions, use `C-N C-x C-x' (`icicle-add-region'),
;;  where N is a whole number, to add the current region to
;;  `icicle-region-alist'.  This user option is saved with your
;;  customizations.  You can later activate a saved region using `C-u
;;  C-x C-x' (`icicle-select-region').  You can search the text in one
;;  or more saved regions using command `icicle-search-region'.  Or
;;  you can search through all of the saved regions at once using `C-N
;;  C-c `' (`icicle-search' with a positive prefix argument).
;;  See Also: (@> "Multiple Regions").
;;
;;  To define a set of files, you use Icicles completion against file
;;  names.  You can use progressive completion, chip away the
;;  non-elephant, and so on, to get just the file names you want.
;;
;;  For this completion, you can use a command that calls
;;  `read-file-name', and so matches relative file names using the
;;  current `default-directory'.  Or you can use a command that calls
;;  `completing-read', and so matches absolute file names - that is,
;;  lets you match not only file names but also directory components.
;;  An example of the former type is `icicle-find-file'.  Examples of
;;  the latter type are `icicle-find-file-absolute',
;;  `icicle-recent-file', and `icicle-locate-file'.  Command
;;  `icicle-file' (bound to `C-x C-f' by default) lets you do both,
;;  depending on the prefix argument.
;;
;;  You save a set of file names the same way you save any set of
;;  completion candidates.  You can save all of the names that match
;;  your current input.  You can add a set of names or individual
;;  names to a set of names that you have already saved.
;;
;;  In addition, you can save the marked files in Dired as a set of
;;  project files.
;;
;;  Your project is not only files that are all in the same directory,
;;  of course.  You can save file names from multiple directories in
;;  the same set.  And you can include directory names as well, for
;;  use later with commands that operate on directories.  Finally, you
;;  can also save file names as Emacs filesets and use those the same
;;  way.  An Icicles set of saved file names can include Emacs
;;  filesets - see
;;  (@file :file-name "icicles-doc1.el" :to "Filesets and Icicles Saved Completion Sets").
;;
;;  See Also:
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Sets of Completion Candidates")
;;  * (@file :file-name "icicles-doc1.el" :to "Persistent Sets of Completion Candidates")
;;  * (@file :file-name "icicles-doc1.el" :to "Progressive Completion")
;;  * (@file :file-name "icicles-doc1.el" :to "Chip Away the Non-Elephant")
;;  * (@file :file-name "icicles-doc1.el" :to "File-Name Input and Locating Files Anywhere")
;;  * (@> "Save Marked Files as Completion Candidates") (Dired)
;;
;;(@* "Navigating Among Code Definitions")
;;  ** Navigating Among Code Definitions **
;;
;;  For software projects, you need to be able to navigate among code
;;  definitions.  Imenu and Emacs TAGS features are useful for this,
;;  as are `grep' and compilation buffers.  Icicles improves all of
;;  these.  (A TAGS file is just a saved index for project files.)
;;
;;  See Also:
;;
;;  * (@> "Icicles Imenu")
;;  * (@> "Icicles Tags Enhancements")
;;  * (@> "Compile/Grep Search")
;;
;;(@* "Searching Project Files")
;;  ** Searching Project Files **
;;
;;  Searching within your project is another area where Icicles can
;;  help.  Icicles search is both search and navigation.  Navigating
;;  among TAGS definitions that match a regexp is also really
;;  searching, and the same is true for Imenu and grep navigation.
;;
;;  See also (@> "Icicles Search Commands, Overview") and its
;;  subsections for information about the many ways that you can use
;;  Icicles search to access parts of your projects.
;;
;;  See also (@> "Icicles Dired Enhancements") for an easy way to
;;  search marked files in Dired with Icicles search.
;;
;;  And don't forget that all uses of Icicles search also let you do
;;  search-and-replace on the fly.  This applies to `grep' results,
;;  searching marked files in Dired, tags navigation, and Imenu
;;  navigation.  You can at any time replace the current search hit
;;  or just the part of it that matches your current input.
;;
;;(@* "Retrieving and Reusing a Saved Project")
;;  ** Retrieving and Reusing a Saved Project **
;;
;;  This section could also be called "Using Retrieved Saved Sets".
;;
;;  You retrieve a set of saved file names (a project) the same way
;;  you retrieve any saved set of completion candidates.  That is, you
;;  access the files defined for your project by retrieving their
;;  names during completion, to serve as the current set of completion
;;  candidates.  This odd feature is unique to Icicles.
;;
;;  There's nothing much more to say about this, except that you
;;  should be taking advantage of it now.  Define and save a set of
;;  project files (or buffers), and later use just those files,
;;  staying within the bounds of your project for your navigation,
;;  search, compilation, etc. needs.  Even if the files you use in a
;;  given project are scattered all over your file system, Icicles
;;  lets you access them together as a named unit.  For more
;;  information, see
;;  (@file :file-name "icicles-doc1.el" :to "Sets of Completion Candidates").
;;
;;  You can also open Dired for a project or for a list of file names
;;  saved non-persistently as completion candidates - only those files
;;  are listed in the Dired buffer.
;;  See (@> "Icicles Dired Enhancements").
;;
;;  You can also run `grep' directly on a saved list of file names
;;  using command `icicle-grep-saved-file-candidates'.  If you use
;;  library dired+.el, then you can also `grep' the files in a project
;;  or saved list of file names by opening it in Dired and then using
;;  `M-g' (`diredp-do-grep').
;;
;;  Finally, note that among the sets of completion candidates that
;;  you can save are Icicles search hits.  That's right.  Icicles
;;  search lets you search multiple buffers, files, or buffer regions,
;;  and you can save selected search hits or all matching hits for
;;  later use.  When you save search hits, Icicles records the buffer
;;  or file names and the hit locations within those buffers or files.
;;  When you retrieve such a saved set to access its hits, Icicles
;;  automatically takes you to the proper files.
;;
;;  A related feature is being able to filter tags definitions and
;;  then save the filtered hit list.  This works the same way, and it
;;  gives you the equivalent of per-project TAGS files: A saved hit
;;  list acts just like a custom TAGS file when you reuse it.  And
;;  unlike some of your project files, a TAGS file doesn't change
;;  often, so saved hit sets stay accurate longer.
;;
;;(@* "Semantics? Roll Your Own?")
;;  ** Semantics? Roll Your Own? **
;;
;;  I no longer develop software.  I just putz around with Emacs Lisp
;;  for my own enjoyment, entertainment, and enlightenment.  So I
;;  don't use things like ECB (Emacs Code Browser) or Semantic
;;  (Bovinator).  I don't use any IDE that has knowledge of a
;;  particular programming language.  The Icicles commands I've
;;  written therefore use little or no semantic or language
;;  information; they rely upon syntax for the most part, and they are
;;  essentially language-agnostic (i.e. ignorant).
;;
;;  But you are a different story.  If you use, say, Semantic, you
;;  could write a little Emacs-Lisp code to take advantage of Icicles
;;  in combination with Semantic's parser information.  With complete
;;  ignorance of Semantic, I dare say it wouldn't be hard.  If you can
;;  get an alist of completion candidates for something from Semantic
;;  in some context, then you can exploit all of the Icicles features:
;;  apropos completion, progressive completion, multi-commands,
;;  Icicles search, and so on.  Likewise for any other IDE that plays
;;  well with Emacs and for any other programming language support.
;;  Think about it.  Others would appreciate your contribution.
;;
;;  Icicles provides lots of features for Emacs-Lisp programmers.  The
;;  end-user commands I've written using some of those features are
;;  really just a demonstration of what you can do.  Try rolling your
;;  own Icicles commands.  See Also: (@> "Note to Programmers").
 
;;(@* "Using Complex Completion Candidates")
;;
;;  Using Complex Completion Candidates
;;  -----------------------------------
;;
;;  This section could also be called "Applying a Function
;;  Interactively" or "Mapping over Sets".  It is about applying a
;;  function to members of a set of completion candidates that you
;;  select interactively.  The candidates can represent arbitrarily
;;  complex data, and the function is applied to the associated data
;;  as well, not just to the displayed (string) candidate that names
;;  the data.
;;
;;  You already know that you can manipulate sets of candidates - see
;;  (@file :file-name "icicles-doc1.el" :to "Sets of Completion Candidates").
;;  The elements of those sets are strings; you choose
;;  candidate names.  Sometimes, however, you need to choose among
;;  named items that are themselves complex, containing more
;;  information than just the name.  That is the idea behind
;;  multi-command `icicle-apply', which this section introduces.
;;
;;  You (or a command that you use) can obtain the information
;;  associated with a name after you choose the name.  This is what
;;  happens, for instance, when you use `find-file'; the command looks
;;  up the file associated with the file name you choose.  Icicles
;;  multi-commands such as `icicle-file' perform this lookup both when
;;  you act on a candidate during completion (e.g. `C-RET') and when
;;  you make a final candidate selection (`RET') - see
;;  (@file :file-name "icicles-doc1.el" :to "Multi-Commands").
;;
;;  Names and their associated information can be available in Emacs
;;  Lisp in the form of an association list (alist), that is, a list
;;  whose items are conses (cons cells).  An alist is often used to
;;  represent a function that maps one set of things to another.  The
;;  conses in the alist represent the tuples (typically pairs) of
;;  related items.  The car of each cons is called its "key"; the cdr
;;  is called its "value".  Different alists have different kinds of
;;  keys and values.  Typical key types include symbols and strings;
;;  typical value types include symbols, strings, numbers, and lists.
;;  There are quite a few standard Emacs-Lisp variables whose value is
;;  an alist.  Most are internal variables, but some are user options.
;;  See the Emacs-Lisp manual for more about alists.
;;
;;  The completion mechanism of Emacs function `completing-read' can
;;  take an alist as input: the keys are the completion-candidate
;;  strings that you choose from.  For Emacs completion, however, the
;;  value (cdr) of each alist key/value entry is completely ignored.
;;  Icicles uses `completing-read', and it works the same way.  If a
;;  command needs to access the value associated with a key
;;  (candidate), then it must somehow do so independently of
;;  completion.
;;
;;  Command `icicle-search' offers an example of this.  The completion
;;  alist contains key/value pairs whose car (key) is a search-hit
;;  string that matches your search string and whose cdr (value) is
;;  the buffer position for the hit.  When you use completion with
;;  this command, you work only with the keys, but `icicle-search'
;;  also keeps track of the corresponding buffer positions for you.
;;  The logic for doing this is coded into the definition of
;;  `icicle-search'.
;;
;;  It is common to want to do something interesting interactively
;;  with the values also, not just the keys, of a completion alist.
;;  Why lose the important value information when you choose a key?
;;  And instead of requiring the logic of each command to deal with
;;  this need individually, why not provide a general mechanism for
;;  accessing this information - both by program and interactively?
;;  This is what command `icicle-apply' is for.
;;
;;  To make use of completion alist values, you need to access the cdr
;;  of a key/value cons (pair).  Different alists are structured
;;  differently: the cdr can itself be complex (structured - a cons).
;;  In general, you want to access not just the cdr (value) but the
;;  key as well, the key/value pair as a whole, to do what you want
;;  with it - that is, to apply some function to it.
;;
;;  Emacs-Lisp programmers sometimes map functions over lists to
;;  obtain a different list.  For example, mapping the function `1+'
;;  over the list (3 1 4 1 5 9) gives the list (4 2 5 2 6 10).  Or if
;;  interested only in the side effects, they apply a function
;;  iteratively over a list without bothering to accumulate the
;;  results as a new list.  The command `icicle-apply' is inspired by
;;  these common practices of mapping and iterating over a list, but
;;  it applies only to alists.  And it lets you choose interactively
;;  which alist elements to act on, instead of always acting on all
;;  elements.
;;
;;  `icicle-apply' lets you apply a function of your choice to any
;;  number of key/value entries in an alist.  As user of the command,
;;  you choose the entries to act on.  The alist is used for
;;  completion; you choose among the keys.  The function is applied to
;;  the corresponding key/value pairs, however, not to the keys alone.
;;
;;  For example, given the alist `auto-mode-alist' and the function
;;  `cdr', you can choose to apply `cdr' to selected alist entries.
;;  This acts as a simple lookup function, because `cdr' just returns
;;  the value associated with a chosen key.  If you choose, for
;;  example, the candidate (key) "\.el\'", then the (value) result is
;;  the symbol `emacs-lisp-mode'.  In this case, the chosen key/value
;;  pair is ("\\.el\\'" . emacs-lisp-mode).  (A literal backslash must
;;  be doubled in an Emacs-Lisp string.)
;;
;;  Function `cdr' returns the value, which is `emacs-lisp-mode' here.
;;  If instead of `cdr' you use the function (lambda (x)
;;  (describe-function (cdr x))), then the result of choosing
;;  candidate "\.el\'" is to display the help for function
;;  `emacs-lisp-mode'.  This function first uses `cdr' to obtain the
;;  value (the mode) and then applies `describe-function' to that
;;  value.
;;
;;  A typical use of `icicle-apply' is to define your own
;;  multi-command that you or someone else can use to act on objects
;;  selected by name.  The definition of command `icicle-goto-marker'
;;  provides an example.  It uses an alist whose elements are pairs
;;  composed of a text line (the key) and the marker (the value) in
;;  that line.  It applies a function that moves to the marker.
;;
;;  If called interactively (as opposed to being used to define
;;  another command), `icicle-apply' lets you use completion to choose
;;  not only the objects to act on but also the function to apply to
;;  them and the alist to choose them from.  See the doc string of
;;  `icicle-apply' for more information.
;;
;;  Note that you can type in a lambda expression when prompted for
;;  the function.  You can use any function, provided it targets a
;;  key/value pair (a cons).  This is why you could not simply use
;;  `describe-function' itself as the function to apply in the example
;;  above: `describe-function' expects a symbol argument, not a cons.
;;
;;  So what is `icicle-apply' really for?  Anything you want.  You can
;;  use it to simply browse an alist or to perform actions on complex
;;  things.  The idea is to let you take advantage of Icicles features
;;  to interactively filter and manipulate a set of completion keys,
;;  and then apply any function you like to them - not just to the
;;  keys, but to the keys or their values, or both.
;;
;;  You can use apropos (regexp) matching or prefix matching to filter
;;  the alist, as always, during completion.  You can use `C-RET' and
;;  so on to act on (that is, apply the function to) selected
;;  key/value pairs that match your current input.
;;
;;  You can also act on *all* such pairs, by using `C-!' or `M-!'.
;;  `C-!' corresponds to iterating over the items in a list, applying
;;  a function to each.  `M-!' applies a function not to each chosen
;;  pair, but to the *list* of all chosen pairs.  By default, the
;;  completion candidates are not sorted, but you can of course sort
;;  them in various ways, either interactively or by program.
;;
;;  As an Emacs-Lisp programmer, you can use function `icicle-apply'
;;  programmatically to let users look things up in alists that you
;;  construct or to act on selected alist entries in complex ways.
;;  Icicles just provides the interactive completion features.
;;
;;  The real value of `icicle-apply' comes from what you do with it.
;;  Use it with a database of geographical coordinates to look up
;;  location names provided by users and draw corresponding vicinity
;;  maps.  Use it with a list of hardware configurations to let users
;;  perform diagnostic or maintenance operations on selected
;;  equipment.  You get the idea - use your imagination.
;;
;;  Note: Although completion alists normally require string-valued
;;  keys, `icicle-apply' is designed to work with any alist.
 
;;(@* "Icicles OO: Object-Action Interaction")
;;
;;  Icicles OO: Object-Action Interaction
;;  --------------------------------------
;;
;;  Here's another crazy Icicles feature: Instead of choosing a
;;  function (e.g. command) and then the object to apply it to, choose
;;  the object first and then the function.
;;
;;  The first thing to say about this feature is that Emacs is not
;;  really designed for this, so it's not feasible to do this in a
;;  entirely satisfactory way.  In particular, there is no practical
;;  way, given an object, to find all of the functions that apply to
;;  it, in order to allow those functions as completion candidates.
;;
;;  The second thing to say is that there are three ways that Icicles
;;  helps you operate on a chosen object of a given type:  
;;
;;  * apropos completion - (1) choose an object type by name, (2)
;;    choose a function, (3) choose the target object
;;
;;  * `M-RET' during completion - (1) choose a target object, (2)
;;    choose a function
;;
;;  * `icicle-object-action' and `icicle-anything' - (1) choose an
;;    object type by name, (2) choose the target object, (3) choose a
;;    function
;;
;;  As a special case, if you use library Anything (`anything.el'),
;;  then `icicle-object-action' lets you apply one or more Anything
;;  actions defined for the object.  See (@> "Icicles with Anything")
;;  for more information.
;;
;;(@* "Apropos Completion as OO")
;;  ** Apropos Completion as OO **
;;
;;  The first way that Icicles helps with object-action interaction is
;;  apropos completion, which you can use to narrow the set of
;;  commands to those that have the object type in their name.  You
;;  still choose the command before the individual object, but you at
;;  least choose the object type first (which narrows the set of
;;  possible objects).
;;
;;  If you use Icicles, you already use apropos completion this way,
;;  but you might not have thought about it in these terms.  If you
;;  want to invoke some command on a buffer, you might start by typing
;;  `M-x buffer S-TAB' or `M-x buff S-TAB'.  This is simple, but it
;;  really does get you most of the way toward object-action
;;  interaction.  And you can of course then use progressive
;;  completion (`M-*') to filter the matching commands for additional
;;  object-type names; for example `M-* window' keeps only those
;;  commands whose names contain both `buffer' and `window'.  Of
;;  course, this requires the command name to actually advertise
;;  truthfully the object types that it operates on.  There are false
;;  positives and true negatives, but Emacs is generally quite helpful
;;  in this respect.
;;
;;(@* "M-RET")
;;  ** M-RET **
;;
;;  The second way that Icicles helps with object-action interaction
;;  is the minibuffer binding of `M-RET'
;;  (`icicle-candidate-read-fn-invoke') during completion.  Whenever
;;  you are cycling through completion candidates, `M-RET' enters a
;;  recursive edit that prompts you for a function to apply to the
;;  current candidate.  Regardless of what the initial command was
;;  that you started to execute, if it reads an object name with
;;  completion, just cycle to that name and hit `M-RET'.  `M-mouse-2'
;;  does the same thing, so you don't even have to cycle to get to the
;;  candidate you want.  For example, if the current candidate is a
;;  buffer named `foo.el', then `M-RET' prompts you for a function to
;;  apply to it.  (Actually, the function is applied to the completion
;;  candidate, which is the buffer name in this case, but many
;;  functions accept an object name in place of the object.)
;;
;;  The function you enter can be anything; it need not be a command,
;;  and it need not be the name of a function: you can type a lambda
;;  expression that accepts an argument of the appropriate type.  The
;;  function is read with completion: you can complete a function name
;;  (the completion is lax, to allow for a lambda expression).  Note
;;  that the domain of discourse for completion is the set of *all*
;;  named functions, regardless of the target object.  It is up to you
;;  to choose an appropriate function.
;;
;;  Using a lambda expression here is a good way to "curry" a function
;;  that requires multiple arguments, so that it adapts to expect just
;;  a single argument of the appropriate object type.  For example,
;;  (lambda (sym-name) (get (intern (sym-name)) 'invisible))
;;  transforms function `get', which takes a symbol and a property, to
;;  a function that takes a symbol name and looks up the `invisible'
;;  property of the symbol.
;;
;;  If you use a prefix argument (`C-u M-RET' or `C-u M-mouse-2'),
;;  then the result of the function application is pretty-printed.
;;  Otherwise, the function is called for effect only.
;;
;;(@* "`icicle-object-action' and `icicle-anything'")
;;  ** `icicle-object-action' and `icicle-anything' **
;;
;;  The third way that Icicles helps with object-action interaction is
;;  provided by command `icicle-object-action'.  This reads an
;;  object-type name ("what"), with completion; then it reads an
;;  object of that type ("which"), with completion; then it reads a
;;  function (name or lambda expression) to apply to the object
;;  ("how"), with (lax) completion.  Again, use a prefix argument if
;;  you want to pretty-print the result.
;;
;;  `what-which-how' is an alias for command `icicle-object-action'.
;;  It is easy to remember, taking its name from the successive input
;;  prompts: "What?" - a file.  "Which?" - icicles.el.  "How?" open.
;;  Another alias for the same command is `a', because it acts on a
;;  file, a buffer, a symbol, a process, and so on.  The first thing
;;  it does is prompt you for the type of object, so you do `M-x a RET
;;  buffer', `M-x a RET symbol', and so on.
;;
;;  The aliases `what-which-how' and `a' are just convenience
;;  commands.  They are defined only if user option
;;  `icicle-define-alias-commands-flag' is non-nil.  Two related
;;  commands are also defined only if this option is non-nil:
;;
;;  * `file'   - same as `a RET file'
;;  * `buffer' - same as `a RET buffer'
;;
;;  For example: `M-x file RET'.  You are prompted for a file to act
;;  on, and then for the action to use.
;;
;;  Note: If you use AUCTeX, then be aware of an AUCTeX bug that
;;  causes problems if `icicle-define-alias-commands-flag' is non-nil.
;;  Here is the bug description, filed 2007/10/05 by Bjorn Haagensen:
;;  http://lists.gnu.org/archive/html/bug-auctex/2007-10/msg00006.html.
;;  The problem is that AUCTeX mistakenly invokes the Icicles `file'
;;  command, in an inappropriate context.  AUCTeX does not define any
;;  function `file' when it is loaded, but it invokes one, if defined.
;;  This appears to be a name-capture problem.  Since there is no
;;  `file' function defined when Icicles is loaded, Icicles defines
;;  its command.  AUCTeX developers will no doubt fix this bug.  Until
;;  then, AUCTeX users can avoid the bug by setting
;;  `icicle-define-alias-commands-flag' to nil.
;;
;;  The "type" of an object is one of these:
;;
;;  a. A member of the list `icicle-object-predicate-types'.  These
;;     are type predicates, such as `bufferp', `keywordp', or `atom'.
;;
;;  b. The `type' of an Anything source, or its `name' if it has no
;;     `type'.  This is available only if you use library
;;     `anything.el'.
;;
;;  c. A member of the list `icicle-object-named-types'.
;;
;;  Icicles completion is available for each prompt: the type, the
;;  object, and the action to apply to the object.  Types defined by
;;  Anything are highlighted in buffer `*Completions*' using face
;;  `icicle-special-candidate'.  In the case of an Anything type, you
;;  can use multi-command features to act on multiple objects in
;;  multiple ways, all within a single `a' invocation.  See
;;  (@> "Icicles with Anything") for more information about using
;;  Anything types.
;;
;;  The objects of types (b) and (c) are easily named, and their names
;;  serve as the completion candidates when you choose them.  So, for
;;  instance, if you choose type `buffer', then you can act on a
;;  buffer by choosing its name.
;;
;;  The objects of predicate type (type a, above) are not necessarily
;;  named.  The completion candidates for these objects are symbols
;;  whose values are the objects that are acted upon. The object-type
;;  names used for these candidates are really Emacs-Lisp type
;;  predicate names, which all end in `p', except for `atom'.
;;
;;  So, for instance, if you choose type `bufferp', then you can
;;  choose a symbol whose value is a buffer, in order to act on that
;;  buffer.  A buffer is of course always named, but an object of type
;;  `stringp' is not.  The value of `emacs-version' is one such string
;;  that you can act on.
;;
;;  Be aware that the action function you choose must accommodate the
;;  object you choose as its only argument.  Also, completion of the
;;  function candidate itself is lax, so you can enter a lambda form
;;  as the action.
;;
;;  Objects that are naturally associated with names are treated
;;  differently, depending on the type.  Besides Anything types, the
;;  following object types are used for named objects: `buffer',
;;  `command', `face', `frame', `function', `option', `process',
;;  `symbol', `variable', `window'.  For all of these except `window',
;;  the name of the object is used.  For `window', the candidate
;;  objects are the names of the buffers that are currently shown in a
;;  window (on any frame).
;;
;;  You'll note that some types are treated both ways, 1) using named
;;  objects and 2) using symbols whose values are objects.  An example
;;  is `frame' and `framep': the completion candidates (objects) for
;;  type `frame' are frame names; the candidates for type `framep' are
;;  symbols whose values are frames.
;;
;;  See Also:
;;
;;  * (@> "Icicles with Anything")
;;  * (@file :file-name "icicles-doc1.el" :to "Apropos Completions").
;;  * (@file :file-name "icicles-doc1.el" :to "Progressive Completion").
 
;;(@* "Icicles with Anything")
;;
;;  Icicles with Anything
;;  ---------------------
;;
;;  Library Anything (`anything.el') lets you define object types and
;;  associate actions with them.  It provides command `anything',
;;  which you can use to apply an action to an object, choosing the
;;  object first by name.  All objects (of all types) that have a name
;;  that matches your input are candidates.  You can use command
;;  `anything' while in Icicle mode; it has the same behavior with
;;  Icicles as without it.
;;
;;  Icicles also integrates some Anything features within its own
;;  completion environment, so that you can use Icicles features such
;;  as progressive completion at the same time.  In particular, you
;;  can act on multiple Anything objects in the same command
;;  invocation, and you can act on them using multiple Anything
;;  actions.
;;
;;  Command `icicle-anything' (alias `any') is just command
;;  `icicle-object-action' (alias `a') restricted to Anything types -
;;  see (@> "Icicles OO: Object-Action Interaction").  It is more
;;  convenient than `a' if you know that you want to use an Anything
;;  type, because the set of type candidates to choose from is more
;;  limited.
;;
;;  When you act on an object of an Anything type, you are not
;;  prompted for the action ("how").  The default Anything action is
;;  applied, or you can choose a different Anything action.
;;
;;  Command `any' (or command `a' when applied to an Anything type) is
;;  a multi-command (see
;;  (@file :file-name "icicles-doc1.el" :to "Multi-Commands")):
;;
;;  * `C-RET', `C-mouse-2', and so on perform the default Anything
;;    action on each chosen object.
;;
;;  * `C-S-RET', `C-S-mouse-2', and so on prompt you, for each chosen
;;    object, to choose one or more Anything actions (with
;;    completion).  
;;
;;  You can thus act on any number of Anything objects in any number
;;  of Anything ways, all in the same `any' command invocation.  And
;;  you can of course use Icicles completion and cycling to choose.
;;  User option `icicle-anything-transform-candidates-flag' determines
;;  whether Anything function `anything-transform-candidates' is
;;  applied to displayed Anything candidates in Icicles.
;;
;;  Here's an example of using command `any'.  Let's assume that you
;;  have an `action' entry such as this in `anything-type-attributes'
;;  for the Anything type `command':
;;
;;  (action ("Call interactively"
;;           . (lambda (command-name)
;;               (call-interactively (intern command-name))))
;;          ("Describe command"
;;           . (lambda (command-name)
;;               (describe-function (intern command-name))))
;;          ("Add command to kill ring" . kill-new)
;;          ("Go to command's definition"
;;           . (lambda (command-name)
;;               (find-function (intern command-name)))))
;;
;;  This defines four actions for objects of type `command', the
;;  default action being the first listed ("Call interactively").
;;
;;  You enter command `any', choose the Anything type `command', and
;;  then choose the command `icicle-face-list' to act on:
;;
;;    M-x any RET
;;    What (type): command RET
;;    Which (command): icicle-face-list RET
;;
;;  This invokes command `icicle-face-list', because the default
;;  Anything action for an object of type `command' is to call it.
;;
;;  If you use `C-RET' instead of `RET' when choosing command
;;  `icicle-face-list', then you remain within the `any' invocation,
;;  and you can do something with another command after
;;  `icicle-face-list'.  If you use `C-S-RET' when choosing a command,
;;  then you are prompted for the action to invoke for that command:
;;
;;    Which (command): icicle-face-list C-S-RET
;;    How (action): Go to command's definition RET
;;
;;  If you choose the Anything action "Go to command's definition",
;;  then, well, that's what happens: here, you go to the definition of
;;  `icicle-face-list'.  Again, you could use `C-RET' instead of
;;  `RET', to perform this action on the command and then choose and
;;  apply (via `RET' or `C-RET') another action to the same command.
;;
;;  After you've stopped (via `RET' or `C-g') acting on command
;;  `icicle-face-list', you can clear the minibuffer (using `M-k') and
;;  type another command to act on, and so on.  Or, you can stop (via
;;  `RET' or `C-g') and end the invocation of command `any'.
;;
;;  At each prompt, you can use (apropos or prefix) completion or
;;  cycling to pick a candidate.  So, for instance, using completion,
;;  you could simply do this to choose `command', `icicle-face-list',
;;  and "Go to command definition":
;;
;;    M-x any RET c RET face-l S-TAB C-S-RET g TAB RET
;;
;;  Icicles enhances Anything by providing multi-command features, as
;;  well as by providing all of the other standard Icicles features:
;;  apropos and prefix completion, cycling, progressive completion,
;;  help on individual candidates, and so on.  On the other hand,
;;  Anything by itself provides some features that Icicles does not
;;  exploit.  The aim of command `any' is to give you the basic
;;  Anything features in an Icicles completion context.
 
;;(@* "Multi-Completions")
;;
;;  Multi-Completions
;;  -----------------
;;
;;  This section is about using completion candidates that are
;;  composed of more than one part: strings that you can complete
;;  against separately and simultaneously.
;;
;;(@* "Icicles Multi-Completion Commands")
;;  ** Icicles Multi-Completion Commands **
;;
;;  Have you ever used standard Emacs command `apropos-documentation'?
;;  It searches the doc strings of all Emacs-Lisp symbols for matches
;;  to an input regexp, and displays the hits.  It can be useful when
;;  you don't remember the name of a function or variable but you can
;;  guess at terms that might occur in its doc string.  Typically,
;;  people resort to it only after first trying apropos commands that
;;  match against the function or variable name.
;;
;;  The idea behind `apropos-documentation' also motivates Icicles
;;  command `icicle-doc'.  This is a multi-command (see
;;  (@file :file-name "icicles-doc1.el" :to "Multi-Commands")),
;;  so you can use `C-RET' and `C-next' to browse the regexp matches,
;;  displaying the documentation of each match in turn, and you can
;;  change the regexp to get different matches during the same command
;;  invocation.
;;
;;  Like `apropos-documentation', `icicle-doc' lets you match a regexp
;;  against the doc strings of symbols such as functions, variables,
;;  and faces.  You can of course use progressive completion to match
;;  multiple regexps.  Here, for example, is a query that shows all doc
;;  strings (functions, variables, faces - a lot! of doc strings)
;;  that match both `mail' and `mode line', in either order,
;;  as completion candidates:
;;
;;    M-x icicle-doc RET mail S-SPC mode line
;;
;;  You cannot do that with vanilla Emacs `apropos-documentation' or
;;  with any other vanilla Emacs `apropos*' command.
;;  
;;  Commands `icicle-vardoc', `icicle-fundoc', and `icicle-plist' are
;;  similar to `icicle-doc' in the kind of functionality they provide.
;;  However, they use Icicles multi-completion, which `icicle-doc'
;;  does not.  A "multi-completion" is a completion candidate that has
;;  multiple parts.  A multi-completion command lets your input match
;;  any or all parts individually, at the same time.
;;
;;  * Commands `icicle-vardoc' and `icicle-fundoc' let you match both
;;    the function or variable name and the doc string.
;;
;;  * Command `icicle-plist' lets you match both a symbol name and its
;;    property list (as a string).  You can use it to find symbols
;;    with certain property-list keys or values.
;;
;;  * Command `icicle-describe-option-of-type' (bound to `C-h C-o' in
;;    Icicle mode) lets you match both an option name and the option's
;;    `defcustom' type definition.  There are several ways to match
;;    type definitions, controlled by the prefix argument - see the
;;    command's doc string.  You can match a type directly or taking
;;    type inheritance into account.  You can match a type as a sexp
;;    or using a regexp.  You can match a type expression or match the
;;    option's current value against a type.
;;
;;  Other Icicles commands that use multi-completion include
;;  `icicle-locate-file', `icicle-locate-file-other-window',
;;  `icicle-recent-file', and `icicle-recent-file-other-window'.
;;  These commands let you match against two-part multi-completion
;;  candidates that are composed of an absolute file name and the
;;  file's last modification date.  This means that you can easily
;;  find those notes you took sometime last week...
;;
;;  The way multi-completion commands work is a bit inelegant perhaps,
;;  and it can take some getting used to, but it is quite powerful,
;;  letting you do things with completion that are otherwise
;;  impossible.
;;
;;  In the case of commands that use two-part completions, you provide
;;  two regexps as input, one to match the name of a symbol (e.g. a
;;  function or variable) and one to match some associated information
;;  (doc string, property list, or type definition).
;;
;;  However, since completion candidates are not actually multipart,
;;  you in fact type a single regexp that is the concatenation of the
;;  two.  You join these two regexps using `icicle-list-join-string'
;;  (a user option), which, by default, is `^G^J', that is, a
;;  control-G character followed by a control-J (newline) character.
;;  As always, you can input control characters using `C-q', so to
;;  input `^G^J' you can use `C-q C-g C-q C-j'.
;;
;;  However, in Icicles, `C-j' (newline) is self-inserting during
;;  completion, so you don't need to quote it with `C-q' - you can use
;;  just `C-q C-g C-j'.  Better yet, you can use `C-M-j'
;;  (`icicle-insert-list-join-string') to insert `^G^J'.  This has the
;;  added benefit (in Emacs 22 or later) of hiding the `^G' - it's
;;  there, but you don't see it.  This hiding is only cosmetic; you
;;  still match the characters `^G' and `^J'.
;;
;;  In the same way, Icicles hides the `^G' part of `^G^J' in
;;  *Completions*, so the join string appears as a newline character.
;;  This sleight of hand is used only when `icicle-list-join-string'
;;  has its (ugly but useful) default value.
;;
;;  As an example of using a multi-completion command, you can use
;;  this to match a function name that contains `dired' and a doc
;;  string that contains `file':
;;
;;    M-x icicle-fundoc dired^G^Jfile S-TAB
;;
;;  That is, you type this:
;;
;;    M-x icicle-fundoc dired C-q C-g C-j file S-TAB
;;
;;  or this:
;;
;;    M-x icicle-fundoc dired C-M-j file S-TAB
;;
;;  Well, almost.  The way it actually works is that the completion
;;  candidates are themselves formed by concatenating symbol names
;;  with their doc strings, using `icicle-list-join-string'.  Your
;;  input regexp is matched against those candidates.  This means that
;;  the input regexp `dired^G^Jfile' would actually match only
;;  function names that *end* with `dired' and doc strings that
;;  *begin* with `file'.
;;
;;  To match `file' against any part of the doc string, you must
;;  explicitly link the two component regexps with a regexp that
;;  matches anything.  If you want to search only the first lines of
;;  doc strings, you can use `.*' to do that: `dired.*^G^J.*file' will
;;  match all functions whose names contain `dired' and whose doc
;;  strings' first lines contain `file'.  This is because `.' matches
;;  any character except a newline.
;;
;;  If you want to search the entire doc strings (or property lists,
;;  for `icicle-plist'), then you can use a connecting regexp such as
;;  `[^^G]*', which matches any sequence of characters except
;;  character `^G'.  That's `^' followed by the Control-g character
;;  (input using `C-q C-g'), not `^' followed by `^' and `G'.  To
;;  match any character, even `^G', you can use `\(.\|^J\)'.  (It's
;;  too bad that Emacs doesn't have a dot-matches-newline-too option.)
;;
;;  Here, `.*' is used to match anything following `dired' in the
;;  function name, and `[^^G]*' is used to match anything (including
;;  newline) before `file' in the doc string.
;;
;;    M-x icicle-fundoc dired.*^G^J[^^G]*file S-TAB
;;
;;  That is, you type (without the spaces):
;;
;;    M-x icicle-fundoc dired.* C-M-j [^ C-q C-g]* file S-TAB
;;
;;(@* "How Multi-Completions Work")
;;  ** How Multi-Completions Work **
;;
;;  These commands that accept a multipart regexp are examples of
;;  Icicles multi-completion.  Icicles extends standard function
;;  `completing-read' so that it will accept, as the set of completion
;;  candidates, an alist argument whose candidates are not only
;;  individual strings but can also be lists of strings.  Each string
;;  in the list is one part of a multipart completion candidate, that
;;  is, a multi-completion.  The strings are joined together pairwise
;;  using `icicle-list-join-string' by `completing-read'.  Commands
;;  `icicle-fundoc' and`icicle-vardoc' each use lists of two strings
;;  (name and doc), but a multi-completion can have any number of
;;  strings.
;;
;;  Why is the default value of `icicle-list-join-string' so odd:
;;  `^G^J'?  You can use any string you like, but here is the
;;  rationale behind the default choice:
;;
;;  - ^G does not normally occur in simple strings such as doc strings
;;  - a newline (^J) visually separates the multiple component strings
;;  - ^G^J is not too difficult to enter: `C-M-j' or `C-q C-g C-j'
;;
;;  It is important that the value of `icicle-list-join-string' not be
;;  something that is, itself, likely to match any of the candidates.
;;  Otherwise, it would not serve its role as separator.
;;
;;  I find that it helps a bit (in Emacs 22 or later) to customize
;;  face `escape-glyph', which is used for control characters such as
;;  `^G', in such a way that it stands out a bit, especially because
;;  control characters can be used in regexps that also use `^' as a
;;  special character.  I use an orange background with a blue
;;  foreground for this face.
;;
;;  Because multi-completions often extend over multiple lines, and
;;  candidates in buffer *Completion* appear one right after the
;;  other, it's helpful to add additional separation between
;;  multi-completion candidates.  That is the purpose of user option
;;  `icicle-list-end-string', whose default value is "^J^J" (two
;;  newline characters).  It is automatically appended to each
;;  candidate, for purposes of both display and matching.  Remember
;;  that it is part of each multi-completion candidate, especially if
;;  you use a regexp that ends in `$', matching the end of the
;;  candidate.
;;
;;(@* "Multi-Completions Let You Match Multiple Things in Parallel")
;;  ** Multi-Completions Let You Match Multiple Things in Parallel **
;;
;;  Consider the command `describe-option-of-type', defined in my
;;  library `help-fns+.el' (or `help+.el', for Emacs 20).  This lets
;;  you first pick a `defcustom' type using completion and then pick
;;  an option of that type to describe.  There are two separate,
;;  sequential acts of completion.  For each completion act, your
;;  current input defines a set of matches.  You can see all option
;;  types that match, say, the regexp `.*string', which means all
;;  types that contain `string'.  After you choose one of those types,
;;  you can see all options of that type whose names start with
;;  `icicle' and then pick one.
;;
;;  You can thus tweak the type regexp to filter types, and you can
;;  tweak the name regexp to filter option names.  And you can of
;;  course use progressive completion to whittle down either set of
;;  matches, piecemeal.
;;
;;  What you cannot do, however, using `describe-option-of-type' is
;;  filter both sets at the same time: narrow down the set of type
;;  matches and name matches simultaneously.  For that, you need
;;  Icicles multi-completion.  Without it, you must commit 100% to a
;;  type before you can choose among the options of that type.  With
;;  it, you can change the type (or the name) part of your input
;;  regexp on the fly, and see immediately the set of matching names
;;  (or types) as well.
;;
;;(@* "Multi-Completions vs `completing-read-multiple'")
;;  ** Multi-Completions vs `completing-read-multiple' **
;;
;;  Note that there is (only) a superficial similarity between Icicles
;;  multi-completion and the functionality provided by function
;;  `completing-read-multiple' of standard Emacs library `crm.el'.
;;  The latter lets you complete multiple strings in the minibuffer,
;;  one at a time.  It involves ordinary Emacs prefix completion, and
;;  it uses the same set of completion candidates for each of the
;;  strings in the input.
;;
;;  By contrast, Icicles multi-completion completes each part of your
;;  input against a different set of completion candidates.  For
;;  example, when you use `icicle-vardoc', it completes the
;;  variable-name part of your input against the names of defined
;;  variables, and the variable-description part against the doc
;;  strings of defined variables.  Standard Emacs command
;;  `completing-read-multiple' lets you complete several different
;;  variable names at the same minibuffer prompt, but they each
;;  complete against the same set of variable names.
;;
;;  Multi-completion matches a list of regexps in parallel.  See also
;;  the description of `M-*', which matches a list of regexps in
;;  series: (@file :file-name "icicles-doc1.el" :to "Progressive Completion").
;;  You can combine these features, of course.
;;
;;(@* "Sorting Candidates by Their Second Part")
;;  ** Sorting Candidates by Their Second Part **
;;
;;  Most multi-completions have two parts.  Typically, the first part
;;  is the main part, that is, the part that you will most frequently
;;  complete against.  Many candidate sort orders involve some flavor
;;  of alphabetic order, and this means alphabetizing first with
;;  respect to the first multi-completion part.
;;
;;  However, it can sometimes be convenient to sort instead by the
;;  second part first.  That is what the Icicles sort order "by 2nd
;;  parts alphabetically" is for.  You can use it, for example, with
;;  command `icicle-locate-file' to sort file-name candidates first by
;;  date, and then by file-name for the same date.  This gives you an
;;  easy way to look up files that you modified during a given time
;;  period.  For example, your input regexp can limit candidates to
;;  those files last modified sometime in July, 2008, and you can then
;;  access these chronologically (by cycling or in buffer
;;  *Completions*).  And don't forget that you can always reverse the
;;  current sort order, using `C-N C-,' where N is an integer.
;;
;;  See Also:
;;
;;  * (@> "Programming Multi-Completions") for information about
;;    changing the appearance and behavior of Icicles
;;    multi-completions using Emacs-Lisp code.
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Sorting Candidates and Removing Duplicates")
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Progressive Completion")
 
;;(@* "Fuzzy Completion")
;;
;;  Fuzzy Completion
;;  ----------------
;;
;;  There are two kinds of what might be called fuzzy matching in
;;  Icicles, in addition to apropos (regexp) matching and prefix
;;  matching.
;;
;;  One uses a fairly sophisticated matching algorithm that seems to
;;  account for various typing mistakes.  This algorithm is provided
;;  by library `fuzzy-match.el', so I call its use in Icicles `fuzzy'
;;  completion.  You must have library `fuzzy-match.el' to use this.
;;
;;  The other is a simple, poor man's fuzzy matching that I call
;;  `scatter' matching.  In Ido, it is called `flex' matching.  The
;;  TextMate editor seems to use the same thing for file-name
;;  matching (only), without naming it.
;;
;;  You can use fuzzy completion in place of prefix completion
;;  (`TAB').  You can use scatter-match completion in place of apropos
;;  completion (`S-TAB').  You can change completion methods easily at
;;  any time, by hitting a key in the minibuffer: `C-(' for fuzzy
;;  completion, `M-(' for scatter-match completion.
;;
;;(@* "Scatter-Match Completion")
;;  ** Scatter-Match Completion **
;;
;;  The idea behind scatter-match completion is very simple: input
;;  characters are matched in order against completion candidates, but
;;  possibly with intervening characters.  That is, your input
;;  scatter-matches a completion candidate if each character is also
;;  in the candidate, and the character order is respected.
;;  
;;  What this really amounts to is matching input `abc' as if it were
;;  the regexp `a.*b.*c'.  That's all.
;;
;;  You can use Icicles scatter matching at any time in place of
;;  apropos (regexp) matching.  Unlike the case of fuzzy completion
;;  (see below), you can use it to complete file names also.
;;
;;  In the minibuffer, `M-(' (command
;;  `icicle-next-apropos-match-function') cycles between apropos
;;  matching and scatter matching.  You then use `S-TAB' to complete.
;;
;;(@* "Fuzzy-Match Completion")
;;  ** Fuzzy-Match Completion **
;;
;;  Fuzzy completion takes more explaining.  If you use library
;;  `fuzzy-match.el', then you can use fuzzy input matching during
;;  Icicles prefix completion (`TAB').  Icicles fuzzy prefix
;;  completion is controlled by option `icicle-fuzzy-completion-flag',
;;  which you can toggle at any time from the minibuffer using `C-('
;;  (command `icicle-toggle-fuzzy-completion').  When fuzzy completion
;;  is turned on, `TAB' fuzzy-completes your input.
;;
;;  Fuzzy matching is described in detail in the commentary of library
;;  `fuzzy-match.el'; please refer to that documentation.  Here are
;;  some things to keep in mind when you use Icicles fuzzy completion:
;;
;;  * File-name completion is never fuzzy.
;;  * Fuzzy completion is always case-sensitive.  This means that
;;    `C-A' in the minibuffer has no effect on fuzzy completion.
;;  * Fuzzy completion always takes a space prefix in your input into
;;    account.  This means that `M-_' in the minibuffer has no effect
;;    on fuzzy completion.
;;  * Fuzzy completion candidates are always sorted by decreasing
;;    match strength.  This means that you cannot use `C-,' in the
;;    minibuffer to sort candidates differently.
;;
;;  Fuzzy completion is a form of prefix completion in which some
;;  input characters might not be present in a matched candidate.
;;  Matching finds the candidates that have the most characters in
;;  common with your input, in the same order and with a minimum of
;;  non-matching characters.  It can skip over non-matching
;;  characters, as long as the number of characters skipped in the
;;  candidate is less that those following them that match.  After the
;;  matching candidates are found, they are sorted by skip length and
;;  then candidate length.
;;
;;  Here are some examples:
;;
;;  Input         Completion Domain  Matches (Candidates)
;;  -----         -----------------  --------------------
;;  
;;  abc           {xxabcxx, xabcxxx,
;;                          xabx}    {xabcxxx, xxabcxx}
;;
;;  point-mx      Emacs variables    {point-max, point-max-marker}
;;
;;  begining-of-l Emacs commands     {beginning-of-line,
;;                                    beginning-of-line-text,
;;                                    move-beginning-of-line,
;;                                    widget-beginning-of-line}
;;
;;  The last example shows that although fuzzy matching is a kind of
;;  prefix matching, your input is not necessarily a prefix of each
;;  matching candidate.  It is prefix matching because it tries to
;;  match your input starting at its beginning.  This input prefix is
;;  matched against candidate substrings, not necessarily candidate
;;  prefixes, but the non-matching part (if any) preceding the matched
;;  substring must not be longer than the matching part.  That is,
;;  non-matching substrings can be skipped over, but they must be no
;;  longer than the matching substrings that follow them.  If an input
;;  prefix does not match under these conditions, it is skipped over.
;;
;;  After matching an input prefix this way, the same process is
;;  repeated, recursively, for input text following that prefix and
;;  for match positions following the matches found.  That is, after
;;  each such prefix match, the process starts again where it left off
;;  in both the input and the candidates.  The resulting matches
;;  contain one or more substrings of your input that are each at
;;  least as long as the non-matching parts that immediately precede
;;  them.  Only matches with the highest number of matching characters
;;  are retained.  They are sorted by two criteria: (1) nearness of
;;  matches to the start of the candidate and (2) candidate length.
;;
;;  The fuzzy-match algorithm is detailed in library `fuzzy-match.el'.
;;  However, it is easier to get a feel for what it does by trying it
;;  than by reading any description.  Just give it a try.  Do not
;;  expect it to rival apropos completion in power or expressivity,
;;  however.  Instead, think of it as prefix completion for lazy or
;;  inaccurate typists!  If that sounds like you, then you might find
;;  it useful.
;;
;;  As an example, here are some command-name candidates for the input
;;  `fo' (there are lots more):
;;
;;  fortune          forms-mode       focus-frame
;;  follow-mode      forward-sexp     forward-list
;;  forward-word     forward-line     forward-page
;;  ...
;;  ifconfig         info             Info-up
;;  Info-edit        Info-next        Info-help
;;  ...
;;  Info-mouse-follow-nearest-node    Info-goto-emacs-key-command-node
;;
;;  And here are all the command-name candidates for the input `fol':
;;
;;  follow-mode            follow-delete-other-windows-and-split
;;  Info-last              info-lookup-file       info-lookup-reset
;;  Info-last-preorder     info-lookup-symbol     Info-last-menu-item
;;  nnfolder-generate-active-file     mh-folder-mode
;;
;;  The first thing to notice is the distribution of candidates for
;;  input `fo'.  Candidates are in decreasing order of match fit:
;;
;;  * The nearer the match to the start of the candidate, the better
;;    the fit.
;;
;;  * The greater the ratio of matched text to unmatched text, the
;;    better the fit.
;;
;;  Note too the candidate `ifconfig'.  First, note that it has no
;;  strict match for substring `fo'.  Its match is in fact in two
;;  parts: `f', then `o'.  Second, note that it is considered a better
;;  fuzzy match than the candidate `info'.  This is because its match
;;  (`f') is nearer to the start of the candidate (second character,
;;  versus third).
;;
;;  The second thing to notice is that when you type the third input
;;  character, `l', the candidates are not a subset of the original
;;  set that matches `fo'.  The candidates in the second screenshot
;;  all match `fol' in a fuzzy way, even though one of them,
;;  `mh-folder-mode', does not match `fo' sufficiently well to be
;;  included as a candidate.  Why?  Because in the `fo' case, the
;;  match is only two characters long and it starts after three
;;  non-matching characters.
;;
;;  For both inputs: If all input prefixes are fair game for matching,
;;  why doesn't `*Completions*' also include other command names that
;;  match only the prefix `f' and nothing else?  Because there is at
;;  least one match that matches more than that - only the best
;;  matches are retained.  In this case, the best matches for input
;;  `fo' match both the `f' and the `o', and the best matches for
;;  input `fol' match all three of those characters.
;;
;;  Refer to `fuzzy-match.el' for a precise description of fuzzy
;;  matching.  It refers to "matchiness" for how many characters match
;;  and "closeness" for the ratio of number of characters matched to
;;  candidate length.
;;
;;  Note: It is not practical to try to highlight the exact candidate
;;  portions that match different parts of your input.  Because
;;  fuzzy-match input does not function as a literal string for
;;  matching purposes, it is more akin to substring matching than to
;;  plain prefix matching.  For this reason, regexp-match highlighting
;;  is used for fuzzy matching.  That is why you see the input `fo'
;;  highlighted in `*Completions*' candidates in other than just the
;;  prefix position.  It is also why the matching `f' and `o' in
;;  candidate `ifconfig' are not highlighted: for highlighting
;;  purposes, your input is treated as a regexp.
;;
;;  One takeaway here is that fuzzy completion is complicated.  Rather
;;  than try to understand how it works and think ahead in those
;;  terms, you just need to get a feel for it - learn by doing.  Have
;;  fun!
 
;;(@* "Completion in Other Buffers")
;;
;;  Completion in Other Buffers
;;  ---------------------------
;;
;;  In addition to input completion, you can use Icicles to complete
;;  words and symbols in other buffers, besides the minibuffer.
;;  Icicles enhances this completion in these ways:
;;
;;  1. Lisp symbol completion via `ESC-TAB' (`lisp-complete-symbol').
;;
;;  2. Word completion using the dynamic abbreviation of standard
;;     Emacs library `dabbrev.el'.
;;
;;  3. Mailing information completion for BBDB (Insidious Big Brother
;;     Database).
;;
;;  4. Word completion using the words and phrases in a thesaurus
;;
;;  5. Completion of shell commands, using previous inputs as
;;     candidates.  Likewise for any other interpreter.
;;
;;  Because these enhancements use Icicles completion, you must use
;;  `RET' (or `S-RET') to confirm completion.  This is one difference
;;  in completion behavior that you will notice.  The other difference
;;  is that you have all Icicles features available to you: apropos
;;  (regexp) completion, cycling of candidates, and so on.
;;
;;(@* "Dynamic Abbreviation")
;;  ** Dynamic Abbreviation **
;;
;;  Library `dabbrev.el' lets you type a few characters in a buffer
;;  and then prefix-complete them (in the same buffer) to a full word
;;  or symbol name.  The completion candidates come from words or
;;  symbol names in buffers that you are editing.  This functionality
;;  is called "dynamic abbreviation", though that is not a very good
;;  term for it (words are completed, not abbreviated, dynamically).
;;
;;  In Emacs, there are two ways to "dynamically abbreviate" text:
;;
;;  a. `M-/' (command `dabbrev-expand') completes to a candidate word.
;;     Repeating it replaces the completion with a different one -
;;     that is, it cycles candidates in the text buffer (not in the
;;     minibuffer).
;;
;;  b. `C-M-/' (command `dabbrev-completion') completes to the common
;;     prefix of all matching completion candidates.  Repeating it
;;     displays buffer `*Completions*' for you to choose a candidate.
;;     However, in this case, there is no way to cycle among the
;;     candidates.
;;
;;  If there are many candidate completions, then cycling among them
;;  with `M-/' can be tedious.  You can use `C-M-/' to complete to a
;;  common prefix, thus narrowing the set of candidates, but then you
;;  lose the ability to cycle among them.
;;
;;  If user option `icicle-redefine-standard-commands-flag' is non-nil
;;  (which is the case by default), then Icicles redefines command
;;  `dabbrev-completion' (it does not change `dabbrev-expand') so that
;;  it uses Icicles completion when there are multiple completions.
;;  You can use any Icicles features, such as apropos completion and
;;  candidate cycling.  In addition, you can even complete an empty
;;  prefix, starting from scratch with apropos completion.
;;
;;(@* "BBDB Completion")
;;  ** BBDB Completion **
;;
;;  Library `bbdb.el', available at http://bbdb.sourceforge.net/, is a
;;  rolodex-like database program for GNU Emacs.
;; 
;;  If user option `icicle-redefine-standard-commands-flag' is non-nil
;;  (which is the case by default), then Icicles redefines command
;;  `bbdb-complete-name' so that it uses Icicles completion when there
;;  are multiple completions.  You can use any Icicles features, such
;;  as apropos completion and candidate cycling.  For this feature to
;;  take effect, you must load BBDB before you load Icicles.
;;
;;(@* "Thesaurus Completion")
;;  ** Thesaurus Completion **
;;
;;  Library `synonyms.el' provides various features for defining a
;;  thesaurus and looking up words and phrases in it.  Command
;;  `icicle-complete-thesaurus-entry' takes advantage of these
;;  features.  You can use it to complete a word in a text buffer to
;;  any word or phrase in the thesaurus.  With the default value of
;;  option `icicle-top-level-key-bindings', this is bound to `C-c /'
;;  in Icicle mode.
;;
;;  Tip: You can use `icicle-complete-thesaurus-entry' to quickly
;;  check the spelling of a word.  If it is correctly spelled, then it
;;  appears as a complete completion (is highlighted as such in the
;;  minibuffer).
;;
;;  Another Icicles command that uses the thesaurus is
;;  `icicle-insert-thesaurus-entry'.  It lets you use Icicles
;;  completion, cycling, and so on to insert thesaurus words and
;;  phrases in any buffer.  It does not complete the word at point.
;;  It is a multi-command (see
;;  (@file :file-name "icicles-doc1.el" :to "Multi-Commands")), so you
;;  can, within a single call to it, insert any number of thesaurus
;;  entries, in succession.  If you wanted to, you could write an
;;  entire book using a single call to
;;  `icicle-insert-thesaurus-entry'!
;;
;;  Both commands, `icicle-complete-thesaurus-entry' and
;;  `icicle-insert-thesaurus-entry', require that you first load
;;  library `synonyms.el'.  See library `synonyms.el' for more
;;  information.
;;
;;(@* "Shell Command Completion")
;;  ** Shell Command Completion **
;;
;;  You can complete input to a shell or other interpreter, using your
;;  previous inputs to the interpreter as the set of completion
;;  candidates.  Just type something in the *shell* buffer, hit
;;  `C-c `', and pick one or more previous inputs to execute again
;;  (this uses `icicle-search', so it is a multi-command).  You need
;;  not execute the exact same command; you can edit your previous
;;  input before entering the command.
;;
;;  See Also: (@> "Other Icicles Search Commands").
 
;;(@* "Customization and General Tips")
;;
;;  Customization and General Tips
;;  ------------------------------
;;
;;  This section contains some tips on using Icicles and descriptions
;;  of Icicles user options.
;;
;;  See Also:
;;
;;  * (@> "File-Name and Directory-Name Completion Tips") for tips on
;;    using Icicles to complete file names.  User options related to
;;    file-name and directory-name completion are presented there, not
;;    here.
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Dealing With Large Candidate Sets")
;;    for tips on improving performance when dealing with a large
;;    number of completion candidates.
;;
;;  * (@> "Customizing Key Bindings") for information on customizing
;;    Icicles key bindings.
;;
;;(@* "Using Icicles with Delete Selection Mode")
;;  ** Using Icicles with Delete Selection Mode **
;;
;;  Icicles works especially well with Delete Selection mode, which I
;;  use and recommend.  (Likewise, for PC selection mode, which uses
;;  Delete Selection mode.)  In Delete Selection mode, whenever the
;;  region (selection) is active (highlighted), you can simply type to
;;  replace text in the region, or hit `DEL' (Backspace) or `C-d'
;;  (Delete) to delete the region.
;;
;;  However, library `delsel.el', which provides Delete Selection
;;  mode, binds keys in minibuffer maps that are also bound by
;;  Icicles.  For this reason, if you use both Icicles and Delete
;;  Selection mode, you must turn on Icicle mode after you turn on
;;  Delete Selection mode.  If you forget to do this, you will notice
;;  that `C-g' does not abort minibuffer input.  The remedy is simply
;;  to turn Icicle mode off, then on again.
;;
;;(@* "Icicles User Options and Faces")
;;  ** Icicles User Options and Faces **
;;
;;  There are several user options (user variables) and faces that
;;  Icicles defines, and you can also use various standard user
;;  options, including Icomplete options, that control various aspects
;;  of completion.
;;
;;  * User option `icicle-mode-hook' is a normal hook containing
;;    functions that are run after entering and exiting Icicle mode.
;;    This is nil, by default.
;;
;;  * User option `icicle-minibuffer-setup-hook' is a list of
;;    functions to be run at the end of minibuffer setup for Icicle
;;    mode.  This is nil, by default.
;;
;;  * User option `icicle-update-input-hook' is a list of functions to
;;    be run when minibuffer input is updated (typing or deleting).
;;    This is nil, by default.
;;
;;  * Case sensitivity: Standard user options `completion-ignore-case'
;;    and `read-file-name-completion-ignore-case' (for Emacs 22 and
;;    later) control whether completion distinguishes between
;;    uppercase and lowercase letters.
;;
;;    In addition, you can toggle case-sensitivity at any time using
;;    `C-A' (that is, `C-S-a') in the minibuffer.  This toggles
;;    `case-fold-search' and `completion-ignore-case'.  With a prefix
;;    argument, it also toggles
;;    `read-file-name-completion-ignore-case' (starting with Emacs
;;    22).
;;
;;    More precisely, it toggles the default value of
;;    `case-fold-search', and then it sets the other variables to the
;;    value of `case-fold-search'.  Because the default value of
;;    `case-fold-search' is changed, all buffers are affected.  Note
;;    that because some commands bind one or more of these variables,
;;    toggling case-sensitivity during command execution will not
;;    necessarily toggle their global values.
;;
;;    You can tell whether completion is currently case-sensitive by
;;    looking at the Icicle minor-mode lighter in the mode line, if
;;    `icicle-highlight-lighter-flag' is non-nil.  If case-sensitive,
;;    then the lighter text (with or without multi-command symbol `+')
;;    is `Icy'; if not, it is `ICY'.
;;
;;  * User options `icicle-region-background',
;;    `icicle-point-position-in-candidate',
;;    `icicle-mark-position-in-candidate', and
;;    `icicle-change-region-background-flag' are all used to define
;;    the region (the selected text) when cycling completion
;;    candidates.  They are described below individually.  The region
;;    is active when cycling, so you can easily delete it or replace
;;    it.
;;
;;  * User option `icicle-point-position-in-candidate' defines the
;;    minibuffer cursor position (point) while cycling candidate
;;    completions.  By default, the cursor is placed at the end of the
;;    root being completed.  You can instead place it at the root
;;    beginning or at the beginning or end of the complete minibuffer
;;    input.  For file-name input, the beginning of minibuffer input
;;    starts after the directory name (which is inserted
;;    automatically).
;;
;;  * Similarly, user option `icicle-mark-position-in-candidate'
;;    defines the position of the mark; by default, it is at the end
;;    of the input.  Together, these two options control the size and
;;    placement of the region in a flexible way.  You can make the
;;    region include all of the input, only the root, from beginning
;;    to root, or from root to end.  You can put the cursor at either
;;    end of the region.  You can get rid of the region altogether, by
;;    making point and mark coincide (at any of the possible
;;    positions).
;;
;;  * Because the region background color is often quite different
;;    from the frame background color (in order to have it stand out),
;;    it can be a bit hard to read the completion candidates when the
;;    region is highlighted during input cycling.  If user option
;;    `icicle-change-region-background-flag' is non-nil, however, then
;;    the region background is changed to a color that differs only
;;    slightly from the frame background, making it easier to read the
;;    completion candidates.  The actual background color used is the
;;    value of `icicle-region-background', which you can customize.
;;    If you make this color the same as the frame background, then
;;    the region background is, in effect, invisible.
;;
;;  * The default value of `icicle-change-region-background-flag' is
;;    determined by the current value of `delete-selection-mode', that
;;    is, whether or not Delete Selection mode is enabled, when
;;    Icicles is loaded.  For this reason, if you use Delete Selection
;;    mode and you want the region background to change in the
;;    minibuffer, you should either turn on Delete Selection mode
;;    before loading `icicles.el' or explicitly customize
;;    `icicle-change-region-background-flag' to non-nil.
;;
;;  * User option `icicle-default-value' controls the treatment of a
;;    default value for minibuffer input.  This includes not only
;;    functions that read input with completion (`completing-read',
;;    `read-file-name'), but also other input-reading functions:
;;    `read-from-minibuffer' and `read-string'.  The default value of
;;    t gives the vanilla Emacs behavior of adding the default input
;;    value to the prompt as a hint.  Non-nil and non-t means to
;;    automatically insert the default input value into the minibuffer
;;    as an initial value.  I prefer to have it inserted, as I often
;;    use the default value (perhaps editing it).  A value of nil
;;    neither inserts the default value nor adds it to the prompt.  If
;;    the value is t or nil, remember that you can always insert the
;;    default value manually with `M-n'.  If the value is neither t
;;    nor nil, you can always use `M-p' to remove the default value
;;    from the minibuffer.
;;
;;  * A non-nil, non-t value of `icicle-default-value' controls also
;;    whether or not the initial value is preselected, and where to
;;    leave the cursor: at the beginning or end of the value.
;;    Preselecting the value can be useful in Delete Selection mode or
;;    PC Selection mode, because it makes it easy to replace that
;;    value by typing characters, or delete it by hitting `DEL'
;;    (Backspace) or `C-d' (Delete).  However, all of the initial
;;    input is lost if you type or hit `C-d' or `DEL', which is
;;    inconvenient if you want to edit it only slightly.
;;
;;  * User options `icicle-thing-at-point-functions' and
;;    `icicle-default-thing-insertion' control the behavior of `M-.'
;;    in the minibuffer, which grabs text from the current buffer and
;;    yanks it into the minibuffer.
;;    See (@file :file-name "icicles-doc1.el" :to "Inserting Text Found Near the Cursor")
;;    and the doc string (`C-h v') of
;;    `icicle-thing-at-point-functions' for more information.
;;
;;  * User option `icicle-input-string' is a regexp string that is
;;    inserted in the minibuffer when you use `C-='.  See
;;    (@file :file-name "icicles-doc1.el" :to "Inserting a Regexp from a Variable").
;;
;;  * In buffer `*Completions*', face `icicle-saved-candidate'
;;    highlights candidates that have been saved, face
;;    `icicle-current-candidate-highlight' highlights the current
;;    completion candidate, and, provided user option
;;    `icicle-expand-input-to-common-match-flag' is non-nil, face
;;    `icicle-common-match-highlight-Completions' highlights the
;;    expanded common match among all completions.  Faces
;;    `icicle-match-highlight-Completions' and
;;    `icicle-match-highlight-minibuffer' highlight whatever your
;;    input matches, in buffer `*Completions*' and in the minibuffer,
;;    respectively.  In the minibuffer, face `icicle-complete-input'
;;    highlights your input when it is complete.
;;
;;  * Non-nil user option `icicle-touche-pas-aux-menus-flag' means
;;    that Icicles will not add menu items to menu-bar menus, except
;;    for the Icicles and Minibuf menus.  Default value nil means that
;;    whenever an appropriate menu-bar menu exists, Icicles items are
;;    added to it (when in Icicle mode).  For example, if nil, then
;;    Delete File is added to the File menu; otherwise it is added to
;;    the Icicles menu.  The value of this option is used only when
;;    Icicle mode is initially established, so changing it has no
;;    effect after Icicles has been loaded.  However, you can change
;;    it and save the new value, so it will be used next time.
;;
;;  * User option `icicle-redefine-standard-commands-flag' controls
;;    whether Icicles redefines some standard commands, enhancing them
;;    to use Icicles completion.  A non-nil value causes redefinition.
;;
;;  * User options `icicle-apropos-cycle-previous-keys',
;;    `icicle-apropos-cycle-next-keys',
;;    `icicle-prefix-cycle-previous-keys',
;;    `icicle-prefix-cycle-next-keys',
;;    `icicle-apropos-cycle-previous-action-keys',
;;    `icicle-apropos-cycle-next-action-keys',
;;    `icicle-prefix-cycle-previous-action-keys', and
;;    `icicle-prefix-cycle-next-action-keys' specify the keys to use
;;    for completion-candidate cycling.  By default, these keys are
;;    `prior', `next', `up', `down', `C-prior', `C-next', `C-up', and
;;    `C-down', respectively.  The prefix (non-action) versions are
;;    also used to move up or down a line in buffer `*Completions*'.
;;
;;  * Non-nil option `icicle-cycling-respects-completion-mode' causes
;;    the modal cycling keys to act differently during completion.
;;    Those keys are `up', `down', `C-up', and `C-down' by default,
;;    but they are configurable by user options
;;    `icicle-modal-cycle-up-keys', `icicle-modal-cycle-down-keys',
;;    `icicle-modal-cycle-up-action-keys', and
;;    `icicle-modal-cycle-down-action-keys'.
;;
;;    The completion mode, and hence the behavior of these keys, is
;;    changed whenever you hit `TAB' or `S-TAB' during completion: the
;;    mode is prefix completion after `TAB' and apropos completion
;;    after `S-TAB'.
;;    
;;    Before you hit `TAB' or `S-TAB', the cycling behavior depends on
;;    the particular non-nil value of the option:
;;    
;;    - `prefix'  means cycle prefix completions
;;    - `apropos' means cycle apropos completions
;;    - Other non-nil value means cycle inputs from the input history
;;    
;;    For example, if the value is `apropos' then you can immediately
;;    cycle apropos completions without first hitting `S-TAB'.
;;    
;;    Once you have used `TAB' or `S-TAB', the only way to traverse
;;    the input history is to use `M-p' and `M-n' (`up' and `down'
;;    will cycle completions).
;;    
;;    If the option is non-nil you can still use `M-p' and `M-n' to
;;    traverse the input history, and `prior' and `next' to cycle
;;    apropos completions (assuming that those default keys have not
;;    been changed).  And if you customize either the modal cycling
;;    keys or the prefix cycling keys so that they are different
;;    (e.g. one of those sets is no longer `up'/`down'), then you can
;;    also still use the latter.  In this case, you need not use `TAB'
;;    and `S-TAB' to switch between the two completion types, even
;;    when this option is non-nil - you can use the separate apropos
;;    and prefix cycling keys.
;;
;;  * The values of user options `icicle-modal-cycle-up-keys',
;;    `icicle-modal-cycle-down-keys',
;;    `icicle-modal-cycle-up-action-keys', and
;;    `icicle-modal-cycle-down-action-keys' are the keys used for
;;    modal cycling.  By default, these keys are `up', `down', `C-up',
;;    and `C-down'.  These options have an effect only if option
;;    `icicle-cycling-respects-completion-mode' is non-nil.
;;
;;  * User option `icicle-word-completion-keys' is a list of keys to
;;    use for word completion.  By default, the only such key is
;;    `M-SPC'.
;;
;;  * User option `icicle-apropos-complete-no-display-keys' is a list
;;    of keys to bind to `icicle-apropos-complete-no-display'.  By
;;    default, these keys are `C-M-S-tab' and `C-M-S-iso-lefttab',
;;    which together implement `C-M-S-TAB'.  Similarly,
;;    `icicle-prefix-complete-no-display-keys' is the list of keys for
;;    `icicle-prefix-complete-no-display'.  By default, the only such
;;    key is `C-M-tab'.
;;
;;  * Option `icicle-prefix-complete-keys' is the list of keys for
;;    `icicle-prefix-complete'.  By default, these keys are `tab' and
;;    `C-i', which together implement `TAB'.
;;
;;  * Option `icicle-generic-S-tab-keys' is the list of keys to bind
;;    to each of the following:
;;     - `icicle-apropos-complete'
;;     - `icicle-complete-keys'
;;     - `icicle-move-to-previous-completion' if in `*Completions*'
;;    By default, these keys are `S-tab' and `S-iso-lefttab', which
;;    together implement `S-TAB'.  (In Emacs 22 and later, `backtab'
;;    is the canonical key that represents both `S-tab' and
;;    `S-iso-lefttab', so that is used in the default value.)
;;
;;  * Option `icicle-isearch-complete-keys' is the list of keys for
;;    `icicle-isearch-complete'.  By default, these keys are `M-TAB'
;;    and `M-o' (and, on MS Windows, `C-M-TAB').
;;
;;  * User option `icicle-act-before-cycle-flag' nil means that keys
;;    such as `C-next', which combine candidate action and cycling,
;;    cycle to the next (or previous) candidate and act on it.
;;    Non-nil means they act on the current candidate and then cycle
;;    to the next (or previous) candidate.  When the value is nil, you
;;    can think of `C-next' as an operation on the next candidate.
;;    When the value is non-nil, you can think of `C-next' as an
;;    operation on the current candidate, which ends by making the
;;    next candidate current.  Similarly for `C-prior', `C-down', and
;;    `C-up'.  The default value is nil.  See also option
;;    `icicle-use-C-for-actions-flag', which changes the keys affected
;;    by `icicle-act-before-cycle-flag'.
;;
;;  * If option `icicle-use-C-for-actions-flag' is nil, then the keys
;;    that cycle candidates are swapped with the keys that both cycle
;;    and act on a candidate.  You can then use `down', `up', `next',
;;    and `prior' to both cycle and act, and `C-down', `C-up',
;;    `C-next', and `C-prior' to merely cycle, without acting
;;    (e.g. navigating).  The option has no effect on other keys.  You
;;    can toggle this option at any time using `M-g'
;;    (`icicle-toggle-C-for-actions') in the minibuffer.
;;
;;    (The keys mentioned here are the default bindings.  The actual
;;    keys swapped are those defined by user options
;;    `icicle-modal-cycle-down-keys', `icicle-modal-cycle-up-keys',
;;    `icicle-prefix-cycle-next-keys',
;;    `icicle-prefix-cycle-previous-keys',
;;    `icicle-apropos-cycle-next-keys',
;;    `icicle-apropos-cycle-previous-keys',
;;    `icicle-modal-cycle-down-action-keys',
;;    `icicle-modal-cycle-up-action-keys',
;;    `icicle-prefix-cycle-next-action-keys',
;;    `icicle-prefix-cycle-previous-action-keys',
;;    `icicle-apropos-cycle-next-action-keys', and
;;    `icicle-apropos-cycle-previous-action-keys'.)
;;
;;  * Non-nil user option `icicle-top-level-when-sole-completion-flag'
;;    means that whenever there is only one completion candidate that
;;    matches your input, that candidate is used immediately, without
;;    requiring you to hit `RET' or `S-RET'.
;;
;;  * Non-nil user option `icicle-TAB-shows-candidates-flag' means
;;    that hitting `TAB' for prefix completion immediately shows the
;;    completion candidates in buffer `*Completions*'.  If nil, then
;;    candidates are shown only after `TAB' is hit a second time,
;;    which is the standard Emacs behavior.  The default value is t.
;;    (Actually, the concerned keys are those defined by option
;;    `icicle-prefix-complete-keys', not necessarily `TAB'.)
;;
;;  * Non-nil user option `icicle-expand-input-to-common-match-flag'
;;    means that completion commands `TAB' and `S-TAB' expand your
;;    minibuffer input to (typically) the longest common match among
;;    all completion candidates.  This replaces the input you typed.
;;    If you want to edit your original, raw input, use `C-l'.  If
;;    your input has been expanded, then hit `C-l' twice: once to
;;    replace a completion candidate (from, say, `next') with the
;;    common match string, and a second time to replace the common
;;    match string with your original input.  The main reason you
;;    might want to set this to nil is for apropos completion, if you
;;    want to always work with a regexp in the minibuffer.  You can
;;    toggle this option at any time using `C-;' in the minibuffer.
;;    See (@file :file-name "icicles-doc1.el" :to "Expanded-Common-Match Completion").
;;
;;  * User option `icicle-show-Completions-initially-flag' controls
;;    whether or not buffer `*Completions*' is shown initially,
;;    without your needing to hit `TAB' or `S-TAB' to show it.
;;    However, if you type something before
;;    `icicle-incremental-completion-delay', then display is
;;    inhibited.  The default value is nil, meaning that
;;    `*Completions*' is not shown until you hit `TAB' or `S-TAB'.
;;    More typical than setting this option to non-nil globally is to
;;    bind it to non-nil in Emacs-Lisp code, to display
;;    `*Completions*' as a menu.  For example, pass a non-nil binding
;;    to `icicle-define-command' to create a command that displays a
;;    multiple-choice menu.  As an alternative to a non-nil
;;    `icicle-show-Completions-initially-flag', you can set option
;;    `icicle-incremental-completion-flag' to a value that is neither
;;    nil nor t; that will display `*Completions*' as soon as you type
;;    or delete input (but not initially).
;;
;;  * User option `icicle-incremental-completion-flag' controls
;;    whether or not `*Completions*' is updated incrementally
;;    (icompletion) as you type.  You can toggle incremental
;;    completion at any time using `C-#'.  For more information, see
;;    (@file :file-name "icicles-doc1.el" :to "Icompletion").
;;
;;  * User options `icicle-incremental-completion-delay' and
;;    `icicle-incremental-completion-threshold' together cause a delay
;;    before incremental completion takes effect.
;;    See (@file :file-name "icicles-doc1.el" :to "Icompletion").
;;
;;  * User option `icicle-Completions-display-min-input-chars' is the
;;    minimum number of input characters that allow buffer
;;    `*Completions*' to remain displayed.  By default, this is zero
;;    (0), meaning that any number of input characters, even none,
;;    allows `*Completions*' to remain displayed.  If you use
;;    incremental completion (see `icicle-incremental-completion-*'),
;;    and you are bothered by `*Completions*' being automatically
;;    updated when, for instance, you empty the minibuffer, then you
;;    might want to set this option to, say, 1 or 2.  With a value of
;;    2, for instance, whenever the minibuffer input has less than 2
;;    characters, incremental completion will remove the
;;    `*Completions*' window.  You can also remove the `*Completions*'
;;    window at any time using `C-x 0' in the minibuffer.
;;
;;  * Non-nil option `icicle-show-Completions-help-flag' means display
;;    help (instructions) at the top of the `*Completions*' window.
;;    These instructions are shown in faces
;;    `icicle-Completions-instruction-1' and
;;    `icicle-Completions-instruction-2'.
;;
;;  * User option `icicle-Completions-frame-at-right-flag' controls
;;    whether `icicle-candidate-action' moves the frame showing buffer
;;    `*Completions*' to the right, out of the way of other frames.
;;    This can be useful if you use one-buffer-per-frame (non-nil
;;    `pop-up-frames').  In that case, I recommend that you also try
;;    my library `oneonone.el'.
;;    See (@> "Note on Non-nil `pop-up-frames' on MS Windows") for
;;    more advice about non-nil `pop-up-frames'.
;;
;;  * User option `icicle-Completions-window-max-height' is the
;;    maximum height of the `*Completions*' window, in lines.  The
;;    window is fit to the buffer size, with this as maximum height.
;;    This is not used if `*Completions*' is a special display buffer
;;    with its own frame, and it is not used in Emacs releases prior
;;    to 21.
;;
;;  * User option `icicle-candidate-width-factor' controls how many
;;    columns of completion candidates are displayed in
;;    `*Completions*'.  The widest current candidate is scaled by this
;;    percentage, and the window width is divided by that figure.
;;    Other things are taken into account also, but this gives you a
;;    way to tweak the number of columns: the larger this number, the
;;    fewer the columns.  The default value is 70.
;;
;;    If you use Do Re Mi (library `doremi.el'), then you can modify
;;    `icicle-candidate-width-factor' incrementally during completion,
;;    seeing the effect as it changes.  Use `C-x w' from the
;;    minibuffer, then use the `right' and `left' arrow keys or the
;;    mouse wheel to increment and decrement the value.  You can at
;;    the same time use the `up' and `down' keys to adjust the value
;;    of `icicle-inter-candidates-min-spaces'.  WYSIWYG.
;;
;;  * User option `icicle-inter-candidates-min-spaces' is the minimum
;;    number of spaces between candidates displayed in
;;    `*Completions*'.  The default value is one space.
;;
;;    If you use Do Re Mi (library `doremi.el'), then you can modify
;;    `icicle-inter-candidates-min-spaces' incrementally during
;;    completion, seeing the effect as it changes.  Use `C-x |' from
;;    the minibuffer, then use the `up' and `down' arrow keys or the
;;    mouse wheel to increment and decrement the value.  You can at
;;    the same time use the `left' and `right' keys to adjust the
;;    value of `icicle-candidate-width-factor'.  WYSIWYG.
;;
;;  * Face `icicle-historical-candidate' is used to highlight
;;    completion candidates that you have used (entered with `RET')
;;    previously.  This highlighting is controlled by user option
;;    `icicle-highlight-historical-candidates-flag'.  You can toggle
;;    this option from the minibuffer at any time using `C-pause'.
;;    See (@file :file-name "icicles-doc1.el" :to "History Enhancements").
;;
;;  * User option `icicle-sort-function' controls the order of
;;    completion candidates during cycling and in buffer
;;    `*Completions*'.  If nil, then no sorting is done.  If non-nil,
;;    then the value must be a string-comparison function - the
;;    function is passed to the standard function `sort' to do the
;;    sorting.  The default value for `icicle-sort-function' is
;;    `icicle-case-string-less-p', which sorts alphabetically,
;;    possibly ignoring letter case.  During completion, you can
;;    toggle sorting using `C-,'.  If you are an Emacs-Lisp programmer
;;    and you write new commands using Icicles functionalities, you
;;    can bind `icicle-sort-function' temporarily to any sort function
;;    you need.
;;
;;  * User option `icicle-alternative-sort-function' is an alternative
;;    to `icicle-sort-function, providing a different sort order.  By
;;    default, it is `icicle-historical-alphabetic-p', a function that
;;    sorts previously used completion candidates before candidates
;;    that have not yet been used, and sorts alphabetically within
;;    each of these groups of candidates.  In other words, it places
;;    inputs that you have used previously at the top of buffer
;;    `*Completions*' and makes them available for completion first.
;;    During completion, you can toggle normal and alternative sorting
;;    using `C-M-,'.  See (@> "Sorting Candidates") and
;;    (@file :file-name "icicles-doc1.el" :to "History Enhancements").
;;
;;  * User option `icicle-change-sort-order-completion-flag' specifies
;;    whether `C-,' cycles among available sort orders or lets you
;;    choose a sort order using Icicles completion.  Non-nil means to
;;    use completion; nil (the default value) means to cycle.  You can
;;    override the current setting at any time by using `C-u C-,'.
;;    See (@> "Sorting Candidates").
;;
;;  * User option `icicle-sort-functions-alist' is an alist of
;;    possible sort orders for user to choose from using `C-,' or
;;    `M-,'.  See (@> "Sorting Candidates").
;;
;;  * The value of user option `icicle-transform-function' is a
;;    function that is applied to the list of completion candidates,
;;    to transform them before they are presented to the user.  If
;;    nil, then no transformation is done.  The default transformation
;;    is to remove duplicate candidates, when transformation is
;;    active, but the default value of this option is nil.  You can
;;    toggle transformation at any time using command
;;    `icicle-toggle-transforming', bound to `C-$' in the minibuffer.
;;    Although this is a user option, you probably do *NOT* want to
;;    change its value.  Icicles commands already "do the right thing"
;;    when it comes to candidate transformation.  The value of this
;;    option may be changed by program locally, for use in particular
;;    contexts.  For example, when you use `icicle-search-generic'
;;    (`C-c `') in a *shell* buffer, Icicles uses this variable with a
;;    value of `icicle-remove-duplicates', to remove duplicate shell
;;    commands from your input history list.  Lisp programmers can use
;;    this variable to transform the list of candidates in any way
;;    they like.  A typical use is to remove duplicates, by binding it
;;    to `icicle-remove-duplicates'.
;;
;;  * User options `icicle-require-match-flag' and
;;    `icicle-buffer-require-match-flag' let you override the value of
;;    the REQUIRE-MATCH argument provided to `completing-read' or
;;    `read-file-name'.  They are provided mainly for use (binding) in
;;    `icicle-define-command' and `icicle-define-file-command', but
;;    you may also use them globally, if you wish.  See
;;    (@file :file-name "icicles-doc1.el" :to "Exiting the Minibuffer Without Confirmation").
;;
;;    A typical use is made in the definition of command
;;    `icicle-buffer': `icicle-buffer-require-match-flag' is used to
;;    bind `icicle-require-match-flag', so that you can, for example,
;;    match only existing buffers and be able to match on partial
;;    input without explicitly completing (hitting `TAB' or `S-TAB').
;;    Simply set the option to `partial-match-ok' to get this
;;    behavior.  To apropos-complete and exit the minibuffer, use
;;    `S-RET' instead of `RET'.  See
;;    (@file :file-name "icicles-doc1.el" :to "Exiting the Minibuffer Without Confirmation"),
;;    for more information.
;;
;;  * Non-nil user option `icicle-ignore-space-prefix-flag' means to
;;    ignore completion candidates that start with a space.  However,
;;    such candidates are not ignored for prefix completion if the
;;    input also starts with a space.  Naturally, apropos completion
;;    is not affected by whether or not the input starts with a space.
;;
;;    Option `icicle-buffer-ignore-space-prefix-flag' lets you
;;    override the value of `icicle-ignore-space-prefix-flag' for use
;;    with buffer-name completion (the names of internal buffers start
;;    with a space).  It is provided mainly for binding in
;;    `icicle-define-command' (`icicle-buffer' does this).
;;
;;    You can toggle `icicle-ignore-space-prefix-flag' at any time
;;    using `M-_' in the minibuffer.  If the current command binds
;;    this option locally, then it is the local, not the global, value
;;    that is changed.  For example, if
;;    `icicle-buffer-ignore-space-prefix-flag' is non-nil, then `M-_'
;;    toggles `icicle-ignore-space-prefix-flag' to nil only for the
;;    duration of `icicle-buffer'.
;;
;;  * Non-nil user option `icicle-test-for-remote-files-flag' means
;;    that Icicles tests for remote file names; nil means that it does
;;    not.  You can toggle this using `C-^' in the minibuffer (except
;;    during Icicles search).  Turning off remote file-name testing
;;    means that you cannot use remote files with Tramp; it disables
;;    Tramp's remote file-name handling and completion.  This can, for
;;    local files, slightly speed up incremental completion and the
;;    highlighting of the part of your current input that does not
;;    complete (see `icicle-highlight-input-completion-failure').
;;
;;  * Non-nil user option `icicle-regexp-quote-flag' reduces apropos
;;    completion to simple substring completion and Icicles regexp
;;    search to literal search.  Regexp special characters are no
;;    longer recognized as special; they simply match themselves.  You
;;    probably do not want to customize this option.  Instead, you can
;;    toggle it at any time using `C-`' in the minibuffer.
;;
;;  * User options `icicle-command-abbrev-match-all-parts-flag',
;;    `icicle-command-abbrev-priority-flag', and
;;    `icicle-command-abbrev-alist' control the behavior of
;;    multi-command `icicle-command-abbrev' (`C-x SPC').  The first
;;    determines whether an abbreviation must match all parts of a
;;    command name.  The second controls whether command names or
;;    abbreviations take precedence in case of conflict.  The third is
;;    the persistent list of your command abbreviations.
;;
;;  * Non-nil user option `icicle-fuzzy-completion-flag' means that
;;    `TAB' completes non-filename input using fuzzy prefix matching
;;    as defined in `fuzzy-match.el'.  See `fuzzy-match.el' for
;;    details about fuzzy matching.  This has no effect if library
;;    `fuzzy-match.el' is not used (loaded).
;;
;;    This option has no effect on file-name completion.  Fuzzy
;;    completion is always case-sensitive, and leading spaces are
;;    taken into account.  Completion candidates are always sorted by
;;    decreasing fuzzy match strength.  That is, fuzzy completion is
;;    not affected by `C-A', `M-_', or `C-,'.  You can toggle this
;;    option from the minibuffer at any time with `C-('.
;;
;;  * Top-level command `icicle-search' uses several faces to
;;    highlight found text that matches your input.  Faces
;;    `icicle-search-main-regexp-current' and
;;    `icicle-search-main-regexp-others' highlight what your
;;    search-context regexp (entered with `RET') matches.  The former
;;    highlights the current search context; the latter highlights all
;;    other search contexts.
;;
;;    Face `icicle-search-current-input' highlights what your current
;;    input (typically another regexp) matches; that is, it highlights
;;    a match within a search context.  Faces
;;    `icicle-search-context-level-1' through
;;    `icicle-search-context-level-8' highlight the first eight regexp
;;    subgroup matches, within a search context.  This highlighting is
;;    done whenever `icicle-search-highlight-context-levels-flag' is
;;    non-nil and the search context corresponds to the entire regexp.
;;
;;  * User option `icicle-search-highlight-context-levels-flag'
;;    controls highlighting of regexp subgroup matches within the
;;    search context.  Non-nil (the default value) means highlight
;;    them.
;;
;;  * User option `icicle-search-highlight-threshold' controls
;;    highlighting with face `icicle-search-main-regexp-others': this
;;    many matches, maximum, are highlighted.  If zero, then only the
;;    current match is highlighted.  The effect is similar to the
;;    Emacs 22+ lazy search highlighting of Isearch (except that the
;;    highlighting is not in fact lazy).
;;
;;  * Non-nil user option `icicle-search-highlight-all-current-flag'
;;    means highlight the current input match in all main search hits
;;    at the same time.  If `icicle-expand-input-to-common-match-flag'
;;    is also non-nil, then what is highlighted for each input match
;;    is the expanded common match among all input matches throughout
;;    the search area.  If either is nil, then only the exact input
;;    match is highlighted.
;;
;;    The default value of `icicle-search-highlight-all-current-flag'
;;    is nil, because non-nil can impact performance negatively if
;;    there are many search contexts - the highlighting is updated
;;    with each input change.  You can toggle the value at any time
;;    using command `icicle-toggle-highlight-all-current', bound to
;;    `C-^' in the minibuffer (except during file-name completion).
;;
;;  * If, in addition to `icicle-search-highlight-all-current-flag'
;;    and `icicle-expand-input-to-common-match-flag', option
;;    `icicle-search-replace-common-match-flag' is also non-nil, then
;;    a search replacement replaces the expanded common match;
;;    otherwise, it replaces only the exact match.  You can toggle the
;;    value at any time using `M-;' in the minibuffer.
;;
;;  * Non-nil user option `icicle-search-cleanup-flag' means that
;;    `icicle-search' highlighting is removed after the search.  This
;;    is the default behavior.  If you set this to nil then you can
;;    remove search highlighting manually later using command
;;    `icicle-search-highlight-cleanup'.  You can toggle this search
;;    highlight removal at any time using command
;;    `icicle-toggle-search-cleanup', bound to `C-.' in the minibuffer
;;    (except during file-name completion).
;;
;;    One use of nil `icicle-search-cleanup-flag' is to highlight
;;    regexp matches throughout a region or buffer (or multiple files
;;    or...).  In that capacity, Icicles search functions act like
;;    some of the highlighting commands in my library `highlight.el'.
;;    Note that when `icicle-search-cleanup-flag' is nil, *all*
;;    Icicles search highlighting remains: last-visited search
;;    context, other context matches, current-input matches, and even
;;    regexp subgroups.  The faces for these are, respectively:
;;
;;     - `icicle-search-main-regexp-current'
;;     - `icicle-search-main-regexp-others'
;;     - `icicle-search-highlight-input-matches-here' (everywhere, if
;;       `icicle-search-highlight-all-current-flag' is non-nil)
;;     - `icicle-search-context-level-1' through
;;       `icicle-search-context-level-8'
;;
;;  * Non-nil user option `icicle-search-whole-word-flag' means that
;;    whole-word search is done.  All characters in your search string
;;    are searched for literally, and matches for the string must
;;    begin and end on a word boundary.
;;
;;  * User option `icicle-search-context-match-predicate', if non-nil,
;;    is a predicate that takes a search-context (string) argument.
;;    Only contexts that satisfy the predicate are used.  For example,
;;    if the predicate is (lambda (x) (commandp (intern-soft x))),
;;    then only contexts that name commands are kept.
;;
;;  * If user option `icicle-search-replace-whole-candidate-flag' is
;;    nil, then whatever matches your current input is replaced,
;;    within the current search context, when you perform replacement
;;    during Icicles searching (e.g. `C-S-RET').  If the value is
;;    non-nil (the default value), then the entire search context is
;;    replaced, instead.  You can use `C-,' at any time during
;;    searching and replacing, to toggle the value.
;;
;;  * User option `icicle-search-replace-literally-flag' determines
;;    whether Icicles search-and-replace replaces text literally or
;;    interprets `\' specially in the replacement text, as in
;;    `query-replace-regexp'.  Non-nil means to treat replacement text
;;    literally.  The default value is nil.  You can use `C-M-`' to
;;    toggle this at any time during Icicles search.
;;
;;  * User option `icicle-search-hook' is a list of functions to be
;;    run after searching and moving to an `icicle-search' match,
;;    whether you move there by `RET', `C-RET', `C-next', or
;;    `C-prior'.
;;
;;  * User option `icicle-region-alist' is a list of regions, which
;;    you can act on individually or together.  The regions can be in
;;    any buffers.  As an alternative to customizing this option
;;    directly, you can use command `icicle-add-region' to add the
;;    current Emacs region to the list.  Option
;;    `icicle-regions-name-length-max' is the maximum length of the
;;    region-start string that identifies the region for completion
;;    purposes.  See (@> "Multiple Regions").
;;
;;  * User option `icicle-bookmark-name-length-max' is the maximum
;;    number of buffer characters to use when `icicle-bookmark-cmd'
;;    with a numeric prefix argument automatically names a bookmark.
;;
;;  * Non-nil user option `icicle-region-auto-open-files-flag' means
;;    that commands that access `icicle-region-alist' first open all
;;    of the files associated with the recorded regions.  The files
;;    are not necessarily displayed.  If this option is nil, then
;;    these commands open the files only as you access them by
;;    choosing a region candidate.  You can also open all such files
;;    at any time, using command `icicle-region-open-all-files'.
;;
;;  * Non-nil user option `icicle-add-buffer-name-flag' means that for
;;    some commands, such as `icicle-search' and
;;    `icicle-select-region', the name of the buffer associated with
;;    each completion candidate is added to the candidate and
;;    highlighted.  You can match against the buffer name, as well as
;;    the rest of the candidate.  Note that even when the value of
;;    this option is nil, you can use `C-M-mouse-2' and so on to see
;;    information about a candidate, and this information includes its
;;    buffer name whenever a non-nil value of the option would have
;;    shown the buffer name.  The default value is t.
;;
;;  * User options `icicle-buffer-match-regexp',
;;    `icicle-buffer-no-match-regexp', `icicle-buffer-predicate', and
;;    `icicle-buffer-extras' determine the behavior of commands
;;    `icicle-buffer' and `icicle-buffer-other-window'.  They
;;    determine the set of buffer-name candidates initially available
;;    for completion.  The first three restrict this set to names that
;;    satisfy the properties they specify.  Option
;;    `icicle-buffer-extras' lets you add additional buffer names to
;;    the set of candidates, after restriction by the other options.
;;    Since these are user options, they provide an additional, more
;;    static way to filter the set of candidates.  Typing input
;;    (e.g. a regexp) then dynamically filters the result of applying
;;    the filter options.
;;
;;  * User option `icicle-buffer-sort' is a predicate used to sort
;;    buffer-name candidates in commands `icicle-buffer' and
;;    `icicle-buffer-other-window'.  One possible value is
;;    `icicle-buffer-sort-*...*-last', which sorts names of internal
;;    buffers, which begin with `*', after other buffer names.
;;
;;  * User option `icicle-buffer-configs' is a list of named
;;    configurations of options `icicle-buffer-match-regexp',
;;    `icicle-buffer-no-match-regexp', `icicle-buffer-predicate',
;;    `icicle-buffer-extras', and `icicle-buffer-sort'.  You use
;;    command `icicle-buffer-config' to choose one of the
;;    configurations to be current.  You can use commands
;;    `icicle-add-buffer-config' and `icicle-remove-buffer-config' to
;;    add and remove configurations from the list.
;;
;;    Example: A configuration such as the following, named "Files and
;;    Scratch", defines `icicle-buffer-predicate' to display only file
;;    buffers, and it defines `icicle-buffer-extras' to include the
;;    extra buffer `*scratch*':
;;
;;     ("Files and Scratch" nil nil
;;      (lambda (bufname) (buffer-file-name (get-buffer bufname)))
;;      ("*scratch*") icicle-sort-function)
;;
;;    The idea of buffer-option configurations was borrowed from
;;    library `bs.el', by Olaf Sylvester <olaf@geekware.de>.
;;
;;  * User options `icicle-list-join-string',
;;    `icicle-list-end-string', and
;;    `icicle-list-nth-parts-join-string' are described in sections
;;    (@> "Multi-Completions") and
;;    (@> "Programming Multi-Completions").  Option
;;    `icicle-list-join-string' is the separator string that joins
;;    together the parts of a multi-completion.  The end string is
;;    appended to each multi-completion candidate.  Option
;;    `icicle-list-nth-parts-join-string' specifies how the
;;    multi-completion extracted parts are joined back together when a
;;    user chooses a multi-completion.
;;
;;    The default value of `icicle-list-join-string' is `^G^J'.  With
;;    Emacs 22 and later, the `^G' part is hidden when it appears in
;;    *Completions*, and you can hide it in the minibuffer also by
;;    using `C-M-j' instead of typing `C-q C-g C-j'.
;;
;;  * Face `icicle-candidate-part' highlights one or more parts of a
;;    candidate, in buffer `*Completions*'.  The candidate is
;;    typically a multi-completion.
;;
;;  * Face `icicle-special-candidate' highlights candidates, in
;;    `*Completions*', that are considered "special".  Generally,
;;    these are candidates that match user option
;;    `icicle-special-candidate-regexp'.
;;
;;  * Similarly, face `icicle-proxy-candidate' highlights proxy
;;    candidates.  These are placeholders for real candidates.
;;    Non-nil user option `icicle-add-proxy-candidates-flag' means
;;    include proxy candidates whenever there are any.  You can toggle
;;    this option using command `icicle-toggle-proxy-candidates',
;;    which is bound to `C-M-_' in the minibuffer.
;;
;;  * User option `icicle-kmacro-ring-max' acts as `kmacro-ring-max'
;;    when you are in Icicle mode.  (When you exit Icicle mode,
;;    `kmacro-ring-max' is restored.)  In Icicles, you will typically
;;    want to use a much larger number than the default value in
;;    vanilla Emacs.
;;
;;  * User options `icicle-regexp-search-ring-max' and
;;    `icicle-search-ring-max' act as `regexp-search-ring-max' and
;;    `search-ring-max', respectively, when you are in Icicle mode.
;;    (When you exit Icicle mode, `regexp-search-ring-max' and
;;    `search-ring-max' are restored.)  The reason for having these
;;    options is that with Icicles you will likely want to use a much
;;    longer search history.  By default, these are as large as
;;    possible (virtually unlimited).
;;
;;    Suggestion: If you use library `savehist.el' (recommended),
;;    customize `savehist-additional-variables' to include variables
;;    `search-ring' and `regexp-search-ring', so that your search
;;    histories will be saved between Emacs sessions.
;;
;;    Note: You can clear (empty) a given search history with command
;;    `clear-option' (aka `icicle-reset-option-to-nil').  For example,
;;    to clear the regular-expression search history, do this:
;;
;;      `C-u M-x clear-option RET regexp-search-ring RET'
;;
;;    (The `C-u' is needed because this variable is not a user
;;    option.)  If you use my library `misc-cmds.el', you can clear
;;    search histories easier, using commands `clear-search-history',
;;    `clear-regexp-search-history', and `clear-search-histories'.
;;    See (@file :file-name "icicles-doc1.el" :to "Isearch Completion").
;;
;;  * User option `icicle-completion-history-max-length' limits the
;;    number of completion inputs to save.  If you customize user
;;    option `icicle-C-l-uses-completion-flag' to non-nil, then,
;;    instead of cycling, `C-l' lets you use Icicles completion to
;;    retrieve a past completion input.  (`C-L' does the same thing.)
;;    If you use library `savehist.el', then you can save the history
;;    of completion inputs persistently by customizing user option
;;    `savehist-additional-variables' to include the Icicles internal
;;    variables `icicle-previous-raw-file-name-inputs' and
;;    `icicle-previous-raw-non-file-name-inputs'.
;;
;;  * Faces `icicle-completion', `icicle-multi-command-completion',
;;    and `icicle-mustmatch-completion' indicate the status of
;;    minibuffer completion.  During completion, Icicles uses them for
;;    a minibuffer indicator and, if user option
;;    `icicle-highlight-lighter-flag' is non-nil, for the `Icy'
;;    mode-line lighter as well.
;;
;;  * Non-nil option `icicle-highlight-input-initial-whitespace-flag'
;;    uses face `icicle-whitespace-highlight' to highlight any
;;    whitespace that starts your minibuffer input.  This is done to
;;    help you recognize accidentally typing such whitespace.
;;    Otherwise, you might not understand the set of matching
;;    completion candidates (or lack thereof).  There is not
;;    necessarily anything wrong with input that starts with
;;    whitespace - it might be what you want, but without this
;;    highlighting it is easy to not notice the whitespace.
;;
;;  * The part of your current input that does not complete can be
;;    highlighted automatically, and you can then remove that part
;;    using `C-M-l'.  This highlighting is controlled by options
;;    `icicle-incremental-completion-flag',
;;    `icicle-test-for-remote-files-flag',
;;    `icicle-highlight-input-completion-failure',
;;    `icicle-highlight-input-completion-failure-delay', and
;;    `icicle-highlight-input-completion-failure-threshold'.  The
;;    highlighting uses face `icicle-input-completion-fail' (for
;;    strict completion) or `icicle-input-completion-fail-lax' (for
;;    lax completion).  For details, see the option doc strings and
;;    (@file :file-name "icicles-doc1.el" :to "Icicles Highlights the Input that Won't Complete").
;;
;;  * User option `icicle-top-level-key-bindings' specifies top-level
;;    commands and their bindings for Icicle mode.  By default, this
;;    rebinds several standard Emacs keys (in Icicle mode only).  For
;;    example, it substitutes `icicle-kill-buffer' for `kill-buffer'
;;    (binding it to whatever `kill-buffer' is bound to globally).
;;    Top-level commands are commands that are not used only in the
;;    minibuffer.  To change these bindings, customize
;;    `icicle-top-level-key-bindings'.  If you do that, then you must
;;    exit and re-enter Icicle mode to ensure that the change takes
;;    effect.  This is really necessary only if your changes would
;;    undefine a key.
;;
;;  * Non-nil option `icicle-define-alias-commands-flag' defines a few
;;    top-level Icicles commands whose names do not begin with
;;    `icicle-', for convenience when using `M-x'.  For example,
;;    command `toggle' is defined as an alias for command
;;    `icicle-toggle-option'.  In any case, no such command is ever
;;    defined by Icicles if a function with the same name is already
;;    defined.
;;
;;  * User option `icicle-color-themes' is a list of color themes to
;;    cycle through when you use command `icicle-color-theme'.
;;
;;  * User option `icicle-saved-completion-sets' is a persistent list
;;    of named sets of completion candidates.  You can switch among
;;    such sets at any time.  See
;;    (@file :file-name "icicles-doc1.el" :to "Persistent Sets of Completion Candidates").
;;
;;  * User option `icicle-filesets-as-saved-completion-sets-flag'
;;    non-nil means you can use Emacs filesets to save completion
;;    candidates persistently.  This means that you can save file-name
;;    candidates in a persistent Icicles saved completion set (cache
;;    file) or in in an Emacs fileset.  It also means that an Icicles
;;    persistent completion set can contain filesets, in addition to
;;    file names: any number of filesets, and filesets of different
;;    type.  Available only for Emacs 22 and later, and you must load
;;    library `filesets.el' (and enable filesets using
;;    `(filesets-init)').
;;
;;  * User option `icicle-key-descriptions-use-<>-flag' determines
;;    whether angle brackets (`<', `>') are used by Icicles for named
;;    keys, such as function keys (`<f9>' vs `f9') and pseudo keys
;;    (`<mode-line>' vs `mode-line').  Non-nil means to use angle
;;    brackets.  This option does not affect Emacs key descriptions
;;    outside of Icicles (e.g. `C-h k' or `C-h w'), and it has no
;;    effect for versions of Emacs prior to 21, because they never use
;;    angle brackets.  The default value is nil, because I think angle
;;    brackets reduce readability.
;;
;;  * User option `icicle-keymaps-for-key-completion' is a list of
;;    variables that are bound to keymaps in which you want to bind
;;    `S-TAB' to `icicle-complete-keys'.  Each such keymap should have
;;    at least one prefix key.  `S-TAB' (actually, each of the keys in
;;    option `icicle-generic-S-tab-keys') is bound in each keymap, so
;;    that you can use it to complete the prefix keys.
;;
;;  * Non-nil option `icicle-complete-keys-self-insert-flag' means
;;    that `icicle-complete-keys' includes self-inserting keys as
;;    completion candidates.  You will probably want to leave this nil
;;    and use command `icicle-insert-char', not
;;    `icicle-complete-keys', to insert special characters.
;;
;;  * User option `icicle-yank-function' is a function to use to yank
;;    text.  By default, it is `yank'.  Command `icicle-yank-insert'
;;    calls this function, except when `icicle-yank-insert' is called
;;    from the minibuffer or the prefix argument is negative.
;;
;;  * Non-nil user option `icicle-use-candidates-only-once-flag' means
;;    that acting on a candidate removes it from the set of available
;;    candidates, so that you don't see that it can be used again.
;;    (`TAB' or `S-TAB' makes it available again.)  The default value
;;    is nil, and you probably do not want to customize this.
;;    However, if you write Emacs-Lisp code that uses completion, then
;;    you can bind this to non-nil in contexts where that makes sense.
;;
;;  * Non-nil user option `icicle-deletion-action-flag' means
;;    `S-delete' during completion deletes the current object.  More
;;    precisely, it deletes the object named by the current completion
;;    candidate, if a deletion action is defined for the current
;;    command.  If no deletion action is defined, then the value of
;;    this option has no effect for that command.
;;
;;  * Non-nil user option `icicle-anything-transform-candidates-flag'
;;    means that Anything function `anything-transform-candidates' is
;;    applied to displayed Anything candidates in Icicles.  The
;;    default value is nil.
;;
;;  * User option `icicle-WYSIWYG-Completions-flag' controls how face
;;    and color names are displayed as candidates in `*Completions*'.
;;    If value is non-nil, then a WYSIWYG (what you see is what you
;;    get) sample of the face or color is shown.  If the value is a
;;    string, then a face name is accompanied by a separate face
;;    swatch with that string text.  If the value is t, then the face
;;    name itself is shown using the face it names.  You can use
;;    command `icicle-toggle-WYSIWYG-Completions' to toggle this
;;    option.
;;
;;  * Non-nil user option `icicle-unpropertize-completion-result-flag'
;;    means that `completing-read' and (starting with Emacs 23)
;;    `read-file-name' will strip all text properties from the result
;;    they return.  The default value is nil.  It is not likely that
;;    you will need to change this, but you might if you use some
;;    other library that cannot accept a propertized string as the
;;    result of completion.
;;
;;  * User options `icicle-pp-eval-expression-print-length' and
;;    `icicle-pp-eval-expression-print-level' control the Lisp sexp
;;    print length and print level, respectively, for values printed
;;    by `M-:' (`icicle-pp-eval-expression').
;;
;;  * Non-nil user option `icicle-inhibit-ding-flag' means Icicles
;;    never uses an audible bell (ding).
;;
;;  * Option `icicle-option-type-prefix-arg-list' is a list of symbols
;;    that control prefix arguments for command
;;    `icicle-describe-option-of-type (bound to `C-h C-o' by
;;    default). A list of six symbols taken from this list:
;;
;;    `direct'            `inherit'            `inherit-or-value'
;;    `direct-or-value'   `inherit-or-regexp'  `direct-or-regexp'
;;
;;    Choose the order you like. The list members map, in order from
;;    left to right, to these prefix argument keys:
;;
;;      1. `C-u C-u'
;;      2. `C-0'
;;      3. `C-u'
;;      4. `C-9' (positive)
;;      5. no prefix arg
;;      6. `C--' (negative)
;;
;;    For the meanings of the symbols, see the doc string of
;;    `icicle-describe-option-of-type', which describes the default
;;    prefix-argument bindings for the command.
;;
;;  * Non-nil user option `icicle-customize-save-flag' means that
;;    Icicles will save the updated value of option
;;    `icicle-command-abbrev-alist' when you quit Emacs.  This is the
;;    normal behavior.  If you for some reason do not want your
;;    `custom-file' or init file updated in this way, then customize
;;    `icicle-customize-save-flag' to nil.
;;
;;  * Option `icicle-customize-save-variable-function' is the function
;;    Icicles uses to automatically save user option changes made by
;;    some commands.  I recommend that you do *NOT* change this option
;;    value.  This is provided only for users who might want to
;;    disable such automatic saving of option changes, by setting this
;;    to `ignore', or users who might want to manage such option
;;    saving using their own function instead of the default value,
;;    `customize-save-variable'.
 
;;(@* "File-Name and Directory-Name Completion Tips")
;;
;;  File-Name and Directory-Name Completion Tips
;;  --------------------------------------------
;;
;;  This section contains some tips about completing file and
;;  directory names.
;;
;;  * Function `icicle-dirs-last-p' is provided as a possible value
;;    for user option `icicle-sort-function'.  It treats file and
;;    directory names specially, sorting directory names after file
;;    names; otherwise, it is the same as `icicle-case-string-less-p'.
;;    (You can of course reach directory names before, instead of
;;    after, file names, by cycling using `up' and `prior' instead of
;;    `down' and `next'.)
;;
;;  * User option `icicle-cycle-into-subdirs-flag' controls whether or
;;    not minibuffer-input cycling explores subdirectories.  By
;;    default, it is nil, meaning that cycling does not descend into
;;    subdirectories.
;;
;;    non-nil - When this option is non-nil, you might want to use a
;;          function such as `icicle-dirs-last-p' for option
;;          `icicle-sort-function', to prevent cycling depth first
;;          into the subdirectories.
;;
;;    nil - When this option is nil, you can still choose to cycle
;;          into a given directory (which is why nil is the default
;;          value).  When cycling reaches a candidate directory that
;;          you want to cycle through, just: 1) move the cursor
;;          (e.g. `C-e'), 2) hit `TAB' or `S-TAB' to "complete" the
;;          candidate, and then 3) use any of the cycle keys, such as
;;          `up', to cycle within the candidate directory.
;;
;;          Although the candidate directory was already completed by
;;          cycling, moving the cursor and explicitly "completing" it
;;          tells Icicles that you want to treat the candidate in the
;;          minibuffer as real input, just as if you had typed it, not
;;          merely as a cycling candidate.
;;
;;  * You can use `..' during completion to access a parent directory,
;;    and you can use `/' and `~/' to shadow input to the left.  There
;;    is currently no special treatment of MS Windows drive letters
;;    (e.g. `C:') - I use Cygwin on Windows.
;;
;;  * Standard Emacs user option `completion-ignored-extensions' is a
;;    list of file-name extensions.  File names that match any of
;;    these extensions are generally ignored for completion (but see
;;    the doc string for particulars).  In Icicles, however, the
;;    behavior is slightly different:
;;
;;    - In vanilla Emacs the option is itself ignored for display in
;;      buffer `*Completions*'.  That is, even file names that are
;;      ignored for completion are shown in `*Completions*' as
;;      available completion candidates.
;;
;;    - In Icicles this is not the case. When a file name is ignored
;;      it is ignored completely; it is not shown in `*Completions*'.
;;      But in Icicles you can toggle this ignoring off or on at any
;;      time during completion, using `C-.' in the minibuffer.
;;
;;  * User option `icicle-use-~-for-home-dir-flag' controls whether
;;    your home directory is written in the minibuffer using `~' or in
;;    expanded form, during completion.  The default value is `t',
;;    which means to use `~', saving minibuffer space.  You can toggle
;;    this option at any time using command
;;    `icicle-toggle-~-for-home-dir', bound to `M-~'.
;;
;;  * Remember that you can use a regular expression to
;;    apropos-complete file names.  This is a powerful feature.  Do
;;    not confuse its use with the ability to use shell wildcards
;;    (globbing) to access multiple files at once.  For example, if
;;    you use `C-x 4 f *.el RET', then all files with suffix `el' will
;;    be opened.  Regexp matching is used only for apropos (not
;;    prefix) completion and cycling.  See
;;    (@file :file-name "icicles-doc1.el" :to "What About Special-Character Conflicts?").
;;
;;  * You can use `$' for both environment variables and as a regexp
;;    special character.  For example, you can use a pattern such as
;;    `$HOME.*t$' to match the files in your home directory (`$HOME')
;;    whose names end in `t'.  See
;;    (@file :file-name "icicles-doc1.el" :to "What About Special-Character Conflicts?").
;;
;;  * You can use the idiom `\W$' as input to match only directories,
;;    when a command asks for a file or directory name.  The `\W' says
;;    to match any non word-syntax character.  The `$' says to match
;;    this at the end of the name.  This works because directory names
;;    appear as completion candidates with a trailing slash (`/'), and
;;    slash (`/') is about the only non word-syntax character that is
;;    likely to appear in file-name completions.  See
;;    (@file :file-name "icicles-doc1.el" :to "What About Special-Character Conflicts?").
;;
;;  * You can use library `ffap.el', if you like, with Icicles, to
;;    pick up the file, directory, or URL name under the cursor.  All
;;    Icicles features are available during file-name and URL
;;    completion.  If you like `ffap.el', you might also like to try
;;    my extension library `ffap-.el'.   See also
;;    (@file :file-name "icicles-doc1.el" :to "Inserting Text Found Near the Cursor").
;;
;;  * Many Icicles commands that target file or directory names look
;;    only in the current directory (`default-directory').  This means
;;    that the directory part of the name is ignored for matching
;;    purposes.  You can thus use apropos completion to match a
;;    substring, without needing to prefix the substring with `.*'.
;;    For example, to match file `favorite-foo-file.bar' in directory
;;    `/some/path/to/my/', it is sufficient to use either `foo' or
;;    `/some/path/to/my/foo'.
;;
;;  * Some Icicles commands that target file names match your input
;;    against absolute file-name completion candidates.  This is the
;;    case for `icicle-locate-file',
;;    `icicle-locate-file-other-window', `icicle-recent-file',
;;    `icicle-find-file-absolute', and
;;    `icicle-find-file-absolute-other-window', as well as commands
;;    `icicle-file' and `icicle-file-other-window' with a prefix
;;    argument.  These commands let you regexp-match against any part
;;    of the absolute file name, including directory components.
;;    See (@file :file-name "icicles-doc1.el" :to "File-Name Input and Locating Files Anywhere").
;;
;;  See Also:
;;
;;  * (@> "Customization and General Tips") for general tips about
;;    using Icicles.  Many of those tips apply also to file-name and
;;    directory-name completion.
;;  * (@file :file-name "icicles-doc1.el" :to "File-Name Input and Locating Files Anywhere").
 
;;(@* "Key Bindings")
;;
;;  Key Bindings
;;  ------------
;;
;;(@* "Global Bindings")
;;  ** Global Bindings **
;;
;;  Icicles does not change your global key bindings.  It changes some
;;  minibuffer bindings, and it adds some bindings for Icicle mode,
;;  but it does not change your global bindings.
;;
;;  There are two exceptions:
;;
;;  1. In Icicle mode, various Icicles commands are added to menu-bar
;;  menus.  File commands are added to the File menu, and so on, under
;;  an Icicles submenu.  Those items that do not belong naturally to
;;  any existing menu-bar menu are added to a new top-level Icicles
;;  menu and to the existing Minibuf menu.  Whatever the menu they
;;  appear in, however, Icicles menu items are visible only when
;;  Icicle mode is active.
;;
;;  If you do not want Icicles to add items to menus besides Minibuf
;;  and Icicles, then set option `icicle-touche-pas-aux-menus' to
;;  non-nil.  See (@> "Customizing Key Bindings").
;;
;;  2. Icicles adds the key `S-TAB' (bound to `icicle-complete-keys')
;;  to each existing keymap.  This allows you to complete keys in any
;;  keymap.  For technical reasons, these bindings are not part of
;;  `icicle-mode-map'; other keymaps are enhanced to include this
;;  binding.  However, this Icicles binding of `S-TAB' never replaces
;;  any existing binding of `S-TAB'.  See
;;  (@file :file-name "icicles-doc1.el" :to "Key Completion") for more
;;  information about this use of `S-TAB'.
;;
;;  (The documentation always refers to the key that performs key
;;  completion as `S-TAB'.  Actually, it is `S-TAB' only by default.
;;  You can customize it, using option `icicle-generic-S-tab-keys'.)
;;
;;(@* "Icicle-Mode Bindings")
;;  ** Icicle-Mode Bindings **
;;
;;  Most Icicle-mode bindings are in the Icicles menu-bar menu.  In
;;  addition, option `icicle-top-level-key-bindings' causes Icicles to
;;  bind some keyboard keys to some top-level Icicles commands.  Some
;;  of these take the place of similar, global bindings whenever you
;;  are in Icicle mode.  Typically, these top-level commands are
;;  Icicles multi-command versions of the vanilla Emacs commands.
;;  See (@file :file-name "icicles-doc1.el" :to "Multi-Commands").
;;
;;  You can customize option `icicle-top-level-key-bindings' to
;;  specify the top-level commands that you want to bind in Icicle
;;  mode, and the keys you want to bind them to.  With the default
;;  value of `icicle-top-level-key-bindings', Icicles makes the
;;  following Icicle-mode bindings:
;;
;;  * `C-c ''          - `icicle-occur'
;;  * `C-c ='          - `icicle-imenu'
;;  * `C-c `'          - `icicle-search'
;;  * `C-c `'          - `icicle-compilation-search' (in *grep* etc.)
;;  * `C-c `'          - `icicle-comint-search' (in *shell* etc.)
;;  * `C-c TAB'        - `icicle-comint-command' (in *shell* etc.)
;;  * `C-c /'          - `icicle-complete-thesaurus-entry'
;;  * `C-h C-o'        - `icicle-describe-option-of-type'
;;  * `ESC M-x', `M-`' - `lacarte-execute-menu-command'
;;  * `M-x'            - `icicle-execute-extended-command'
;;  * `C-x SPC'        - `icicle-command-abbrev'
;;  * `C-x M-e'        - `icicle-execute-named-keyboard-macro'
;;  * `S-f4'           - `icicle-kmacro'
;;  * `pause'          - `icicle-switch-to/from-minibuffer'
;;
;;  `S-TAB' is bound, in effect, to `icicle-complete-keys', which
;;  completes a key sequence.  Prefix keys followed by `S-TAB' are
;;  also bound to `icicle-complete-keys'.  (`S-TAB' is effectively
;;  bound to other commands in buffer `*Completions*' and in the
;;  minibuffer.)
;;
;;  (The documentation always refers to the key that performs key
;;  completion as `S-TAB'.  Actually, it is `S-TAB' only by default.
;;  You can customize it, using option `icicle-generic-S-tab-keys'.)
;;
;;  When `icicle-top-level-key-bindings' has its default value,
;;  Icicles also substitutes all of the key bindings for some standard
;;  Emacs commands.  For example, Icicles binds `icicle-buffer' to all
;;  keys that are globally bound outside Icicle mode to standard
;;  command `switch-to-buffer'.  By default, the following standard
;;  commands have their bindings co-opted this way by Icicles
;;  commands:
;;
;;  Standard Command                   Icicles Command
;;
;;  `abort-recursive-edit'.............`icicle-abort-recursive-edit'
;;  `bookmark-set'.....................`icicle-bookmark-cmd'
;;  `dabbrev-completion'...............`icicle-dabbrev-completion'
;;  `delete-window'....................`icicle-delete-window'
;;  `eval-expression'..................`icicle-pp-eval-expression'
;;  `exchange-point-and-mark'.........`icicle-exchange-point-and-mark'
;;  `execute-extended-command'.......`icicle-execute-extended-command'
;;  `find-file'........................`icicle-file'
;;  `find-file-other-window'...........`icicle-file-other-window'
;;  `find-tag'.........................`icicle-find-tag'
;;  `find-tag-other-window'.......`icicle-find-first-tag-other-window'
;;  `Info-goto-node'...................`icicle-Info-goto-node'
;;  `Info-index'.......................`icicle-Info-index'
;;  `Info-menu'........................`icicle-Info-menu'
;;  `kill-buffer'......................`icicle-kill-buffer'
;;  `lisp-complete-symbol'.............`icicle-lisp-complete-symbol'
;;  `other-window'.....................`icicle-other-window-or-frame'
;;  `other-frame'......................`icicle-select-frame'
;;  `pop-global-mark'...`icicle-goto-global-marker-or-pop-global-mark'
;;  `pop-tag-mark'.....................`icicle-pop-tag-mark'
;;  `pp-eval-expression'...............`icicle-pp-eval-expression'
;;  `set-mark-command'........`icicle-goto-marker-or-set-mark-command'
;;  `switch-to-buffer'.................`icicle-buffer'
;;  `switch-to-buffer-other-window'....`icicle-buffer-other-window'
;;  `where-is'.........................`icicle-where-is'
;;  `yank'.............................`icicle-yank-insert'
;;
;;  Actually, Icicles binds `icicle-yank-insert' to whatever the
;;  option `icicle-yank-function' is bound to.  By default, this is
;;  `yank'.
;;
;;  Here are some other Icicles commands that you might want to bind
;;  to keys in Icicle mode - they are not bound by Icicles (except to
;;  menu items):
;;
;;  `clear-option' (alias) - Set value of binary option to nil
;;  `icicle-add-buffer-candidate' -
;;                          Add buffer to those always shown
;;  `icicle-add-buffer-config' - Add to `icicle-buffer-configs'
;;  `icicle-add-entry-to-saved-completion-set' -
;;                          Add a completion candidate to a saved set
;;  `icicle-add/update-saved-completion-set' - Add a set to
;;                          `icicle-saved-completion-sets'
;;  `icicle-apply'        - Selectively apply function to alist items
;;  `icicle-apropos'      - `apropos', but shows matches
;;  `icicle-apropos-command' - Enhanced `apropos-command'
;;  `icicle-apropos-variable' - Enhanced `apropos-variable'
;;  `icicle-apropos-zippy' - Show matching Zippy quotes
;;  `icicle-bookmark'     - Jump to a bookmark
;;  `icicle-buffer-config' - Pick `icicle-buffer' options
;;  `icicle-buffer-list'  - Choose a list of buffer names
;;  `icicle-clear-history' - Clear minibuffer histories
;;  `icicle-color-theme'  - Change color theme
;;  `icicle-customize-face' - Multi-command `customize-face'
;;  `icicle-customize-icicles-group' -
;;                          Customize Icicles options and faces
;;  `icicle-delete-file'  - Delete a file or directory
;;  `icicle-delete-windows' - Delete all windows for a buffer
;;  `icicle-doc'          - Display doc of function, variable, or face
;;  `icicle-face-list'    - Choose a list of face names
;;  `icicle-file-list'    - Choose a list of file names
;;  `icicle-font'         - Change the frame font
;;  `icicle-frame-bg'     - Change the frame background color
;;  `icicle-frame-fg'     - Change the frame foreground color
;;  `icicle-fundoc'       - Display the doc of a function
;;  `icicle-insert-kill'  - Insert entries from `kill-ring'
;;  `icicle-insert-thesaurus-entry' -
;;                          Insert a thesaurus entry
;;  `icicle-keyword-list' - Choose a list of keywords (regexps)
;;  `icicle-locate-file'  - Open a file located anywhere
;;  `icicle-minibuffer-help' - Show Icicles minibuffer help
;;  `icicle-recent-file'  - Open a recently used file
;;  `icicle-remove-buffer-candidate' - 
;;                          Remove buffer from those always shown
;;  `icicle-remove-buffer-config' - 
;;                          Remove from `icicle-buffer-configs'
;;  `icicle-remove-entry-from-saved-completion-set' -
;;                          Remove a candidate from a saved set
;;  `icicle-remove-saved-completion-set' - Remove a set from
;;                          `icicle-saved-completion-sets'
;;  `icicle-reset-option-to-nil' -
;;                          Set value of binary option to nil
;;  `icicle-save-string-to-variable' -
;;                          Save text for use with `C-='
;;  `icicle-select-window' - Select a window by its buffer name
;;  `icicle-set-option-to-t' - Set value of binary option to t
;;  `icicle-toggle-option' - Toggle the value of a binary option
;;  `icicle-vardoc'       - Display the doc of a variable
;;  `toggle' (alias)      - Toggle the value of a binary option

;;
;;(@* "Minibuffer Bindings")
;;  ** Minibuffer Bindings **
;;
;;  There are many key bindings available during completion.  Most of
;;  these key sequences are bound in the minibuffer completion
;;  keymaps, but some are bound in the `*Completions*' buffer keymap.
;;  In addition, clicking `C-mouse-3' on a completion candidate in
;;  buffer `*Completions*' pops up a menu of available commands.
;;
;;  Some of these menu commands are applicable to the completion you
;;  click; others apply to the current state of completion or to the
;;  complete set of completion candidates.  The associated key
;;  bindings are indicated in the menu items, so this can be a good
;;  way to learn minibuffer and `*Completions*' bindings.
;;
;;  The following key bindings are made for the minibuffer completion
;;  keymaps.  They are in effect whenever you are using the minibuffer
;;  for input with completion (e.g. `completing-read',
;;  `read-file-name', `M-x').
;;
;;    `C-?' - `icicle-minibuffer-help': Pop up a *Help* buffer with
;;            information on using the minibuffer in Icicle mode.
;;            During completion, this includes information similar to
;;            what you are reading now.  It also includes toggle
;;            commands and the current toggle values.
;;
;;    `down', `up'    - `icicle-next-prefix-candidate',
;;                      `icicle-next-candidate-per-mode' (modal),
;;                      `icicle-previous-prefix-candidate',
;;                      `icicle-previous-candidate-per-mode' (modal),
;;                      which cycle candidate prefix completions.
;;
;;    `next', `prior' - `icicle-next-apropos-candidate',
;;                      `icicle-previous-apropos-candidate', which
;;                      cycle candidate apropos completions.
;;
;;                     (The documentation always refers to the keys
;;                     that cycle completion candidates as `down',
;;                     `up', `next', and `prior'.  Actually, these are
;;                     the cycling keys only by default.  You can
;;                     customize the cycling keys, using options
;;                     `icicle-prefix-cycle-next-keys',
;;                     `icicle-modal-cycle-down-keys' (modal),
;;                     `icicle-prefix-cycle-previous-keys',
;;                     `icicle-modal-cycle-up-keys' (modal),
;;                     `icicle-apropos-cycle-next-keys', and
;;                     `icicle-apropos-cycle-previous-keys'.)
;;
;;    Keys bound globally to commands that perform simple text
;;    insertion, deletion, and transposition operations - commands
;;    such as `self-insert-command' - are bound to Icicles versions of
;;    those commands that do the same thing but also provide apropos
;;    icompletion.  This includes keys such as `C-d', `C-k', and `C-w'
;;    (and lots more).  See (@file :file-name "icicles-doc1.el" :to "Icompletion").
;;
;;    `pause'  - `icicle-switch-to/from-minibuffer': Move cursor to
;;               the buffer from which the minibuffer was activated.
;;
;;    `C-insert' - `icicle-switch-to-Completions-buf': Move cursor to
;;               the current candidate in buffer `*Completions*'.
;;
;;    `M-*'    - `icicle-narrow-candidates': Narrow the set of
;;               completion candidates using another input regexp.
;;
;;    `M-SPC'  - `icicle-prefix-word-complete': Complete current input
;;               in minibuffer, as a prefix, a single word at a time.
;;               This replaces `minibuffer-complete-word'.  In fact,
;;               it is the keys in `icicle-word-completion-keys' that
;;               are bound to this command; `M-SPC' is by default.
;;
;;    `S-SPC'  - `icicle-apropos-complete-and-narrow': Same as
;;               `S-TAB' followed by `M-*'.
;;
;;    `TAB' -    `icicle-prefix-complete': Complete current input in
;;               minibuffer, as a prefix.  If there is more than one
;;               prefix-completion candidate, display them in buffer
;;               `*Completions*', highlighting the common prefix.
;;               This replaces `minibuffer-complete'.
;;
;;               (The documentation always refers to the key that does
;;               this as `TAB'.  Actually, it is only `TAB' by
;;               default.  You can customize it, using option
;;               `icicle-prefix-complete-keys'.)
;;
;;    `S-TAB'  - `icicle-apropos-complete': Like `TAB', but use
;;               apropos completion.
;;
;;               (The documentation always refers to the key that does
;;               this as `S-TAB'.  Actually, it is only `S-TAB' by
;;               default.  You can customize it, using option
;;               `icicle-generic-S-tab-keys'.)
;;
;;    `C-M-TAB' - `icicle-prefix-complete-no-display': Like `TAB', but
;;               does not display candidates in `*Completions*'.
;;
;;               (The documentation always refers to the key that does
;;               this as `C-M-TAB'.  Actually, it is only `C-M-TAB' by
;;               default.  You can customize it, using option
;;               `icicle-prefix-complete-no-display-keys'.)
;;
;;    `C-M-S-TAB' - `icicle-apropos-complete-no-display': Like
;;               `S-TAB', but does not display candidates.
;;
;;               (The documentation always refers to the key that does
;;               this as `C-M-S-TAB'.  Actually, it is only
;;               `C-M-S-TAB' by default.  You can customize it, using
;;               option `icicle-apropos-complete-no-display-keys'.)
;;
;;    `C-M-&'  - `icicle-save-predicate-to-variable': Save the current
;;               predicate used for completion to a variable.
;;
;;    `delete' - `icicle-remove-candidate': Remove the current
;;               candidate from consideration.
;;
;;    `S-mouse-2' - `icicle-mouse-remove-candidate': Same as `delete'.
;;
;;    `M-q'    - `icicle-insert-key-description': Insert the textual
;;               representation of a key sequence, during key
;;               completion.
;;
;;    `M-o'    - `icicle-insert-history-element': Use completion to
;;               insert a previously entered input in the minibuffer.
;;
;;  In Icicles, multi-line completion candidates are not uncommon.
;;  You can move up and down minibuffer lines with `C-p' and `C-n',
;;  and you can use the following keys to move among line beginnings
;;  and ends:
;;
;;    `C-a', `C-e' - `icicle-beginning-of-line+',
;;               `icicle-end-of-line+': Like normal `C-a', `C-e', but
;;               repeating goes to the previous or next line.
;;
;;    `C-o' - `1on1-fit-minibuffer-frame': Fit minibuffer frame. 
;;
;;  That is, if you use libraries `fit-frame.el', `setup-keys.el', and
;;  `oneonone.el' with a standalone minibuffer frame, then `C-o' in
;;  the minibuffer fits the minibuffer frame height to its contents.
;;  Repeat to increase the height a line at a time.  Similarly, `C-j'
;;  (`icicle-insert-newline-in-minibuffer') and `C-M-j' (see next)
;;  each insert a newline and then fit the minibuffer frame.
;;
;;    `C-M-j' - `icicle-insert-list-join-string': Insert
;;              `icicle-list-join-string'. See also
;;              (@> "Multi-Completions").
;;
;;  If you prefer, you can use the keys that are defined by options
;;  `icicle-modal-cycle-up-keys', `icicle-modal-cycle-down-keys',
;;  `icicle-modal-cycle-up-action-keys', and
;;  `icicle-modal-cycle-down-action-keys' (`up', `down', `C-up', and
;;  `C-down', by default) for both prefix and apropos completion, as
;;  well as for input-history traversal - the behavior is determined
;;  by the value of option `icicle-cycling-respects-completion-mode'
;;  and whether you have previously used `TAB' or `S-TAB'.  The
;;  documentation assumes the default value of nil.  See
;;  (@> "Customization and General Tips").
;;
;;  In vanilla Emacs, the following keys have a special purpose during
;;  input completion, but in Icicles they simply insert the character
;;  typed - they are self-inserting.  This is because (1) there are
;;  better ways to do what vanilla Emacs uses these keys for and (2)
;;  it is useful to be able to insert these characters without first
;;  typing `C-q' to quote them.
;;
;;    `?'   - see also
;;            (@file :file-name "icicles-doc1.el" :to "What About Special-Character Conflicts?")
;;
;;    `SPC' (space)
;;
;;    `C-j' (newline) - see also `C-o', above, and
;;                      (@> "Multi-Completions")
;;
;;  The following minibuffer bindings are made to clear minibuffer
;;  input, making them handy for editing and removing completions
;;  (e.g. default or initial values) in the minibuffer.
;;
;;    `M-k' - `icicle-erase-minibuffer-or-history-element'
;;    `M-S-backspace', `M-S-delete' - `icicle-erase-minibuffer'
;;
;;  `M-k' has an alternative behavior when you are cycling minibuffer
;;  history items: it deletes the current item from the history.
;;
;;  The following minibuffer binding moves the cursor to the start of
;;  the part of your input, if any, that is highlighted because it
;;  does not match any completion candidate (see option
;;  `icicle-highlight-input-completion-failure').  Repeating this
;;  command kills the rest of the line, removing the highlighted
;;  mismatched input.
;;
;;    `C-M-l'         - `icicle-goto/kill-failed-input'
;;
;;  The remaining input matches at least one candidate.
;;
;;  The following minibuffer bindings can be used to get rid of a
;;  completion inserted during cycling, and retrieve what you last
;;  typed during completion or any previous completion inputs:
;;
;;    `C-l'           - `icicle-retrieve-previous-input'
;;    `C-S-l' (`C-L') - `icicle-retrieve-next-input'
;;
;;  You can use these to cycle among and reuse inputs that you typed
;;  during completion but did not enter.  This completion input is not
;;  recorded in the standard input histories - they record only input
;;  that you have entered with `RET'.
;;  See (@file :file-name "icicles-doc1.el" :to "History Enhancements").
;;
;;  For example, suppose that you used `C-h v hook' to examine various
;;  hook variables, and you did this using`C-next' to display their
;;  documentation.  If you finished the command by just typing `C-g',
;;  then your input (`hook') was never really entered, so it is not
;;  available via the minibuffer history (`M-p').  You can retrieve it
;;  with `C-l', to use it again, in your next command.  User option
;;  `icicle-C-l-uses-completion-flag' controls the behavior of `C-l'
;;  and `C-L'; if non-nil, then, instead of cycling inputs, these
;;  commands let you access previous inputs using completion.
;;
;;  You of course have the standard access to the minibuffer history,
;;  via `M-p', `M-n', `M-r', and `M-s'.  In addition to these, the
;;  following minibuffer bindings let you use apropos completion on
;;  the current minibuffer history list.  For explanation, see
;;  (@file :file-name "icicles-doc1.el" :to "History Enhancements").
;;
;;    `M-h'     - `icicle-history'
;;    `M-pause' - `icicle-keep-only-past-inputs'
;;
;;  The following minibuffer bindings let you act on candidate
;;  completions.  For explanation, see
;;  (@file :file-name "icicles-doc1.el" :to "Multi-Commands"),
;;  (@file :file-name "icicles-doc1.el" :to "More about Multi-Commands"),
;;  (@file :file-name "icicles-doc1.el" :to "Choose All Completion Candidates"),
;;  and (@> "OO: Object-Action Interaction").
;;
;;    `C-RET'     - `icicle-candidate-action': current candidate
;;    `C-mouse-2' - `icicle-mouse-candidate-action': clicked candidate
;;    `C-up'      - `icicle-previous-prefix-candidate-action'
;;    `C-up'      - `icicle-previous-candidate-per-mode-action'(modal)
;;    `C-down'    - `icicle-next-prefix-candidate-action'
;;    `C-down'    - `icicle-next-candidate-per-mode-action' (modal)
;;    `C-prior'   - `icicle-previous-apropos-candidate-action'
;;    `C-next'    - `icicle-next-apropos-candidate-action'
;;    `C-!'       - `icicle-all-candidates-action': each candidate
;;    `M-!'       - `icicle-all-candidates-list-action': all, as list
;;    `M-RET'     - `icicle-candidate-read-fn-invoke': apply function
;;    `M-mouse-2' - `icicle-mouse-yank-secondary' (in minibuffer)
;;    `M-mouse-2' - `icicle-mouse-candidate-read-fn-invoke': apply fn
;;    `S-delete'  - `icicle-delete-candidate-object': delete object
;;
;;  Except as noted, the bindings for `icicle-mouse-*' are actually in
;;  the `*Completions*' buffer.
;;
;;  The following minibuffer bindings provide help on candidate
;;  completions.  For explanation, see
;;  (@file :file-name "icicles-doc1.el" :to "Get Help on Candidates")
;;  and (@file :file-name "icicles-doc1.el" :to "Multi-Commands").
;;
;;    `C-M-RET'   - `icicle-help-on-candidate': current candidate
;;    `C-M-mouse-2' - `icicle-mouse-help-on-candidate': clicked
;;    `C-M-up'    - `icicle-help-on-previous-prefix-candidate'
;;    `C-M-down'  - `icicle-help-on-next-prefix-candidate'
;;    `C-M-prior' - `icicle-help-on-previous-apropos-candidate'
;;    `C-M-next'  - `icicle-help-on-next-apropos-candidate'
;;
;;  The following minibuffer bindings provide an alternative action
;;  for individual candidates.  The alternative action is specific to
;;  the given command.  Most commands define no alternative action.
;;
;;    `C-S-RET'     - `icicle-candidate-alt-action': current candidate
;;    `C-S-mouse-2' - `icicle-mouse-candidate-alt-action': clicked
;;    `C-S-up'      - `icicle-previous-prefix-candidate-alt-action'
;;    `C-S-down'    - `icicle-next-prefix-candidate-alt-action'
;;    `C-S-prior'   - `icicle-previous-apropos-candidate-alt-action'
;;    `C-S-next'    - `icicle-next-apropos-candidate-alt-action'
;;    `C-|'         - `icicle-all-candidates-alt-action': each
;;    `M-|'         - `icicle-all-candidates-list-alt-action': list
;;
;;  The following minibuffer bindings let you perform set operations
;;  on sets of completion candidates.  For explanation, see
;;  (@file :file-name "icicles-doc1.el" :to "Sets of Completion Candidates").
;;
;;    `C-~'     - `icicle-candidate-set-complement'
;;    `C--'     - `icicle-candidate-set-difference'
;;    `C-+'     - `icicle-candidate-set-union'
;;    `C-*'     - `icicle-candidate-set-intersection'
;;    `C-M-<'   - `icicle-candidate-set-retrieve': retrieve saved set
;;    `C-M->'   - `icicle-candidate-set-save': save current set
;;    `C-M-)'   - `icicle-candidate-set-save-selected': save selected
;;    `C-<'     - `icicle-candidate-set-retrieve-more': add from saved
;;    `C->'     - `icicle-candidate-set-save-more': add to saved set
;;    `C-)'     - `icicle-candidate-set-save-more-selected': selected
;;    `insert'  - `icicle-save/unsave-candidate': save current cand
;;    `C-%'     - `icicle-candidate-set-swap': swap saved and current
;;    `C-:'     - `icicle-candidate-set-define': define current (Lisp)
;;    `M-S-mouse-2' - `icicle-mouse-save/unsave-candidate': (un)save
;;    `M-S-mouse-3' - `icicle-mouse-candidate-set-save': save selected
;;    `M-mouse-3'   - `icicle-mouse-candidate-set-save-more'
;;
;;  The following minibuffer bindings insert text in the minibuffer.
;;
;;    `M-.'     - `icicle-insert-string-at-point'
;;    `C-='     - `icicle-insert-string-from-variable'
;;    `M-:'     - `icicle-pp-eval-expression-in-minibuffer'
;;                (with a prefix arg)
;;
;;  The following minibuffer bindings let you toggle Icicles options
;;  or cycle among alternative Icicles behaviors.
;;
;;    `C-A' (that is, `C-S-a') - `icicle-toggle-case-sensitivity'
;;    `C-.'     - `icicle-toggle-ignored-extensions' (file completion)
;;    `C-.'     - `icicle-toggle-search-cleanup' (search)
;;    `C-,'     - `icicle-change-sort-order'
;;    `C-,'     - `icicle-toggle-search-replace-whole' (search)
;;    `M-,'     - `icicle-change-alternative-sort-order'
;;    `C-M-,'   - `icicle-toggle-alternative-sorting'
;;    `C-^'     - `icicle-toggle-remote-file-testing'
;;    `C-^'     - `icicle-toggle-highlight-all-current' (search)
;;    `C-#'     - `icicle-toggle-incremental-completion'
;;    `C-('     - `icicle-toggle-fuzzy-completion'
;;    `C-`'     - `icicle-toggle-regexp-quote'
;;    `C-M-`'   - `icicle-toggle-literal-replacement' (search)
;;    `C-$'     - `icicle-toggle-transforming' (removal of duplicates)
;;    `C-pause' - `icicle-toggle-highlight-historical-candidates'
;;    `M-g'     - `icicle-toggle-C-for-actions'
;;    `M-q'     - `icicle-toggle-search-whole-word' (search)
;;    `M-('     - `icicle-next-apropos-match-function'
;;    `M-~'     - `icicle-toggle-~-for-home-dir'
;;    `M-_'     - `icicle-toggle-ignored-space-prefix'
;;    `C-M-_'   - `icicle-toggle-proxy-candidates'
;;
;;  The following minibuffer bindings let you incrementally change
;;  options that affect the `*Completions*' display columns.  To take
;;  advantage of these, you must also use Do Re Mi (library
;;  `doremi.el').
;;
;;    `C-x w'   - `icicle-doremi-candidate-width-factor'
;;    `C-x |'   - `icicle-doremi-inter-candidates-min-spaces'
;;
;;  When used in the minibuffer, the following Icicles global binding lets
;;  you remove the `*Completions*' window.
;;
;;    `C-x 0'   - `icicle-delete-window'
;;
;;  The following minibuffer bindings are in effect during Icicles
;;  search:
;;
;;    `C-.'     - `icicle-toggle-search-cleanup'
;;    `C-,'     - `icicle-toggle-search-replace-whole'
;;    `M-,'     - `icicle-search-define-replacement'
;;    `M-q'     - `icicle-toggle-search-whole-word'
;;    `C-^'     - `icicle-toggle-highlight-all-current'
;;    `C-M-`'   - `icicle-toggle-literal-replacement'
;;
;;  The following minibuffer binding lets you evaluate an Emacs-Lisp
;;  sexp at any time, using a recursive minibuffer.  It displays the
;;  result of evaluation in the echo area or in a pop-up buffer, `*Pp
;;  Eval Output*'.  With a prefix arg (`C-u M-:'), it inserts the
;;  result into the minibuffer at point.
;;
;;    `M-:'     - `icicle-pp-eval-expression-in-minibuffer'
;;
;;  The following bindings are made for `completion-list-mode', that
;;  is, for buffer `*Completions*', which shows the list of candidate
;;  completions:
;;
;;    `left', `right' (`TAB')
;;                    - `icicle-move-to-previous-completion',
;;                      `icicle-move-to-next-completion': Navigate
;;                      backward & forward among candidates
;;    `up', `down'    - `icicle-previous-line', `icicle-next-line':
;;                      Navigate up & down among candidates (The
;;                      documentation refers to these keys as `up' and
;;                      `down'.  Actually, these are the keys only by
;;                      default.  You can customize them using options
;;                      `icicle-prefix-cycle-next-keys' and
;;                      `icicle-prefix-cycle-previous-keys'.)
;;    `C-insert'      - `icicle-insert-completion': Move cursor to the
;;                      minibuffer, with the current `*Completions*'
;;                      candidate as input
;;    `C-a', `C-e'    - `icicle-beginning-of-line+',
;;                      `icicle-end-of-line+' (repeatable)
;;    `C-g', `q'      - `icicle-abort-recursive-edit'
;;    `mouse-2'       - `icicle-mouse-choose-completion'
;;    `C-mouse-2'     - `icicle-mouse-candidate-action'
;;    `M-mouse-2'     - `icicle-mouse-candidate-read-fn-invoke'
;;    `C-M-mouse-2'   - `icicle-mouse-help-on-candidate'
;;    `M-S-mouse-2'   - `icicle-mouse-save/unsave-candidate'
;;    `C-mouse-3'     - `icicle-Completions-mouse-3-menu'
;;    `M-mouse-3'     - `icicle-mouse-candidate-set-save-more'
;;    `M-S-mouse-3'   - `icicle-mouse-candidate-set-save'
 
;;(@* "Customizing Key Bindings")
;;
;;  Customizing Key Bindings
;;  ------------------------
;;
;;  See (@> "Key Bindings") for a description of the key bindings
;;  defined by Icicles.
;;
;;  Key bindings are very personal choices, and reflect preferences
;;  and habits, as well as keyboard and other configurations.  You
;;  might want to change some of the bindings that Icicles creates.
;;  This section tells you how to do that.
;;
;;  However, before doing so, unless the default bindings present a
;;  hardware or OS configuration problem for you, please try using the
;;  default bindings for a while, before deciding that you want to
;;  change them.  Habit is a powerful persuader, but its advice is not
;;  always the best ;-).
;;
;;  There are some user options that make it easy to customize some
;;  Icicles key bindings.
;;
;;  * `icicle-apropos-cycle-previous-keys'               (`prior')
;;    Cycle to the previous apropos-completion candidate.
;;  * `icicle-apropos-cycle-next-keys'                   (`next')
;;    Cycle to the next apropos-completion candidate.
;;  * `icicle-prefix-cycle-previous-keys'                (`up')
;;    Cycle to the previous prefix-completion candidate.
;;  * `icicle-prefix-cycle-next-keys'                    (`down')
;;    Cycle to the next prefix-completion candidate.
;;  * `icicle-modal-cycle-up-keys'                       (`up')
;;    Cycle to the previous candidate (modal).
;;  * `icicle-modal-cycle-down-keys'                     (`down')
;;    Cycle to the next candidate (modal).
;;  * `icicle-apropos-cycle-previous-keys'               (`C-prior')
;;    Cycle to previous apropos-completion candidate and act on it.
;;  * `icicle-apropos-cycle-next-keys'                   (`C-next')
;;    Cycle to next apropos-completion candidate and act on it.
;;  * `icicle-prefix-cycle-previous-keys'                (`C-up')
;;    Cycle to previous prefix-completion candidate and act on it.
;;  * `icicle-prefix-cycle-next-keys'                    (`C-down')
;;    Cycle to next prefix-completion candidate and act on it.
;;  * `icicle-modal-cycle-up-keys'                       (`C-up')
;;    Cycle to previous candidate and act on it (modal).
;;  * `icicle-modal-cycle-down-keys'                     (`C-down')
;;    Cycle to next candidate and act on it (modal).
;;  * `icicle-prefix-complete-keys'                      (`TAB')
;;    Prefix-complete your input.
;;  * `icicle-generic-S-tab-keys'                        (`S-TAB')
;;    Used for `icicle-generic-S-tab', which means:
;;      - `icicle-apropos-complete': Apropos-complete input
;;      - `icicle-complete-keys': Complete keys
;;      - `icicle-move-to-previous-completion' (in `*Completions*')
;;  * `icicle-prefix-complete-no-display-keys'           (`C-M-TAB')
;;    Prefix-complete without showing `*Completions*'.
;;  * `icicle-apropos-complete-no-display-keys'          (`C-M-S-TAB')
;;    Apropos-complete without showing `*Completions*'.
;;  * `icicle-word-completion-keys'                      (`M-SPC')
;;    Prefix-complete your input a word at a time.
;;  * `icicle-isearch-complete-keys'                  (`M-TAB', `M-o')
;;    Complete incremental search string using search ring.
;;
;;  There are two kinds of Icicles bindings:
;;
;;  * Additions to menu-bar menus
;;  * Minibuffer bindings
;;
;;(@* "Customizing Menu-Bar Menus")
;;  ** Customizing Menu-Bar Menus **
;;
;;  Icicles normally adds items to appropriate existing menu-bar
;;  menus, such as File and Options, as well as to menu-bar menus
;;  Minibuf and Icicles.  These items are placed in an Icicles submenu
;;  (e.g. Files > Icicles).  If you do not want to add an Icicles
;;  submenu, then set option `icicle-touche-pas-aux-menus-flag' to
;;  non-nil before loading Icicles.  The menu items are then added to
;;  the Icicles menu.
;;
;;(@* "Customizing Minibuffer Bindings")
;;  ** Customizing Minibuffer Bindings **
;;
;;  There are user options for most Icicles minibuffer bindings that
;;  you might want to change - see above.  This section tells you how
;;  to change additional bindings.
;;
;;  To understand how you can modify Icicles minibuffer bindings, it
;;  helps to know how Icicles creates the default bindings.  For that,
;;  the best advice is to consult the Emacs-Lisp code in library
;;  `icicle-mode.el'.  Even if you are not very familiar with
;;  Emacs-Lisp, however, you should be able to do what you want by
;;  adapting the example in this section.
;;
;;  Suppose that you want to bind `f11' and `f12' to traverse the
;;  input history up and down whenever you are in Icicle mode.  There
;;  are no user options for this, but you can do it by inserting this
;;  code into your init file (~/.emacs), before the code that requires
;;  (loads) library `icicles.el':
;;
;;  (add-hook 'icicle-mode-hook 'bind-my-icicles-keys)
;;  (defun bind-my-icicles-keys ()
;;    "Replace some default Icicles minibuffer bindings with others."
;;    (dolist
;;        (map
;;          (append
;;           (list minibuffer-local-completion-map
;;                 minibuffer-local-must-match-map)
;;           (and (fboundp
;;                 'minibuffer-local-filename-completion-map)
;;                (list minibuffer-local-filename-completion-map))))
;;      (when icicle-mode
;;        (define-key map [f11] 'previous-history-element)
;;        (define-key map [f12] 'next-history-element))))
;;
;;  See also (@> "Customization and General Tips") for information
;;  about other customizations, besides key bindings.
 
;;(@* "Icicles Redefines Some Standard Commands")
;;
;;  Icicles Redefines Some Standard Commands
;;  ----------------------------------------
;;
;;  If user option `icicle-redefine-standard-commands-flag' is
;;  non-nil, then Icicles automatically redefines a few standard Emacs
;;  commands when you are in Icicle mode, enhancing them for Icicles
;;  completion:
;;
;;    `bbdb-complete-name' (from BBDB), `customize-apropos',
;;    `customize-apropos-faces', `customize-apropos-groups',
;;    `customize-apropos-options', `customize-face',
;;    `customize-face-other-window', `dabbrev-completion',
;;    `lisp-complete-symbol', `repeat-complex-command',
;;    `switch-to-completions'.
;;
;;  Icicles automatically redefines these standard Emacs commands for
;;  use in the minibuffer or *Completions*:
;;
;;    `choose-completion', `exit-minibuffer',
;;    `minibuffer-complete-and-exit', `mouse-choose-completion',
;;    `next-history-element'.
;;
;;  When you exit Icicle mode, the standard definitions are restored.
 
;;(@* "Programming Multi-Completions")
;;
;;  Programming Multi-Completions
;;  -----------------------------
;;
;;  This section is for Emacs-Lisp programmers.
;;
;;  Multi-completions are completion candidates that are composed of
;;  parts separated by `icicle-list-join-string' and terminated by
;;  `icicle-list-end-string'.  See (@> "Multi-Completions") for
;;  information about how users interact with multi-completions.
;;
;;  You can define your own Icicles commands that use
;;  multi-completions.  You can bind `icicle-list-join-string' or
;;  `icicle-list-end-string' to any strings you like, depending on
;;  your needs.  See
;;  (@file :file-name "icicles-doc1.el" :to "Key Completion") for an
;;  example where `icicle-list-join-string' is bound to "  =  " and
;;  `icicle-list-end-string' is "".  This section describes two
;;  additional variables that you can bind to affect the appearance
;;  and behavior of multi-completions.
;;
;;(@* "Variable icicle-list-use-nth-parts")
;;  ** Variable icicle-list-use-nth-parts **
;;
;;  Variable `icicle-list-use-nth-parts' affects the minibuffer
;;  behavior of multi-completions.  If you bind this to a list of
;;  whole numbers, then multi-completion candidates are transformed
;;  using those numbers as indexes.  During completion and cycling,
;;  whenever a sole candidate matches the user input, if that
;;  candidate is a multi-completion, then it is transformed by
;;  extracting and possibly reordering its parts according to
;;  `icicle-list-use-nth-parts'.
;;
;;  The actual candidate to match is still the original candidate; the
;;  transformation takes place after matching, for final insertion in
;;  the minibuffer.  This means that you must use this feature only
;;  with lax (permissive) completion, since strict completion requires
;;  an exact match against the original completion candidate, and the
;;  transformed candidate will normally not match the original.
;;
;;  Variable `icicle-list-use-nth-parts' works as follows.  The
;;  matching candidate is split at each `icicle-list-join-string' into
;;  its component parts.  The indexes in `icicle-list-use-nth-parts'
;;  are then used to extract parts, in the same order as the indexes
;;  appear.  The extracted parts are joined back together in an order
;;  that you specify, separated by the value of user option
;;  `icicle-list-nth-parts-join-string'.  An index greater than the
;;  number of parts means to use the last part.
;;
;;  For example: If the value of `icicle-list-use-nth-parts' is (1),
;;  then only the first part of the multi-completion is used as the
;;  completion candidate.  If the value is (2 1), then the resulting
;;  candidate is the second part followed by the first part, the two
;;  parts being joined by `icicle-list-nth-parts-join-string'.  If the
;;  value is (1 99) and the multi-completion has fewer than 99 parts,
;;  then the first and last parts are used.  If the value is (2 1 2),
;;  then the resulting candidate is composed of the second part
;;  followed by the first part followed by the second part again.
;;
;;  Thus, you can use a given part any number of times.  You can also
;;  mix multi-completions and single-string completions, and you can
;;  mix multi-completions composed of different numbers of strings.
;;  For example, a set of completions might be:
;;
;;  ((("cmd1" "description of cmd1"))
;;   (("cmd2" "description of cmd" "more"))
;;   (("cmd3")))
;;
;;  If you use multi-completions with `icicle-list-use-nth-parts' in
;;  your own commands, please make sure that their doc strings let
;;  users know what to expect, and remind them of the behavior of
;;  option `icicle-list-nth-parts-join-string'.  Let them know, in
;;  particular, that:
;;
;;  * They can match any part of a candidate as it is displayed in
;;    buffer `*Completions*'.
;;
;;  * The candidate choice they make will in fact have the form that
;;    you define in your command.
;;
;;  * They can control how the parts are joined, using option
;;    `icicle-list-nth-parts-join-string'.
;;
;;(@* "Variable icicle-candidate-properties-alist")
;;  ** Variable icicle-candidate-properties-alist **
;;
;;  Whereas variable `icicle-list-nth-parts-join-string' affects the
;;  appearance of multi-completions in the minibuffer, variable
;;  `icicle-candidate-properties-alist' affects their appearance in
;;  buffer `*Completions*'.  You use it to apply text properties to
;;  individual parts of a multi-completion, where the parts are
;;  defined in the same way as for `icicle-list-use-nth-parts'.
;;
;;  This feature affects all candidates the same way.  See also
;;  (@> "Text Properties in *Completions") for how to apply text
;;  properties to individual candidates (which need not be
;;  multi-completions).
;;
;;  The value of `icicle-candidate-properties-alist' is an alist whose
;;  entries have either of these forms:
;;
;;  (NTH PROPERTIES) or (NTH PROPERTIES JOIN-TOO)
;;
;;  NTH is the number of the target multi-completion part.
;;
;;  PROPERTIES is a list of text properties to apply to the NTH part.
;;
;;  JOIN-TOO is optional.  If it is present and non-nil, then the text
;;  properties are also applied to the join string that follows the
;;  target part.
;;
;;  You can use any text properties, including `invisible', `keymap',
;;  `display', and properties that you define yourself and that have
;;  meaning to only your code.
;;
;;  As an example of its use, commands `icicle-fundoc',
;;  `icicle-vardoc', `icicle-doc', and `icicle-plist' bind
;;  `icicle-candidate-properties-alist' to
;;  ((1 (face 'icicle-candidate-part))), so that the first part of
;;  each multi-completion candidate is highlighted using face
;;  `icicle-candidate-part'.
;;
;;  Here is another example value of
;;  `icicle-candidate-properties-alist':
;;
;;  ((3 (face 'underline))
;;   (2 (invisible t) t))
;;
;;  The first entry underlines the third multi-completion part.  The
;;  second entry makes both the second part and the join string that
;;  follows it invisible.
;;
;;  One use of making a completion part invisible is so that you can
;;  sort candidates using it, and let users match input against it,
;;  but not have it appear explicitly.
;;
;;  Recall that `completing-read' displays only the car of each
;;  element present in its TABLE (alist) argument.  For example, if
;;  you pass `completing-read' an alist such as (("foo" . 2) ("bar"
;;  . 3)), then only `foo' and `bar' are displayed as candidates.
;;  However, the PREDICATE argument to `completing-read' applies to
;;  the entire alist element, and your command that calls
;;  `completing-read' might well use the chosen candidate (e.g. `foo')
;;  to look up the entire element (e.g. ("foo" . 2)) for further
;;  processing.  Several Icicles commands, including `icicle-search'
;;  and `icicle-select-region', do that.
;;
;;  However, sometimes you might want the user to be able to match
;;  against the additional information (e.g. 2 and 3), and you might
;;  want to use it to sort candidates.  In that case, you can use the
;;  alist (("foo 2") ("bar 3")).  In cases where the additional
;;  information can be distracting, you can use multi-completion with
;;  `icicle-candidate-properties-alist' to hide it: Pass the alist
;;  ((("foo "2")) (("bar" 3"))) and use ((2 (invisible t))) for
;;  `icicle-candidate-properties-alist'.
;;
;;  Keep in mind that hiding completion parts can be confusing to
;;  users.  Do so with care, and let your users know what to expect.
;;  Inform them that there are invisible parts that are nevertheless
;;  taken into account for input matching and candidate sorting.  When
;;  you hide parts, you will often want to omit them from the
;;  minibuffer as well, using `icicle-list-use-nth-parts', to avoid
;;  confusion.
;;
;;  Consider also the position of a hidden part: In some cases you
;;  might want to place it first among the multi-completion parts, but
;;  in many cases you will want to place it last, to minimize
;;  interference with prefix-completion matching.
;;
;;  Similar considerations apply to other text properties, such as
;;  `display' and `keymap', that change the appearance or behavior of
;;  a completion candidate.
;;
;;(@* "What You See Is Not What You Get")
;;  ** What You See Is Not What You Get **
;;
;;  While on the subject of confusing users, let me point out a
;;  general drawback that is common to both
;;  `icicle-list-use-nth-parts' and
;;  `icicle-candidate-properties-alist': *not* WYSIWYG.  Keep this in
;;  mind if you decide to take advantage of these variables.  Users
;;  see one thing, choose it, and they get something different as a
;;  result.  That promotes confusion that you will need to weigh
;;  against the possible benefits.
;;
;;  Users are confused, because what they choose is not exactly what
;;  they get.  What's more, a user's completion choice is not
;;  reflected in the input history, leading to further confusion.  For
;;  example, Icicles highlighting of previously used inputs in buffer
;;  `*Completions*' does not apply to such a candidate, even though it
;;  was previously entered using `RET'.  It is the transformed
;;  candidate that was entered, not the candidate as it was proposed
;;  for choosing, so when that candidate is proposed again, it is not
;;  recognized as having been previously chosen.
;;
;;  The bottom line here is this: variables
;;  `icicle-list-use-nth-parts' and
;;  `icicle-candidate-properties-alist' are useful in certain
;;  contexts, but be aware of the downside: confusing your users.
;;
;;  See Also:
;;
;;  * (@> "Multi-Completions")
;;  * (@> "Text Properties in *Completions")
 
;;(@* "Text Properties in *Completions*")
;;
;;  Text Properties in *Completions*
;;  --------------------------------
;;
;;  This section is for Emacs-Lisp programmers.
;;
;;  Section (@> "Programming Multi-Completions") explains how to apply
;;  text properties to all multi-completion candidates in buffer
;;  `*Completions*' at the same time.  This section tells you how to
;;  apply text properties to individual candidates in `*Completions*'.
;;  The candidates need not be multi-completions.
;;
;;  There are two ways to do this:
;;
;;  1. Use the text properties as the value of the candidate's
;;     `icicle-special-candidate property.
;;
;;  2. Apply the text properties to the candidate.
;;
;;  Approach #1 can also be used to apply face
;;  `icicle-special-candidate' to a set of candidates that match a
;;  regexp.
;;
;;(@* "Using Property icicle-special-candidate")
;;  ** Using Property icicle-special-candidate **
;;
;;  In this approach, you attach the text properties as the value of
;;  property `icicle-special-candidate' to the symbol that represents
;;  the candidate.  If the candidate is a string, not a symbol, then
;;  `intern' it and use the resulting symbol.
;;
;;  If you want the effect to be temporary, then don't forget to set
;;  property `icicle-special-candidate' for the candidate to
;;  nil when you are done.
;;
;;  As a shortcut, if you use the value t instead of a property list
;;  for property `icicle-special-candidate', then face
;;  `icicle-special-candidate' will be used as the `face' property of
;;  the candidate.  In other words, using t is equivalent to using
;;  (face icicle-special-candidate).  This approach is used, for
;;  instance, in the definition of command `icicle-complete-keys'
;;  (`S-TAB').
;;
;;  As another shortcut, if you want several candidates to have face
;;  `icicle-special-candidate, instead of giving each of their symbols
;;  this property you can simply define (e.g. bind)
;;  `icicle-special-candidate-regexp' to match those candidates.
;;  (This works, whether the candidates are strings or symbols.)
;;
;;  It is only the part of a candidate that matches
;;  `icicle-special-candidate-regexp' that is highlighted.  That
;;  selectivity is useful, for example, when dealing with
;;  multi-completions.  Function `icicle-read-color' provides an
;;  example (using the similar, but internal, variable
;;  `icicle-proxy-candidate-regexp'): proxy color-name candidates such
;;  as `*point foreground*' and `'icicle-region-background'' are
;;  highlighted, but not their color swatches.
;;
;;(@* "Applying Text Properties to a Candidate String")
;;  ** Applying Text Properties to a Candidate String **
;;
;;  In this approach, you apply the text properties to the string(s)
;;  that represent the candidate, which you then pass to
;;  `completing-read' in its TABLE (alist) parameter.  You can use
;;  multi-completions, if you want to, propertizing each part the way
;;  you want.
;;
;;  You can use any text properties you like, including these:
;;
;;  * `face' - to make some completion candidates stand out in
;;    particular ways
;;
;;  * `help-echo' - for individualized candidate help
;;
;;  * `keymap' and `pointer' - for individualized mouse treatment of
;;    candidates
;;
;;  * `display' - to include images in candidates
;;
;;  * `invisible' - to hide part or all of particular candidates
;;    (which are nevertheless available for completion)
;;
;;  How does this work?  Icicles simply redefines the standard Emacs
;;  function `display-completion-list' so that it retains text
;;  properties.  Emacs should do the same, but it doesn't (yet).
;;
;;  Icicles command `icicle-read-color' presents a simple
;;  illustration, using the `face' property.  In this case, a
;;  multi-completion is used, composed of an unpropertized string that
;;  names a color and a propertized string that names its RGB (red,
;;  green, blue) value.  The RGB string, by default, has a background
;;  of the same color - each completion candidate is thus accompanied
;;  by its own color swatch.
;;
;;  The code that does this is function `icicle-make-color-candidate',
;;  which is used by `icicle-read-color':
;;
;;   (defun icicle-make-color-candidate (color-name)
;;     "Return candidate of COLOR-NAME and its hex RGB string.
;;   If `icicle-WYSIWYG-Completions-flag' is non-nil, then the hex RGB
;;   string has the color as its background text property."
;;     (let ((rgb-string (hexrgb-color-name-to-hex color-name)))
;;       (when icicle-WYSIWYG-Completions-flag
;;         (put-text-property
;;           0 (length rgb-string) 'face
;;           (cons 'background-color rgb-string) rgb-string))
;;       (list (list color-name rgb-string))))
;;
;;  You'll notice that the face property is added only when option
;;  `icicle-WYSIWYG-Completions-flag' is non-nil.  You can toggle this
;;  option at any time during completion to change the behavior.  (The
;;  new value takes effect for the next act of completion.)
;;
;;  You can match any part of the multi-completion: color name or RGB
;;  value.  Command `icicle-read-color' defines a set of sort orders
;;  that are pertinent to the color candidates.  You can use `C-,' to
;;  sort by color name, RGB value, hue, saturation, value, or amount
;;  of red, blue, or green.
;;
;;  If option `icicle-add-proxy-candidates-flag' is non-nil, then
;;  command `icicle-read-color' includes proxy completion candidates
;;  that are not color-name-and-RGB pairs.  As always, you can toggle
;;  the use of proxy candidates using `C-M-_' in the minibuffer.
;;
;;  The proxy candidates for colors include the single-quoted names of
;;  user options (variables) whose custom type is `color'.  So, for
;;  example, option `icicle-region-background' appears as proxy color
;;  candidate `'icicle-region-background''. Color proxies also include
;;  the following:
;;
;;  * `*copied foreground*'  - last copied foreground, if available
;;  * `*copied background*'  - last copied background, if available
;;  * `*mouse-2 foreground*' - foreground where you click `mouse-2'
;;  * `*mouse-2 background*' - background where you click `mouse-2'
;;  * `*point foreground*'   - foreground under the text cursor
;;  * `*point background*'   - background under the text cursor
;;
;;  When you choose a proxy color candidates, the color referred to is
;;  used.  For example, `*point foreground*' means to use the
;;  foreground color at the cursor position (point), whatever it might
;;  be.  Choosing a `mouse-2' candidate lets you then click `mouse-2'
;;  to pick up a color somewhere.  If you use library `palette.el' or
;;  `eyedropper.el', and you have already copied a color, then you can
;;  choose `*copied foreground*' (or background) to use that color.
;;
;;  Icicles treats reading face names similarly to reading colors, by
;;  redefining standard function `read-face-name' when you are in
;;  Icicle mode.  In this case, multi-completions are not used.  The
;;  pertinent function is `icicle-make-face-candidate', which provides
;;  a WYSIWYG face sample whenever `icicle-WYSIWYG-Completions-flag'
;;  is non-nil.
;;
;;  A string value for `icicle-WYSIWYG-Completions-flag' presents the
;;  face name accompanied by that string as a separate sample swatch.
;;  A value of t presents the face name itself in the face it names.
;;
;;   (defun icicle-make-face-candidate (face)
;;     "Return a completion candidate for FACE.
;;   The value of option `icicle-WYSIWYG-Completions-flag' determines
;;   the kind of candidate to use.
;;    If nil, then the face name is used (a string).
;;
;;    If a string, then a multi-completion candidate is used, with the
;;    face name followed by a sample swatch using FACE on the string's
;;    text.
;;
;;    If t, then the candidate is the face name itself, propertized
;;    with FACE."
;;     (if (stringp icicle-WYSIWYG-Completions-flag)
;;         (let ((swatch (copy-sequence
;;                        icicle-WYSIWYG-Completions-flag)))
;;           (put-text-property
;;            0 (length icicle-WYSIWYG-Completions-flag)
;;            'face face swatch)
;;           (list (list (symbol-name face) swatch)))
;;       (let ((face-name (copy-sequence (symbol-name face))))
;;         (when icicle-WYSIWYG-Completions-flag
;;           (put-text-property 0 (length face-name)
;;                              'face face face-name))
;;         (list face-name))))
;;
;;  See Also:
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Sorting Candidates and Removing Duplicates")
;;    for information about changing sort orders.
;;
;;  * (@file :file-name "icicles-doc1.el" :to "*Completions* Display") for
;;    more about proxy candidates.
 
;;(@* "Defining Icicles Commands (Including Multi-Commands)")
;;
;;  Defining Icicles Commands (Including Multi-Commands)
;;  ----------------------------------------------------
;;
;;  This section is for Emacs-Lisp programmers.
;;
;;(@* "Nothing To It!")
;;  ** Nothing To It! **
;;
;;  Defining a command that uses Icicles completion and cycling is
;;  simple: just call `completing-read' or `read-file-name' to read
;;  input, then act on that input.
;;
;;  Nothing could be simpler - just use `completing-read'or
;;  `read-file-name'!  Icicles does the rest.  This is the most
;;  important thing to learn about defining Icicles commands: you
;;  don't need to do anything except call `completing-read' or
;;  `read-file-name' as you would normally anyway.
;;
;;  Or at least as I HOPE you would normally.  I fear that many
;;  Emacs-Lisp programmers don't take sufficient advantage of
;;  `completing-read' when they could, using instead a function such
;;  as (quel horreur !)  `read-string' to read user input.
;;
;;(@* "Multi-Commands Are Easy To Define Too")
;;  ** Multi-Commands Are Easy To Define Too **
;;
;;  If defining an Icicles command is trivial, so is defining an
;;  Icicles multi-command.  For the same effort it takes to define a
;;  command that acts on a single input choice, you can have a command
;;  that acts on any number of input choices.  A multi-command takes
;;  advantage of one or more action functions when cycling candidates,
;;  as described in sections
;;  (@file :file-name "icicles-doc1.el" :to "Multi-Commands"),
;;  (@> "More about Multi-Commands"), and
;;  (@file :file-name "icicles-doc1.el" :to "Choose All Completion Candidates").
;;
;;  In fact, there is no reason NOT to define your commands as
;;  multi-commands - you lose nothing, and you gain a lot.  Whenever
;;  it is appropriate for a user to possibly want to act on multiple
;;  objects, define a multi-command that does that.
;;
;;  Macros `icicle-define-command' and `icicle-define-file-command'
;;  make it easy to define a multi-command.  Without them, it is
;;  sometimes not so easy, depending on the complexity of your action
;;  functions.  See (@> "Defining Multi-Commands the Hard Way") for a
;;  taste of what is involved.  If you read that section first, make
;;  sure you come back here to see how easy things can be.
;;
;;  Here is how you might define a multi-command to delete one or more
;;  files or directories:
;;
;;  1. Define the multi-command, `my-delete-file':
;;
;;  (icicle-define-file-command
;;   my-delete-file                  ; Command name
;;   "Delete a file or directory."   ; Doc string
;;   my-delete-file-or-directory     ; Function to perform the action
;;   "Delete file or directory: "    ; `read-file-name' arguments...
;;   default-directory nil t)
;;
;;  2. Define the action function that deletes a single file:
;;
;;  (defun my-delete-file-or-directory (file)
;;    "Delete file (or directory) FILE."
;;    (condition-case i-delete-file
;;        (if (eq t (car (file-attributes file)))
;;            (delete-directory file)
;;          (delete-file file))
;;      (error (message (error-message-string i-delete-file))
;;             (error (error-message-string i-delete-file)))))
;;
;;  There are two parts to the definition of `my-delete-file':
;;
;;  1. The definition of the command itself, using
;;     `icicle-define-file-command'.
;;
;;  2. The definition of an action function,
;;     `my-delete-file-or-directory', which deletes a single file (or
;;     directory), given its name.
;;
;;  It is #1 that is of interest here, because that is essentially
;;  what you do to define any multi-command.
;;
;;  The details of #2 are less interesting, even if more complex in
;;  this case: `my-delete-file-or-directory' checks whether its
;;  argument is a file or directory, and then tries to delete it.  If
;;  an error occurs, it prints the error message and then returns the
;;  message, so that the calling command can report on all deletion
;;  errors.
;;
;;  In #1, the arguments to `icicle-define-file-command' are
;;  straightforward:
;;
;;  * The name of the command being defined `my-delete-file'.
;;
;;  * Its doc string.
;;
;;  * The function that actually performs the action on the input file
;;    name - `my-delete-file-or-directory'.
;;
;;  * The arguments that you would supply anyway to `read-file-name'
;;    to read a single file name.
;;
;;  These are the SAME things you would need if you were defining a
;;  simple command to delete a SINGLE file or directory.  The only
;;  differences here are that you:
;;
;;  * Use `icicle-define-file-command' instead of `defun' with an
;;    `interactive' spec.
;;
;;  * Separate the action code into a separate function (here,
;;    `my-delete-file-or-directory') that acts on a single object
;;    (here, a file).
;;
;;  When you use `icicle-define-file-command', the action function is
;;  called on the result of `read-file-name', and it is also bound to
;;  `icicle-candidate-action-fn', so that it will be applied to the
;;  current candidate via `C-RET' or `C-mouse-2'.
;;
;;  Command `icicle-all-candidates-action' (`C-!' -- see
;;  (@file :file-name "icicles-doc1.el" :to "Choose All Completion Candidates"))
;;  can report in buffer *Help* on the objects that it did not act
;;  upon successfully.  For this reporting to work, the function bound
;;  to `icicle-candidate-action-fn'
;;  (e.g. `my-delete-file-or-directory', above) should return `nil'
;;  for "success" and non-`nil' (for example, an error message) for
;;  "failure", whatever "success" and "failure" might mean in the
;;  particular context of use.  This is not a requirement, except if
;;  you want to take advantage of such reporting.  For a command that
;;  deletes files, it is important to let the user know which
;;  deletions failed when s?he tries to delete all matching candidates
;;  at once.
;;
;;  If the command you want to define acts on objects other than
;;  files, then use `icicle-define-command' instead of
;;  `icicle-define-file-command' - the only difference is that you
;;  then supply the arguments for `completing-read' instead of those
;;  for `read-file-name'.
;;
;;  To let users know that a command is a multi-command, and how to
;;  use it as such, `icicle-define-command' and
;;  `icicle-define-file-command' automatically add this explanation to
;;  the doc string you provide for the multi-command:
;;
;;  ---
;;  Read input, then call `<your action function name>' to act on it.
;;
;;  Input-candidate completion and cycling are available.  While
;;  cycling, these keys with prefix `C-' are active:
;;
;;  `C-mouse-2', `C-RET' - Act on current completion candidate only
;;  `C-down' - Move to next prefix-completion candidate and act
;;  `C-up'   - Move to previous prefix-completion candidate and act
;;  `C-next' - Move to next apropos-completion candidate and act
;;  `C-prior'- Move to previous apropos-completion candidate and act
;;  `C-!'    - Act on *all* candidates, successively (careful!)
;;
;;  When candidate action and cycling are combined (e.g. `C-next'), user
;;  option `icicle-act-before-cycle-flag' determines which occurs first.
;;
;;  With prefix `C-M-' instead of `C-', the same keys (`C-M-mouse-2',
;;  `C-M-RET', `C-M-down', and so on) provide help about candidates.
;;
;;  Use `mouse-2', `RET' or `S-RET' to finally choose a candidate, or
;;  `C-g' to quit.
;;
;;  This is an Icicles command - see `icicle-mode'.
;;  ---
;;
;;  Notice that the doc string of your new multi-command references
;;  your action function (e.g. `my-delete-file-or-directory').  The
;;  doc string you provide for the multi-command can thus be a little
;;  more abstract, leaving any detailed explanation of the action to
;;  the doc string of your action function.
;;
;;  To provide more flexibility, `icicle-define-command' and
;;  `icicle-define-file-command' provide some predefined key bindings
;;  and allow for additional arguments.
;;
;;  Here is a definition of a multi-command, `change-font', that reads
;;  a font name and changes the selected frame to use that font.
;;
;;  1  (icicle-define-command
;;  2   change-font "Change font of current frame."
;;  3   (lambda (font)
;;  4     (modify-frame-parameters orig-frame
;;  5                              (list (cons 'font font))))
;;  6   "Font: " (mapcar #'list (x-list-fonts "*"))
;;  7   nil t nil nil nil nil
;;  8   ((orig-frame (selected-frame))
;;  9    (orig-font (frame-parameter nil 'font)))
;;  10  nil
;;  11  (modify-frame-parameters orig-frame
;;  12                           (list (cons 'font orig-font)))
;;  13  nil)
;;
;;  The arguments to `icicle-define-command' here are as follows:
;;
;;  Command name    (line 2)
;;  Doc string      (line 2)
;;  Action function (lines 3-5)
;;  Args passed to `completing-read' (lines 6-7)
;;  Additional bindings (lines 8-9)
;;  Additional initialization code (line 10)
;;  "Undo" code to run in case of error or user quit (lines 11-12)
;;  Additional code to run at the end (line 13)
;;
;;  The following bindings are predefined - you can refer to them in
;;  the command body:
;;
;;   `orig-buff'   is bound to (current-buffer)
;;   `orig-window' is bound to (selected-window)
;;
;;  Before running any "undo" code that you supply, the original
;;  buffer is restored, in case of error or user quit (`C-g').
;;
;;  Most of the arguments to `icicle-define-command' are optional.  In
;;  this case, optional arguments were provided to save (lines 8-9)
;;  and then restore (lines 11-12) the original font and frame.
;;
;;  Several top-level Icicles commands have been defined using
;;  `icicle-define-command' and `icicle-define-file-command'.  You can
;;  use their definitions as models for your own multi-commands.
;;
;;  `clear-option' (alias) - Set value of binary option to nil
;;  `icicle-add-buffer-candidate' - Add buffer to those always shown
;;  `icicle-add-buffer-config' - Add to `icicle-buffer-configs'
;;  `icicle-bookmark'     - Jump to a bookmark
;;  `icicle-buffer'       - Switch to another buffer
;;  `icicle-buffer-config' - Choose a config for `icicle-buffer'
;;  `icicle-buffer-list'  - Choose a list of buffer names
;;  `icicle-clear-history' - Clear entries from minibuffer histories
;;  `icicle-clear-current-history' - Clear current history entries
;;  `icicle-color-theme'  - Change color theme
;;  `icicle-command-abbrev' - Execute command or command abbreviation
;;  `icicle-command-abbrev-command' - Execute command from abbrev
;;  `icicle-comint-command' - Reuse a previous command in comint mode
;;  `icicle-delete-file'  - Delete a file or directory
;;  `icicle-delete-windows' - Delete windows showing a buffer anywhere
;;  `icicle-describe-option-of-type' - Describe option of a given type
;;  `icicle-directory-list' - Choose a list of directory names
;;  `icicle-doc'          - Display doc of function, variable, or face
;;  `icicle-execute-extended-command' -
;;                          A multi-command version of `M-x'
;;  `icicle-execute-named-keyboard-macro' - Execute named kbd macro
;;  `icicle-face-list'    - Choose a list of face names
;;  `icicle-file-list'    - Choose a list of file names
;;  `icicle-file'         - Visit a file or directory
;;  `icicle-find-file'    - Visit a file or directory (relative)
;;  `icicle-find-file-absolute' - Visit a file (absolute)
;;  `icicle-find-first-tag' - Visit source-code definition with tag
;;  `icicle-font'         - Change the frame font
;;  `icicle-frame-bg'     - Change the frame background color
;;  `icicle-frame-fg'     - Change the frame foreground color
;;  `icicle-fundoc'       - Display the doc of a function
;;  `icicle-Info-menu'    - Go to an Info menu node
;;  `icicle-insert-kill'  - Insert entries from `kill-ring'
;;  `icicle-insert-thesaurus-entry' - Insert thesaurus entry
;;  `icicle-keyword-list' - Choose a list of keywords (regexps)
;;  `icicle-kill-buffer'  - Kill a buffer
;;  `icicle-kmacro'       - Execute a keyboard macro (Emacs 22+)
;;  `icicle-locate-file'  - Open a file located anywhere
;;  `icicle-plist'        - Choose a symbol and its property list
;;  `icicle-recent-file'  - Open a recently used file
;;  `icicle-remove-all-regions-in-buffer' -
;;                          Remove all saved regions for a buffer
;;  `icicle-remove-buffer-candidate' - 
;;                          Remove buffer from those always shown
;;  `icicle-remove-buffer-config' - 
;;                          Remove from `icicle-buffer-configs'
;;  `icicle-remove-region' - Remove a region from saved regions list
;;  `icicle-remove-saved-completion-set' - Remove a set from
;;                          `icicle-saved-completion-sets'
;;  `icicle-reset-option-to-nil' -
;;                          Set value of binary option to nil
;;  `icicle-search-region' - Search a region in saved regions list
;;  `icicle-select-frame' - Select frame by name and raise it
;;  `icicle-select-region' - Select a region from saved regions list
;;  `icicle-select-window' - Select window by its buffer name
;;  `icicle-set-option-to-t' - Set the value of a binary option to t
;;  `icicle-toggle-option' - Toggle the value of a binary option
;;  `icicle-vardoc'       - Display the doc of a variable
;;  `icicle-where-is'     - Show key sequences that invoke a command
;;
;;  For simplicity, the descriptions of these commands are singular
;;  actions (e.g. "kill a buffer"), but each of them can be used to
;;  act on any number of items any number of times (e.g. kill one or
;;  more buffers).  I recommend that you follow a similar naming
;;  convention - remember that the doc string will let users know that
;;  the command can be used on multiple objects.
;;
;;(@* "Are Users Dependent on Icicles To Use Multi-Commands?")
;;  ** Are Users Dependent on Icicles To Use Multi-Commands? **
;;
;;  For users to be able to take advantage of the Icicles features
;;  that your multi-command provides, they must load Icicles.  You can
;;  do this for them, by adding (require 'icicles nil t) to your code.
;;  The last two arguments mean that no error will be raised if for
;;  some reason Icicles cannot be found or successfully loaded.
;;
;;  But that brings up another question: What happens to your
;;  multi-command if Icicles is not available for a user, or s?he
;;  doesn't want to load it? No problem - your multi-command then
;;  automatically turns into a normal, single-choice command -
;;  graceful degradation.
;;
;;  Similarly, users can always turn off `icicle-mode' at any time, to
;;  return to the standard Emacs behavior.
;;
;;  Users will, in any case, need to load Icicles at compile time, in
;;  order to byte-compile your library that calls macro
;;  `icicle-define-command' or `icicle-define-file-command' - either
;;  that, or you can duplicate the definition of the macro in your
;;  library.  To let users load Icicles at (only) compile time, add
;;  this to your library that defines multi-commands:
;;
;;  (eval-when-compile '(require icicles))
;;
;;  See Also:
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Defining Your Own Trips")
;;    for information about defining multi-commands for navigating.
;;
;;  * (@> "Defining Multiple-Choice Menus").
;;
;;  * (@> "Note to Programmers") for further programming guidelines.
;;
;;  * Library `synonyms.el', which uses `icicle-define-command' to
;;    define command `synonyms'.  This command lets you use Icicles
;;    completion on input regexps when you search a thesaurus.
;;
;;  * Library `palette.el', which uses `icicle-define-command' to
;;    define command `palette-pick-color-by-name-multi'.  This command
;;    lets you use Icicles completion on input regexps when you choose
;;    a palette color by name.
;;
;;  * Library `highlight.el', which uses `icicle-define-command' to
;;    defined commands `hlt-choose-faces', `hlt-choose-visible-faces',
;;    and `hlt-choose-invisible-faces'.  These commands let you choose
;;    a set of faces.
 
;;(@* "Defining Multiple-Choice Menus")
;;
;;  Defining Multiple-Choice Menus
;;  ------------------------------
;;
;;  Icicles multi-commands (see
;;  (@file :file-name "icicles-doc1.el" :to "Multi-Commands")) can be
;;  used provide users with multiple-choice menus.  While the possible
;;  choices can be accessed by minibuffer completion or cycling, a
;;  user can also display them in buffer `*Completions*' using `TAB'
;;  or `S-TAB', and click them there to choose them.
;;
;;  That is, buffer `*Completions*' can act as a multiple-choice menu.
;;
;;  Simple use case: Suppose that you use special characters (Greek
;;  letters, math symbols, accented letters in another language...),
;;  but only occasionally - you don't want to take the trouble to
;;  learn a special input method for them or flip to a different soft
;;  keyboard.  One simple way to handle this is to create a menu of
;;  such special characters - Greek letters, for instance.  You only
;;  need to create the menu once, providing the necessary completions
;;  as, say, Unicode characters.  When you need to input such a
;;  character, just use your command that pops up buffer
;;  `*Completions*' with the available special characters.  Even if
;;  you don't know how to type them on your keyboard, you can cycle
;;  through them or use `mouse-2' to choose them.
;;
;;  Here's a simple example of defining a command that uses a
;;  multiple-choice menu.  (Other examples given above, such as
;;  `my-delete-file-or-directory' are also examples, but this one uses
;;  menu items that look more like menu items.)
;;
;;  (icicle-define-command my-menu-command
;;      "Display menu and act on choice(s)."
;;      my-menu-action
;;      "`TAB' for menu.  `C-mouse-2' to choose. "
;;      my-menu-items nil t)
;;
;;  (defvar my-menu-items 
;;    '(("Foobar" . foobar-fn) ("Toto" . toto-fn) ("Titi" . titi-fn))
;;    "Alist of menu items and their associated commands.")  
;;
;;  (defun my-menu-action (item)
;;    "Call function associated with menu-item ITEM."
;;    (funcall (cdr (assoc item my-menu-items))))
;;
;;  (defun foobar-fn () (message "Foobar chosen"))                    
;;  (defun toto-fn () (message "Toto chosen"))                     
;;  (defun titi-fn () (message "Titi chosen"))
;;
;;  A user does `M-x my-menu-command' and hits `TAB' to display this
;;  menu in the `*Completions*' buffer:
;;
;;  Click mouse-2 on a completion to select it.  (C-h: help)
;;
;;  Possible completions are:
;;  Foobar          Titi
;;  Toto
;;
;;  The user presses and holds the Control key.  S?he clicks `Foobar'
;;  - message "Foobar chosen" appears.  S?he clicks `Toto - message
;;  "Toto chosen" appears.
;;
;;  And so on - all while holding Control pressed.  Any number of menu
;;  items can be chosen, any number of times.  The command is finally
;;  exited with `RET' or `C-g'.
;;
;;  The `TABLE' argument passed to `completing-read' here is
;;  `my-menu-items', an alist of key-value pairs, where the key is a
;;  menu-item name and the value is the function that implements the
;;  menu item.  For example, menu item `Foobar' is implemented by
;;  function `foobar-fn', and the alist element is therefore ("Foobar"
;;  . foobar-fn).
;;
;;  Function `my-menu-action' is executed when a user clicks
;;  `C-mouse-2' on a menu item.  It just looks up the menu item's
;;  function in alist `my-menu-items', and then calls that function.
;;
;;  What?  You think it's odd that the user must hit `TAB' to display
;;  the menu?  Then just use this code instead:
;;
;;  (icicle-define-command
;;   my-menu-command
;;   "Display menu and act on choice(s)."
;;   my-menu-action
;;   "`C-mouse-2' or `C-RET' to choose menu items"
;;   my-menu-items nil t nil nil nil nil
;;   ((icicle-show-*Completions*-initially-flag t)))
;;
;;  This just adds a binding for
;;  `icicle-show-*Completions*-initially-flag', so that
;;  `*Completions*' is displayed initially.
;;
;;  Granted, the `*Completions*' display doesn't exactly look like
;;  your average menu.  And the header line doesn't mention the
;;  multiple-choice possibility (holding Control while clicking).  But
;;  the header does say to use `C-h' for help, and that help does
;;  mention `C-mouse-2' (as does the prompt).  And the menu does act
;;  like a menu.  And the doc string of `my-menu-command' can provide
;;  more help, as needed.
;;
;;  There are also some freebie advantages of using such menus,
;;  besides the feature of multiple-choice.  These include choosing
;;  menu items from the keyboard, with completion, and cycling among
;;  menu items.  The additional features are all explained when the
;;  user hits `C-?'.
;;
;;  One common use of a multiple-choice menu is letting the user
;;  select a list of items from a larger list of candidates.  The list
;;  is returned, with the items in the order selected.  Examples of
;;  this include these multi-commands:
;;
;;  * `icicle-buffer-list' - buffer names, selected from `buffer-list'
;;    (possibly after filtering)
;;
;;  * `icicle-directory-list' - directory names, selected from
;;    subdirectories in the current directory and any directories you
;;    navigate to
;;
;;  * `icicle-face-list' - face names, selected from `face-list'
;;
;;  * `icicle-file-list' - file names, selected from files in the
;;    current directory and any directories you navigate to
;;
;;  * `icicle-keyword-list' - keywords (regexps), selected from those
;;    you have previously entered
;;
;;  * `hlt-choose-faces', `hlt-choose-visible-faces',
;;    `hlt-choose-invisible-faces' - face names, selected from the
;;    (visible/invisible) highlighting faces in the buffer
;;
;;  Such commands can be used on their own, or they can be used in the
;;  `interactive' specs of other commands that act on an entire list
;;  of selected items.
;;
;;  Here, for example, is the definition of `icicle-file-list':
;;
;;   (icicle-define-command icicle-file-list
;;     "Choose a list of file names.
;;   The list of names (strings) is returned."
;;     (lambda (name) (push name file-names))
;;     "Choose file (`RET' when done): "
;;     (mapcar #'list (directory-files default-directory nil
;;                                     icicle-re-no-dot))
;;     nil nil nil 'file-name-history nil nil
;;     ((file-names nil))                    ; Additional bindings
;;     nil nil
;;     (prog1 (setq file-names (delete "" file-names)) ; Return list
;;       (when (interactive-p) (message "Files: %S" file-names))))
 
;;(@* "Defining Icicles Multi `M-x'")
;;  
;;  Defining Icicles Multi `M-x'
;;  ----------------------------
;;
;;  This section is for Emacs-Lisp programmers.  It explains how the
;;  Icicles Multi `M-x' feature is implemented, providing an advanced
;;  illustration of using macro `icicle-define-command'.
;;
;;(@* "How Multi `M-x' is Defined")
;;  ** How Multi `M-x' is Defined **
;;
;;  The definition of `icicle-execute-extended-command' provides an
;;  interesting illustration of using `icicle-define-command'.  The
;;  candidate action function itself binds a candidate action
;;  function, in case the candidate is a command that reads input with
;;  completion.
;;
;;  (icicle-define-command 
;;    icicle-execute-extended-command   ; `M-x' in Icicle mode.
;;    "Read command name, then read its arguments and call it."
;;    icicle-execute-extended-command-1 ; Action function
;;    (format "Execute command%s: "     ; `completing-read' args
;;            (if current-prefix-arg
;;                (format " (prefix %d)"
;;                        (prefix-numeric-value current-prefix-arg))
;;               ""))
;;    obarray 'commandp t nil 'extended-command-history nil nil
;;    ((last-cmd last-command))        ; Save the last command.
;;    nil (setq last-command last-cmd) ; Undo: restore last command.
;;    (setq last-command last-cmd))    ; Last: restore last command.
;;
;;  (defun icicle-execute-extended-command-1 (cmd-name)
;;    "Action function for `icicle-execute-extended-command'."
;;     (set-buffer orig-buff) ; bound by `icicle-define-command'.
;;     (select-window orig-window)
;;     (let ((icicle-candidate-action-fn
;;            (lambda (x) (funcall (intern cmd-name) x))))
;;       (run-hooks 'post-command-hook)
;;       (setq this-command cmd)
;;       (run-hooks 'pre-command-hook)
;;       (let ((enable-recursive-minibuffers t))
;;         (call-interactively (intern cmd-name) 'record-it))))
;;
;;  The last seven lines of this action function rebind
;;  `icicle-candidate-action-fn' to a function that calls the
;;  candidate `cmd-name' on a single argument that it reads.  This is
;;  useful if `cmd-name' is a command that, itself, reads an input
;;  argument with completion.  When that is the case, you can use
;;  completion on that input, and if you do that, you can use `C-RET'
;;  to use command `cmd-name' as a multi-command.  In other words,
;;  this binding allows for two levels of multi-commands.
;;
;;  There are a few things wrong with this definition, however.  In
;;  the action function, the candidate command is applied to a
;;  candidate that is a string.  What if it is a command, such as
;;  `describe-variable', that expects a symbol argument?  Or a number
;;  argument?  There is no way to know what kind of command will be
;;  used, and what kind of argument it will need.  The solution is to
;;  first try a string candidate argument, then convert the string to
;;  a symbol or number.  That is, bind this to
;;  `icicle-candidate-action-fn':
;;
;;  (lambda (x) 
;;    (condition-case nil
;;        (funcall cmd x)    ; Try to use a string candidate.  If that
;;      (wrong-type-argument ; didn't work, use a symbol or number.
;;       (funcall cmd (car (read-from-string x))))))
;;
;;  A similar problem occurs if the action function called doesn't
;;  accept a (single) argument.  The best thing to do in this case is
;;  punt - call `icicle-help-on-candidate' to display help on the
;;  candidate. To the code above, we add another error handler:
;;
;;  (wrong-number-of-arguments (funcall #'icicle-help-on-candidate))
;;
;;  And what if the command `cmd' does something that changes the
;;  focus away from the minibuffer's frame?  That's the case for
;;  `describe-variable', for instance: it selects buffer `*Help*'.  To
;;  fix this potential problem, the action function needs to reset the
;;  focus back to the minibuffer frame:
;;
;;  (lambda (x) 
;;    (condition-case nil
;;        (funcall cmd x)
;;      (wrong-type-argument (funcall cmd (car (read-from-string x))))
;;      (wrong-number-of-arguments
;;       (funcall #'icicle-help-on-candidate)))
;;    (select-frame-set-input-focus
;;      (window-frame (minibuffer-window))))
;;
;;  The actual definitions of the action function and the main command
;;  are even more complex.  They need to take into account various
;;  subtleties, including those associated with recursive minibuffers
;;  and multiple invocations of `completing-read'.  Evaluate, for
;;  example, (symbol-function 'icicle-execute-extended-command) to see
;;  the real definition.
;;
;;  See Also:
;;  (@file :file-name "icicles-doc1.el" :to "Icicles Multi `M-x'").
 
;;(@* "Defining Multi-Commands the Hard Way")
;;  
;;  Defining Multi-Commands the Hard Way
;;  ------------------------------------
;;
;;  This section is for Emacs-Lisp programmers.  It gives you a taste
;;  of what is involved behind the scene when you effortlessly use
;;  `icicle-define-command' or `icicle-define-file-command' to define
;;  a multi-command.
;;  See (@> "Defining Icicles Commands (Including Multi-Commands)").
;;
;;  It can be good to know this, if only for the case where you need
;;  to define a multi-command that has special behavior not provided
;;  by `icicle-define(-file)-command' out of the box.  For example, if
;;  you want the normal, single-choice `RET' behavior to be different
;;  from the multiple-choice `C-RET' behavior, then you might want to
;;  roll your own.  Likewise, if you want to define your own help on
;;  individual candidates, to be invoked when users use `C-M-RET' and
;;  so on.
;;
;;  To write your own multi-command, you must make the command do
;;  this:
;;
;;  1. Call `completing-read' or `read-file-name', and perform some
;;     action on the completed input.
;;
;;  2. Bind one or more of these variables to action functions, which
;;     each take a completion candidate as argument:
;;
;;     a. `icicle-candidate-action-fn' - a function that performs an
;;        action on a completion candidate - often the same action as
;;        #1.
;;
;;     b. `icicle-candidates-list-action-fn' - a function that
;;        performs an action on the list of all completion candidates.
;;
;;     c. `icicle-candidate-alt-action-fn' - a function that performs
;;        an alternative action on a completion candidate.
;;
;;     d. `icicle-candidates-list-alt-action-fn' - a function that
;;        performs an alternative action on the list of candidates.
;;
;;     e. `icicle-candidate-help-fn' - a function that displays
;;        specialized help for a completion candidate.
;;
;;     f. `icicle-delete-candidate-object' - a function that deletes
;;        an object associated with (e.g. named by) a completion
;;        candidate.
;;
;;  #1 just lets people use the command normally, to perform the #1
;;  action on a completion candidate entered with `RET'.  Because of
;;  #2, people can perform the #2 action(s) on any completion
;;  candidates, while still continuing to cycle or complete
;;  candidates.  `icicle-candidate-action-fn' is often the same as the
;;  action for #1, but nothing prevents you from using different
;;  actions.
;;
;;  When internal variable `icicle-candidate-action-fn' is not bound,
;;  the default action is performed: display help on the current
;;  completion candidate.  When `icicle-candidate-help-fn' is not
;;  bound, the default help display is used.
;;
;;  Instead of binding `icicle-delete-candidate-object' to a deletion
;;  action function, you can bind it to a symbol (variable) whose
;;  value is a list of completion-candidate objects.
;;  See (@> "More about Multi-Commands") for more information.
;;
;;  Here is a definition of a simple (not multi-) command that reads a
;;  font name and then changes the selected frame to use that font.
;;  By virtue of calling `completing-read', Icicles completion and
;;  cycling are available, using all available font names as the pool
;;  of candidates.
;;
;;  (defun change-font ()
;;    "Change font of selected frame."
;;    (modify-frame-parameters
;;     (selected-frame)
;;     (list (cons 'font (completing-read
;;                        "Font: " (mapcar #'list (x-list-fonts "*"))
;;                        nil t)))))
;;
;;  Here's a definition of a multi-command `change-font' that takes
;;  advantage of an action function when cycling candidates:
;;
;;  1  (defun change-font ()
;;  2    "Change font of current frame."
;;  3    (interactive)
;;  4   (let* ((orig-frame (selected-frame))
;;  5          (orig-font (frame-parameter nil 'font))
;;  6          (icicle-candidate-action-fn
;;  7           ;; Perform the action on a candidate, without leaving
;;  8           ;; `completing-read'.  You can do this over and over.
;;  9           (lambda (font)
;;  10             (modify-frame-parameters orig-frame
;;  11                                      (list (cons 'font font))))))
;;  12     (condition-case nil
;;  13         (modify-frame-parameters
;;  14          orig-frame
;;  15          (list
;;  16           (cons 'font
;;  17                 ;; Perform the action on your final choice.
;;  18                 (completing-read
;;  19                  "Font: "
;;  20                  (mapcar #'list (x-list-fonts "*")) nil t))))
;;  21       ((quit error)
;;  22        (modify-frame-parameters
;;  23         orig-frame
;;  24         (list (cons 'font orig-font)))))))
;;
;;  As you can see, there is a lot more going on here than in the
;;  simple-command version.  These are the points to keep in mind,
;;  when defining a multi-command by hand:
;;
;;  1. Save anything you need to restore, so you can, in effect, undo
;;     the action in case of `C-g' (lines 4-5).
;;
;;  2. Bind `icicle-candidate-action-fn' to the action to perform
;;     (lines 6-11).
;;
;;  3. Perform the action, using `completing-read' to provide the
;;     target candidate (lines 13-20).  Do this in the body of a
;;     `condition-case' (lines 12-24).
;;
;;  4. Restore the original context in the error-handling part of the
;;     `condition-case' (lines 22-24).  Include `quit' in the
;;     error-type list.
;;
;;  The above definition is not quite complete, in fact.  To let
;;  `icicle-all-candidates' be able to report on failures, the
;;  `icicle-candidate-action-fn' code should also trap errors and
;;  return nil as a success indicator.
;;
;;  In fact, things can get even hairier (much hairier) still, if the
;;  function at the core of your command does things like create a new
;;  frame - especially on MS Windows, with its click-to-focus window
;;  manager.  The action of `change-font' doesn't do that, but if it
;;  did, you would need to redirect the focus back to the minibuffer
;;  frame, using `select-frame-set-input-focus'.  As an illustration
;;  of what's involved, here's a definition that would deal with such
;;  problems.  It also traps `icicle-candidate-action-fn' errors,
;;  returning nil to report success and the error message to report
;;  failure.
;;
;;  (defun change-font ()
;;    "Change font of current frame."
;;    (interactive)
;;    (let* ((orig-buff (current-buffer))
;;           (orig-window (selected-window))
;;           (orig-frame (selected-frame))
;;           (orig-font (frame-parameter nil 'font))
;;           (icicle-candidate-action-fn
;;            (lambda (candidate)
;;              (condition-case action-fn-return
;;                  (progn
;;                    (modify-frame-parameters
;;                     orig-frame (list (cons 'font candidate)))
;;                    (select-frame-set-input-focus
;;                     (window-frame (minibuffer-window)))
;;                    nil) ; Return nil to report success.
;;                ;; Return error message to report error.
;;                (error (error-message-string action-fn-return))))))
;;      (condition-case act-on-choice
;;          (modify-frame-parameters
;;           orig-frame
;;           (list (cons 'font
;;                       (completing-read
;;                        "Font: " (mapcar #'list (x-list-fonts "*"))
;;                        nil t nil nil nil nil))))
;;        (quit (switch-to-buffer orig-buff)
;;              (modify-frame-parameters
;;               orig-frame (list (cons 'font orig-font))))
;;        (error (switch-to-buffer orig-buff)
;;               (modify-frame-parameters
;;                orig-frame (list (cons 'font orig-font)))
;;               (error (error-message-string act-on-choice))))))
;;
;;  That's a lot of (error-prone) work!  You obviously don't want to
;;  be doing that a lot.  Whenever you can, you should use macro
;;  `icicle-define-command' or `icicle-define-file-command' to define
;;  your multi-commands.
;;
;;  See (@> "Defining Icicles Commands (Including Multi-Commands)") for
;;  the easy way to define `change-font'.
 
;;(@* "Global Filters")
;;
;;  Global Filters
;;  --------------
;;
;;  This section is for Emacs-Lisp programmers.
;;
;;  Which completion candidates get displayed?  To review:
;;
;;  1. The domain of discourse, that is, all possible candidates, is
;;     determined by the arguments to `completing-read',
;;     `read-file-name', or `M-x'.
;;
;;  2. A user types something in the minibuffer.  This narrows the
;;     possible candidates to those that match the input.  Matching
;;     can be prefix-matching or apropos-matching.
;;
;;  Wouldn't it sometimes be useful to filter #1 in a global way,
;;  before filtering it with the user input (#2)?  Functions
;;  `completing-read' and `read-file-name' take a predicate argument,
;;  so that can be used for global filtering.  However, those
;;  functions are usually called from some command, and it would also
;;  be useful to give end users, not just programmers, some way to
;;  globally filter candidates.
;;
;;  For example, if you have a command, such as `icicle-buffer', that
;;  reads a buffer name and displays the buffer, some users might
;;  always be interested only in buffers that are associated with
;;  files.  They don't want to see possible candidates like
;;  `*scratch*' and `*Messages*'.  What they need is a way to apply a
;;  global predicate that limits candidates to file-buffer names - but
;;  they don't have access to the call to `completing-read' that is
;;  inside the command definition.
;;
;;  For this reason, some global filtering variables are provided by
;;  Icicles:
;;
;;    `icicle-must-match-regexp', `icicle-must-not-match-regexp',
;;    `icicle-must-pass-predicate', `icicle-extra-candidates'.
;;
;;  The first and second of these are regexps that candidates must
;;  match and must not match, respectively, in order for them to be
;;  displayed.  The third is a predicate that candidates must satisfy.
;;  The fourth is a list of extra candidates to display.  Any of the
;;  filters can be nil, in which case it has no effect.
;;
;;  Variable `icicle-extra-candidates' is not really a "filter".  It
;;  does not restrict the set of possible candidates - rather, it
;;  extends that set.
;;
;;  These global variables are internal variables - they are not meant
;;  to be customized.  If you are not an Emacs-Lisp programmer, you
;;  will not use these variables, but some commands that you use might
;;  provide corresponding global-filter user options.  Icicles
;;  provides customizable user options for command `icicle-buffer',
;;  for example:
;;
;;    `icicle-buffer-match-regexp'    - Regexp that buffers must match
;;    `icicle-buffer-no-match-regexp' - Regexp buffers must not match
;;    `icicle-buffer-predicate'       - Predicate buffer must satisfy
;;    `icicle-buffer-extras'          - Extra buffers to display
;;
;;  You might, for instance, customize `icicle-buffer-no-match-regexp'
;;  to not display file-buffers whose names end in `.elc', and
;;  customize `icicle-buffer-predicate' to show only buffers that are
;;  associated with files.  The former would use a value of "\\.elc$",
;;  and the latter would use a value such as this:
;;
;;     (lambda (bufname) (buffer-file-name (get-buffer bufname)))
;;
;;  If you, as a programmer, write a command, and you want to expose
;;  global filters to users of the command, you should:
;;
;;  1. Create corresponding user options that can be customized.
;;  2. Bind the user options to the corresponding filtering variables.
;;
;;  If you use `icicle-define-command' or `icicle-define-file-command'
;;  to define a command (recommended), then you can simply pass the
;;  filter-variable bindings as part of the BINDINGS argument.
;;
;;  For example, here is the core definition of `icicle-buffer':
;;
;;   (icicle-define-command
;;    icicle-buffer                          ; Command name
;;    "Switch to a different buffer."        ; Doc string
;;    switch-to-buffer                       ; Action function
;;    "Switch to buffer: "                   ; completing-read args
;;    (mapcar (lambda (buf) (list (buffer-name buf)))
;;            (buffer-list))
;;    nil nil (buffer-name (if (fboundp 'another-buffer)
;;                             (another-buffer nil t)
;;                           (other-buffer (current-buffer))))
;;    nil nil nil
;;    ;; Filter bindings
;;    ((icicle-must-match-regexp icicle-buffer-match-regexp)
;;     (icicle-must-not-match-regexp icicle-buffer-no-match-regexp)
;;     (icicle-must-pass-predicate icicle-buffer-predicate)
;;     (icicle-extra-candidates icicle-buffer-extras)
;;     (icicle-sort-function icicle-buffer-sort)))
;;
;;  If you define a command that uses completion, but you don't use
;;  `icicle-define-command' or `icicle-define-file-command', then you
;;  can just bind such variables around a call to `completing-read' or
;;  `read-file-name'.  Command `icicle-complete-keys' presents an
;;  example of this, binding `icicle-buffer-no-match-regexp'.
;;
;;  Another way that users can apply predicates to completion
;;  candidates is to use `M-&' while completing.  These predicates
;;  apply to the full alist-entry candidates that are supplied to
;;  `completing-read' or `read-file-name', not just to the textual
;;  candidates that are displayed in buffer `*Completions*'.
;;  See (@file :file-name "icicles-doc1.el" :to "Progressive Completion").
 
;;(@* "Note to Programmers")
;;
;;  Note to Programmers
;;  -------------------
;;
;;  Here are some simple guidelines for using Icicles in Emacs-Lisp
;;  programming:
;;
;;  1. *Use it*!  Even if you don't do anything else, include this in
;;     your library:
;;
;;     (require 'icicles nil t)
;;
;;     That has absolutely no consequences if Icicles is not present
;;     in the user's `load-path' (there is no load error).  If Icicles
;;     is present, however, then users can take advantage of each use
;;     you make of `completing-read' and `read-file-name' in your
;;     code.
;;
;;  2. Use an input-completion read function, such as
;;     `completing-read' or `read-file-name', when you read input!
;;     There is almost never a reason not to use an input-completion
;;     function when reading user input - especially considering that
;;     you need not always provide a REQUIRE-MATCH argument.
;;
;;     Try also to find an appropriate PREDICATE argument, and a good
;;     set of default values to pass to `completing-read' as its TABLE
;;     argument.  Too often, I think, we use an overly general TABLE
;;     argument, such as the `obarray', and we don't provide a (good)
;;     PREDICATE.  Using an input-completion function with an
;;     appropriate candidate completion list and predicate can help
;;     users considerably.
;;
;;     If you want to also give users a way to customize a (different)
;;     predicate that applies only to the textual candidates that are
;;     displayed in buffer `*Completions*', as opposed to the full
;;     alist-entry candidates that are supplied to `completing-read'
;;     or `read-file-name', then you can define a new user option and
;;     then bind internal variable `icicle-must-pass-predicate' to the
;;     value of that option. See (@> "Global Filters").
;;
;;  3. Avoid using a literal-string `interactive' spec (e.g.
;;     (interactive "fFile: ")) that reads input with completion.
;;     Instead, call `completing-read' or `read-file-name' within the
;;     `interactive' spec.  This saves Icicles users of progressive
;;     completion the need to hit `RET' multiple times to pass their
;;     input up through multiple levels of recursive minibuffers to
;;     the top level.  See
;;     (@file :file-name "icicles-doc1.el" :to "Progressive Completion").
;;
;;  4. In many cases, it makes sense to define a multi-command, rather
;;     than a simple command.  People can always use a multi-command
;;     as a simple command, but not vice versa.
;;     See (@file :file-name "icicles-doc1.el" :to "Multi-Commands"),
;;     (@> "Defining Icicles Commands (Including Multi-Commands)"),
;;     and (@> "Defining Multi-Commands the Hard Way").
;;
;;  5. Consider using `icicle-completing-read-history' instead of
;;     `read-from-minibuffer' or `read-string' for most purposes.
;;     This lets users complete their input against previously entered
;;     input.  Completion is lax, so they can also enter new input.
;;
;;  6. You can bind `icicle-sort-function' temporarily to any sort
;;     function you need.
;;
;;  7. Function `icicle-next-candidate' is a general framework for
;;     letting users cycle completions of partial input strings.  I
;;     use it to define the cycling behavior for both prefix and
;;     apropos completions.  You can use it to easily define other,
;;     application-specific input matching/completion/cycling
;;     behavior.  Just supply it with a function that takes the
;;     current partial user input (a string) and returns a list of
;;     candidate completions, however those might be defined.
;;
;;  8. If the potential number of completion candidates is enormous,
;;     then icompletion display in `*Completions*' can be slow.  In
;;     that case, consider turning it off for the duration of the
;;     command, by binding `icicle-incremental-completion-flag' to
;;     nil.  An alternative to turning it off is the approach taken in
;;     Icicles (e.g. `icicle-vardoc' and
;;     `icicle-insert-thesaurus-entry'): Just add a reminder to the
;;     doc string to tell users that they can toggle
;;     `icicle-incremental-completion-flag' with `C-#'.
;;
;;  9. Another of my libraries that can help programmers provide
;;     default values is `thingatpt+.el'.  It provides functions for
;;     picking up symbols, sexps, numbers, words, and other sorts of
;;     thing near the text cursor (`point').
;;
;;  See Also:
;;
;;  * (@file :file-name "icicles-doc1.el" :to "Multi-Commands")
;;  * (@> "Defining Icicles Commands (Including Multi-Commands)")
;;  * (@> "Defining Multi-Commands the Hard Way")
;;  * (@> "Defining Multiple-Choice Menus")
;;  * (@> "Global Filters")
;;  * (@> "Multi-Completions")
 
;;(@* "La Petite Histoire")
;;
;;  La Petite Histoire
;;  ------------------
;;
;;  1. This library started life as `elect-mbuf.el', by Hans Koomen.
;;
;;    Original posting:
;;    From koomen@cs.rochester.edu Mon Jun 19 19:27:58 1989
;;    To: info-gnu-emacs@prep.ai.mit.edu
;;    Cc: Hans <Koomen@cs.rochester.edu>
;;    Subject: elect-mbuf.el
;;    Date: Tue, 13 Jun 89 15:17:07 -0400
;;
;;  2. I hacked and enhanced the library in various relatively minor
;;  ways over the years, maintaining it as `elect-mbuf.el' - see
;;  details in file `icicles-chg.el'.
;;
;;  I did not change the main functionality of the library during this
;;  period: it always cycled the COMPLETE list of (prefix) completion
;;  candidates passed to `completing-read'; it did not update the
;;  candidate list based on the current minibuffer contents.
;;
;;  So, for instance, if you had `M-x for' in the minibuffer, `down'
;;  would cycle among ALL Emacs commands, not just those that start
;;  with "for".  I used the library this way for fifteen years without
;;  thinking much about this behavior or the code behind it.
;;
;;  3. In July 2005, Lennart Borgman gave `elect-mbuf.el' a quick try,
;;  and intuitively expected to see behavior along the lines that you
;;  see now for Icicles prefix completion:
;;
;;  a. `down' should cycle completions relative to the current input,
;;     not all completions supplied to `completing-read'.
;;  b. If buffer `*Completions*' is displayed, `down' should highlight
;;     the current candidate there.
;;
;;  Good idea Lennart (<lennart.borgman.073@student.lu.se>).  So I
;;  implemented that behavior, and renamed the library "Icicles" (for,
;;  I suppose, "input cycles" or some such - or because it's "cool").
;;
;;  4. The code changes I made to implement #3 (completion cycling
;;  relative to current input) made me realize that other completion
;;  matchings could be implemented in a similar way.  Prefix
;;  completion (the completion provided by Emacs) is handy, but it is
;;  also sometimes a bit limited.  The idea of apropos completion
;;  occurred to me, and I implemented that as well.
;;
;;  5. I extended the library quite a bit more, in terms of
;;  convenience (highlighting, treatment of buffer
;;  `*Completions*',..., but also in terms of functionality.  In
;;  particular, it now treats file names too.  And, because Emacs 21
;;  and later versions use `read-file-name' for `find-file' and so on,
;;  Icicles now treats `read-file-name' the same as `completing-read'.
;;
;;  6. On another suggestion from LennartBorgman, I made Icicles take
;;  advantage of Delete Selection mode.  And I implemented it as a
;;  minor mode.
;;
;;  7, 8, 9,...  One thing has led to another, and I've just kept
;;  adding features.  Feature creep, I guess.  But the more I play
;;  with Icicles, the more I imagine new ways it might be made more
;;  useful.
 
;;(@* "Note on Non-nil `pop-up-frames' on MS Windows")
;;
;;  Note on Non-nil `pop-up-frames' on MS Windows
;;  ---------------------------------------------
;;
;;  If you use `pop-up-frames' = t, like I do, you might have noticed
;;  that Emacs completion does not play well with using separate
;;  frames for each buffer.  In particular, it does not play well with
;;  having a separate frame for buffer `*Completions*'.  When you try
;;  to complete input using `TAB', a new frame is created for buffer
;;  `*Completions*', and, at least on MS Windows, it is selected,
;;  taking the input focus away from the original frame's minibuffer!
;;
;;  This means that, once the `*Completions*' buffer has been
;;  displayed in a separate frame, you cannot, for instance, cycle
;;  completion candidates, without first reselecting the original
;;  frame manually.  You cannot even use normal completion - you
;;  cannot add text in the minibuffer, or delete text there, because
;;  the minibuffer in the original frame no longer has the input
;;  focus.  Bummer.
;;
;;  In general, Emacs does not play too well with one-buffer-per-frame
;;  (`pop-up-frames' = t), and this is a good example of that general
;;  problem.
;;
;;  I reported this Emacs bug.  I've been hoping it will be corrected
;;  since Emacs 21...
;;
;;  I don't have this problem of loss of frame input focus in my own
;;  setup, even though I use `pop-up-frames' = t, because I use my
;;  library `oneonone.el'.  (Try it!)  If you need a solution while
;;  waiting for the Emacs fix, you can try doing something similar to
;;  what I do in `oneonone.el':
;;
;;  1. Use dedicated frames for both `*Completions*' and the
;;     minibuffer.
;;
;;  2. Display buffer `*Completions*' using a special-display function
;;     that explicitly redirects the input focus from the
;;     `*Completions*' frame back to the minibuffer frame.
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or (at
;; your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

;; You need not load this file.  It contains only documentation.

(provide 'icicles-doc2)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; icicles-doc2.el ends here
