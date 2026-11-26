.class public final Laa0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laa0;->collect(Lid3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lid3;

.field public final synthetic c:Lca0;


# direct methods
.method public constructor <init>(Lid3;Lca0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laa0$a;->b:Lid3;

    iput-object p2, p0, Laa0$a;->c:Lca0;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Laa0$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Laa0$a$a;

    iget v1, v0, Laa0$a$a;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Laa0$a$a;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Laa0$a$a;

    invoke-direct {v0, p0, p2}, Laa0$a$a;-><init>(Laa0$a;Le02;)V

    :goto_0
    iget-object p2, v0, Laa0$a$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Laa0$a$a;->m:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    check-cast p1, Ldi4;

    iget-object p2, p0, Laa0$a;->c:Lca0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ldi4;->a()Lji0;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lji0;->a()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    sget-object v5, Lkx2;->b:Lkx2;

    if-nez v2, :cond_4

    move-object v2, v5

    :cond_4
    check-cast v2, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v2, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lji0$b;

    new-instance v9, Lxs5;

    invoke-virtual {v8}, Lji0$b;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lji0$b;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lji0$b;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v10, v11, v8}, Lxs5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lgw8;

    invoke-virtual {p1}, Ldi4;->f()Lx88;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lx88;->b()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v6, v3

    :goto_3
    const-string v8, ""

    if-nez v6, :cond_7

    move-object v6, v8

    :cond_7
    invoke-direct {v2, v6}, Lgw8;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ldi4;->f()Lx88;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lx88;->a()Ljava/util/List;

    move-result-object v2

    goto :goto_4

    :cond_8
    move-object v2, v3

    :goto_4
    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    move-object v5, v2

    :goto_5
    check-cast v5, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v5, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx88$b;

    new-instance v9, Lkt5;

    invoke-virtual {v6}, Lx88$b;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lx88$b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v10, v6}, Lkt5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ldi4;->g()Lpf9;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lpf9;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    new-instance v5, Lzs8;

    invoke-direct {v5, v2, v2}, Lzs8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {p1}, Ldi4;->b()Lsn0;

    move-result-object v2

    if-eqz v2, :cond_d

    new-instance v5, Lgw8;

    invoke-virtual {v2}, Lsn0;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lgw8;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lhq8;

    invoke-virtual {v2}, Lsn0;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lhq8;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lsn0;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsn0$b;

    new-instance v9, Let5;

    invoke-virtual {v7}, Lsn0$b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Let5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Ldt5;

    invoke-virtual {v2}, Lsn0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ldt5;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {p1}, Ldi4;->e()Lso4;

    move-result-object v2

    if-eqz v2, :cond_e

    new-instance v5, Lmt5;

    invoke-virtual {v2}, Lso4;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lmt5;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance v2, Lnt5;

    invoke-virtual {p1}, Ldi4;->d()Ljv4;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljv4;->a()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_f
    move-object v5, v3

    :goto_8
    if-nez v5, :cond_10

    move-object v5, v8

    :cond_10
    invoke-virtual {p1}, Ldi4;->c()Liv0;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Liv0;->a()Ljava/lang/String;

    move-result-object v3

    :cond_11
    if-nez v3, :cond_12

    goto :goto_9

    :cond_12
    move-object v8, v3

    :goto_9
    invoke-direct {v2, v5, v8, p2}, Lnt5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput v4, v0, Laa0$a$a;->m:I

    iget-object p0, p0, Laa0$a;->b:Lid3;

    invoke-interface {p0, v2, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_13

    return-object v1

    :cond_13
    :goto_a
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
