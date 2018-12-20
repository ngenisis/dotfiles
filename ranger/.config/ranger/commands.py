# Please refer to commands_full.py for all the default commands and a complete
# documentation.  Do NOT add them all here, or you may end up with defunct
# commands when upgrading ranger.

# -----------------------------------------------------------------------------

# You always need to import ranger.api.commands here to get the Command class:
from ranger.api.commands import Command

# Any class that is a subclass of "Command" will be integrated into ranger as a
# command.  Try typing ":my_edit<ENTER>" in ranger!

# Modified fzf integration script from https://github.com/ranger/ranger/wiki/Custom-Commands
class fzf_select(Command):
    """
    :fzf_select

    Find a file using fzf.

    With a prefix argument select only directories.

    See: https://github.com/junegunn/fzf
    """
    def execute(self):
        import subprocess
        import os.path
        command="ag -f -l --hidden --ignore .git | fzf +m"
        fzf = self.fm.execute_command(command, universal_newlines=True, stdout=subprocess.PIPE)
        stdout, stderr = fzf.communicate()
        if fzf.returncode == 0:
            fzf_file = os.path.abspath(stdout.rstrip('\n'))
            if os.path.isdir(fzf_file):
                self.fm.cd(fzf_file)
            else:
                self.fm.select_file(fzf_file)
