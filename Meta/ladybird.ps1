# Who's responsible for this? Onorio Catenacci
# Why?  I'm a glutton for punishment that likes to code on Windows.


# set -e
param (
    [string]$command = "run",
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$other_args
)

$script_name = $MyInvoation.ScriptName
Write-Output $command
Write-Output $other_args
Write-Output $script_name

<# BUILD_PRESET=${BUILD_PRESET:-default}

ARG0=$0
function print_help() {
    NAME=$(basename "$ARG0")
    cat <<EOF
Usage: $NAME COMMAND [ARGS...]
  Supported COMMANDs:
    build:      Compiles the target binaries, [ARGS...] are passed through to ninja
    install:    Installs the target binary
    run:        $NAME run EXECUTABLE [ARGS...]
                    Runs the EXECUTABLE on the build host, e.g.
                    'shell' or 'js', [ARGS...] are passed through to the executable
    gdb:        Same as run, but also starts a gdb remote session.
                $NAME gdb EXECUTABLE [-ex 'any gdb command']...
                    Passes through '-ex' commands to gdb
    vcpkg:      Ensure that dependencies are available
    test:       $NAME test [TEST_NAME_PATTERN]
                    Runs the unit tests on the build host, or if TEST_NAME_PATTERN
                    is specified tests matching it.
    delete:     Removes the build environment
    rebuild:    Deletes and re-creates the build environment, and compiles the project
    addr2line:  $NAME addr2line BINARY_FILE ADDRESS
                    Resolves the ADDRESS in BINARY_FILE to a file:line. It will
                    attempt to find the BINARY_FILE in the appropriate build directory

  Examples:
    $NAME run ladybird
        Runs the Ladybird browser
    $NAME run js -A
        Runs the js(1) REPL
    $NAME test
        Runs the unit tests on the build host
    $NAME addr2line RequestServer 0x12345678
        Resolves the address 0x12345678 in the RequestServer binary
EOF
}

print_help() #>