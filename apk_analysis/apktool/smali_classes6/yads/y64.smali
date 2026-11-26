.class public final Lyads/y64;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/z64;


# direct methods
.method public constructor <init>(Lyads/z64;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/y64;->a:Lyads/z64;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/ag0;

    iget-object v3, v2, Lyads/ag0;->e:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lyads/v54;

    const/4 v7, 0x1

    new-array v7, v7, [C

    const/16 v8, 0x2e

    const/4 v9, 0x0

    aput-char v8, v7, v9

    invoke-static {v5, v7}, Lta8;->X(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-static {v8, v7}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_0

    const-string v7, ""

    :cond_0
    invoke-direct {v6, v7, v5}, Lyads/v54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lyads/ag0;->b:Ljava/lang/String;

    iget-object v2, v2, Lyads/ag0;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v5, Lyads/s64;->c:Lyads/r64;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lyads/s64;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/s64;

    if-nez v2, :cond_3

    sget-object v2, Lyads/s64;->x:Lyads/s64;

    goto :goto_2

    :cond_2
    sget-object v2, Lyads/s64;->x:Lyads/s64;

    :cond_3
    :goto_2
    new-instance v5, Lyads/w54;

    invoke-direct {v5, v3, v2, v4}, Lyads/w54;-><init>(Ljava/lang/String;Lyads/s64;Ljava/util/List;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lyads/y64;->a:Lyads/z64;

    invoke-virtual {p0, v0}, Lyads/z64;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
