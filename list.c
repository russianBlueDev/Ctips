#include <stdio.h>
#include <glib.h>

int main(void) {
    GList* list = g_list_append(NULL, "Hello World!");
    printf("The first element of list is: %s\n", (char*) g_list_first(list)->data);
    g_list_free(list);
}
