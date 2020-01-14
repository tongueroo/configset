## Examples

    configset completion

Prints words for TAB auto-completion.

    configset completion
    configset completion hello
    configset completion hello name

To enable, TAB auto-completion add the following to your profile:

    eval $(configset completion_script)

Auto-completion example usage:

    configset [TAB]
    configset hello [TAB]
    configset hello name [TAB]
    configset hello name --[TAB]
