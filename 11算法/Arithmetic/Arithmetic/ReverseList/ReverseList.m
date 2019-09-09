//
//  ReverseList.m
//  Arithmetic
//
//  Created by MisterBooo on 2018/5/5.
//  Copyright © 2018年 MisterBooo. All rights reserved.
//

#import "ReverseList.h"
@implementation ReverseList
struct Node* reverseList(struct Node *head) {
    // 定义遍历指针，初始化为头结点
    struct Node *p = head;
    // 反转后的链表头部
    struct Node *newH = NULL;
    // 遍历链表
    while (p != NULL) {
        // 记录下一个结点
        struct Node *temp = p->next;
        // 当前结点的next指向新链表头部
        p->next = newH;
        // 更改新链表头部为当前结点
        newH = p;
        // 移动p指针
        p = temp;
    }
    return newH;// 返回反转后的链表头结点
}
struct Node* constructList(void) {
    // 头结点定义
    struct Node *head = NULL;
    // 记录当前尾结点
    struct Node *cur = NULL;
    for (int i = 1; i < 5; i++) {
        struct Node *node = malloc(sizeof(struct Node));
        node->data = i;
        if (head == NULL) {// 头结点为空，新结点即为头结点
            head = node;
        }else{// 当前结点的next为新结点
            cur->next = node;
        }
        cur = node;// 设置当前结点为新结点
    }
    return head;
}
void printList(struct Node *head) {
    struct Node* temp = head;
    while (temp != NULL) {
        printf("node is %d \n", temp->data);
        temp = temp->next;
    }
}
@end
