# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    pwd
    ls
    cd protobuf/python
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    python --version
    python -c "import sys; import astropy; sys.exit(astropy.test(remote_data='none'))"
}
