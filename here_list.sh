#!/bin/sh
go_flags="-g -Wall -include allheaders.h -lm `pkg-config --cflags --libs glib-2.0`"
alias go_c="clang -xc '-' $go_flags"

go_c <<"EOF"
int main(){
    GList* list = g_list_append(NULL, "Hello World!");
    printf("The first element of list is: %s\n", (char*) g_list_first(list)->data);
}
EOF

./a.out
