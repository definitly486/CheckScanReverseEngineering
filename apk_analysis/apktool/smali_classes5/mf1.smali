.class public final synthetic Lmf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Loc0;

.field public final synthetic c:Lkf1;


# direct methods
.method public synthetic constructor <init>(Loc0;Lkf1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf1;->b:Loc0;

    iput-object p2, p0, Lmf1;->c:Lkf1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf1;->b:Loc0;

    invoke-virtual {v1}, Loc0;->a()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Loc0$a;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Loc0$a;->a()Loc0$a$a;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v8, Lxb0$a;

    invoke-virtual {v7}, Loc0$a$a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Loc0$a$a;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Loc0$a$a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v9, v10, v7}, Lxb0$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object v8, v4

    :goto_1
    invoke-virtual {v6}, Loc0$a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Loc0$a;->d()I

    move-result v9

    invoke-virtual {v6}, Loc0$a;->e()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lxb0;

    invoke-direct {v10, v8, v7, v9, v6}, Lxb0;-><init>(Lxb0$a;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v5, v4

    :cond_2
    iget-object v0, v0, Lmf1;->c:Lkf1;

    invoke-virtual {v0}, Lkf1;->v()Lkf1$b;

    move-result-object v2

    invoke-virtual {v0}, Lkf1;->u()Lkf1$a;

    move-result-object v6

    invoke-virtual {v1}, Loc0;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Loc0$a;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Loc0$a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Loc0$a;->d()I

    move-result v10

    invoke-virtual {v8}, Loc0$a;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Loc0$a;->f()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    check-cast v8, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v8, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Loc0$a$b;

    new-instance v14, Lz96$a;

    invoke-virtual {v13}, Loc0$a$b;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Loc0$a$b;->b()I

    move-result v3

    invoke-virtual {v13}, Loc0$a$b;->c()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v15, v3, v13}, Lz96$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xa

    goto :goto_3

    :cond_3
    move-object v12, v4

    :cond_4
    new-instance v3, Lz96;

    invoke-direct {v3, v9, v10, v11, v12}, Lz96;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xa

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lz96;

    invoke-virtual {v2}, Lkf1$b;->a()Ljava/util/List;

    move-result-object v8

    iget v7, v7, Lz96;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v2, v4}, Lkf1$b;->e(Ljava/util/ArrayList;)V

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v6, v5}, Lkf1$a;->d(Ljava/util/ArrayList;)V

    :cond_9
    iget-object v0, v0, Lkf1;->c:Ljf6;

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljf6;->j1(Ljava/lang/String;)V

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljf6;->J0(Ljava/lang/String;)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
