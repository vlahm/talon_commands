from talon import Module, Context

mod = Module()
mod.list("bash_alias", desc="custom bash aliases")

alias = Context()
#my_context.matches = "code.language: python"
#below not rly used. could be, but maybe makes more sense to just munky cruise
alias.lists["user.bash_alias"] = {
    "plants": "plants"
}
