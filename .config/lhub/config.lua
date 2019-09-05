--[[
    LHUB CONFIG FILE

    KEYS

        The key presses required to perfom the action.
        Can be a string of keypresses
            ie:
                cfg.keys.fullQuit = ":Q" 
                Sets the string of keypresses :Q to quit out of lhub

        Multiple keys and combinations of keys can be assigned to the same action
            ie:
                cfg.keys.fullQuit = {":Q, "Q"}
                Sets both the key strokes :Q and Q to quit out of lhub

                cfg.keys.pull= {"P", "p"}
                Sets both the keystrokes P and p to pull the git repo

    COMMANDS
        The shell commands that are run for each action
        
        There are patterns that are replacd when the commnd is run
        The list of patterns in its entirety is as follows:
            $gitaddr    The https address of the git repo
            $gitaddrssh   The ssh address of the git repo
            $ghaddr    The url of the github webpage
            $readmepath    The path to the readme file

    ETC
        readmeDownloadPath
            The path the readme of the repo will be downloaded to inorder to be viewed

        lastLoadedConfig
            A hash of the last loaded config file used to detect changes and update accordingly
--]]

local cfg ={}

cfg.lastLoadedConfig = ""

cfg.lesscmds ={}
cfg.cmds = {}
cfg.keys = {}

cfg.readmeDownloadPath = "/tmp"

cfg.lesscmds.pull = "git pull $gitaddr"
cfg.lesscmds.clone = "git clone $gitaddr"
cfg.lesscmds.browser = "firefox $ghaddr"

cfg.cmds.markdown = "mdv $readmepath"

cfg.keys.pull = "p"
cfg.keys.clone ="c"
cfg.keys.fullQuit = {":Q", "Q"}
cfg.keys.browser = "b"

return cfg
