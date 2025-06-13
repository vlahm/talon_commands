#from typing import Dict
from talon import Module, actions
import time

mod = Module()

@mod.action_class
class Chili:
    def ctrl_enter_repeat(n: int):
        """chilidog"""

        for _ in range(n):
            actions.key('ctrl-enter')
            time.sleep(0.1)
