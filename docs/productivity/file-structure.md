# File structure

Notes have been removed from mkdocs docs dir. symlinks to docs dir in particular folders is to be used for compiling notes into one place

Some directories are still in notes which I haven't placed outside mkdocs docs. These are:
1. productivity - about the mkdocs and pandoc configuration (Anything to do with automated docs making)
2. terminal - about terminal tips, guides and tools installed

For the above files I have not made a separate directory in home folder as they are just notes and are not particular projects or life documents(Documents folder).

In Documents folder I have stored files which are not projects. There are folders which can be put into home folder but are kept here to keep home folder clean. Like `education/nyu_ms` can be in home folder as it has <concept>/<project> structure but it is kept here to keep home folder clean. Similar examples are jobs/\*, internships/\* etc.

Directories in home folder should have a decent project size and should hopefully be active projects.
Any static folders like Life Documents or very small projects can go in Documents folder.


**Documents folder (mkdocs will not traverse here)**
Misc - random documents
applications - When you are actively applying to multiple places
education - docs related to education (nyu,iitb,bootcamp?)
exams - documents related to competitive exams (JEE, GRE, TOEFL, CEH?)
internships - (admin documents from internship or dormant project files from ~/work). If research internship was done, admin docs related to the research internship can be kept here eg. UofT)
research - dormant research project files can be kept here. If active keep in ~/work. 
library - books (reference/novels), pdf guides etc.

* Folders from ~/work or ~/personal can go into repsective ~/Documents/(research/job/internships) after they become stagnant or if you do not want to refer to them actively. eg. (`securedl and contract_fuzzer` being open source research were in ~/personal and then transferred to research)
* Extremely dormant files like media files or files which you do not need on system will be kept in HDD/SDD.

**transferring files between devices**
~/personal - projects can be public repos
~/learn - private repos (licensed content), can have public repose if no licensed content
~/finance - SSD (not to be exposed to github)
~/work - SSD (not to be exposed to github)
~/notes - public repo (do not keep private files in ~/notes/docs), use symlinks to private files.

research/fuzz-backdoor-cnn is git updated
reasearch/blockchain is not git updated (It has multiple directories - needs to be sorted)

From now on I'll be using kebab-case not `snake_case` for my files and directories. I have seen kebab-case everywhere mostly so it'll be easier to collaborate.


Transferring ~/personal directories between personal devices can be done through git but only if there are no secrets in the project.
eg. telegram-monitor has .env file with API ID and HASH. These projects will have to be moved by SSD for now. **Think of a better solution**
