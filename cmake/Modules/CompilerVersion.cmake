# Copyright (c) 2011-2012 Stefan Eilemann <eile@eyescale.ch>

function(COMPILER_DUMPVERSION OUTPUT_VERSION)
    execute_process(COMMAND
        ${CMAKE_CXX_COMPILER} ${CMAKE_CXX_COMPILER_ARG1} -dumpversion
        OUTPUT_VARIABLE DUMP_COMPILER_VERSION OUTPUT_STRIP_TRAILING_WHITESPACE
        )
    string(REGEX REPLACE "([0-9])\\.([0-9])(\\.[0-9])?" "\\1.\\2"
        DUMP_COMPILER_VERSION "${DUMP_COMPILER_VERSION}")

    set(${OUTPUT_VERSION} ${DUMP_COMPILER_VERSION} PARENT_SCOPE)
endfunction()
