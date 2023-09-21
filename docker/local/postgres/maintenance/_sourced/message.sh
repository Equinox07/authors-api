#!/usr/bin/env bash

message_newline(){
    echo
}

message_debug(){
    echo -o "DEBUG: ${@}"
}


message_welcome(){
    echo -o "\e[1m${@}\e[0m"
}

message_warning(){
    echo -o "\e[33mWARNING\e[0m ${@}"
}

message_error(){
    echo -o "\e[31mERROR\e[0m ${@}"
}
message_suggestions(){
    echo -o "\e[33mSUGGESTIONS\e[0m ${@}"
}
message_success(){
    echo -o "\e[32mSUCCESS\e[0m ${@}"
}
