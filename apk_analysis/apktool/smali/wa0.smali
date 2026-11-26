.class public final Lwa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lua0;


# instance fields
.field public final a:Lda0;


# direct methods
.method public constructor <init>(Lda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwa0;->a:Lda0;

    return-void
.end method


# virtual methods
.method public final a(ILf02;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lva0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lva0;

    iget v1, v0, Lva0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lva0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lva0;

    invoke-direct {v0, p0, p2}, Lva0;-><init>(Lwa0;Lf02;)V

    :goto_0
    iget-object p2, v0, Lva0;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lva0;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Lva0;->n:I

    iget-object p0, p0, Lwa0;->a:Lda0;

    invoke-interface {p0, p1, v0}, Lda0;->b(ILe02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lxa0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lna0$b;

    invoke-virtual {p2}, Lxa0;->d()Lxa0$f;

    move-result-object p1

    invoke-virtual {p1}, Lxa0$f;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lxa0;->d()Lxa0$f;

    move-result-object v0

    invoke-virtual {v0}, Lxa0$f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lxa0;->d()Lxa0$f;

    move-result-object v1

    invoke-virtual {v1}, Lxa0$f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lxa0;->d()Lxa0$f;

    move-result-object v2

    invoke-virtual {v2}, Lxa0$f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lna0$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lxa0;->e()Lxa0$g;

    move-result-object p1

    invoke-virtual {p1}, Lxa0$g;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lxa0;->e()Lxa0$g;

    move-result-object v0

    invoke-virtual {v0}, Lxa0$g;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v9, v6, 0x1

    if-ltz v6, :cond_6

    check-cast v7, Lxa0$a;

    new-instance v6, Lbb0;

    invoke-virtual {v7}, Lxa0$a;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lxa0$a;->b()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    move-object v11, v8

    :cond_4
    invoke-virtual {v7}, Lxa0$a;->a()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    move-object v8, v7

    :goto_3
    invoke-direct {v6, v10, v11, v8}, Lbb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v9

    goto :goto_2

    :cond_6
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_7
    invoke-virtual {p2}, Lxa0;->e()Lxa0$g;

    move-result-object v0

    invoke-virtual {v0}, Lxa0$g;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lfb0;

    invoke-direct {v6, p1, v0, v1}, Lfb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p2}, Lxa0;->a()Lxa0$b;

    move-result-object p1

    invoke-virtual {p1}, Lxa0$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lxa0;->a()Lxa0$b;

    move-result-object v0

    invoke-virtual {v0}, Lxa0$b;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lxa0$a;

    new-instance v9, Lga0;

    invoke-virtual {v7}, Lxa0$a;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lxa0$a;->b()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    move-object v11, v8

    :cond_8
    invoke-virtual {v7}, Lxa0$a;->a()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    move-object v7, v8

    :cond_9
    invoke-direct {v9, v10, v11, v7}, Lga0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    new-instance v0, Lka0;

    invoke-direct {v0, p1, v1}, Lka0;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p2}, Lxa0;->c()Lxa0$d;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p2}, Lxa0;->c()Lxa0$d;

    move-result-object p1

    invoke-virtual {p1}, Lxa0$d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lxa0;->c()Lxa0$d;

    move-result-object v1

    invoke-virtual {v1}, Lxa0$d;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxa0$e;

    new-instance v7, Lib0;

    invoke-virtual {v2}, Lxa0$e;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lxa0$e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v8, v2}, Lib0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    new-instance v1, Lmb0;

    invoke-direct {v1, p1, v3}, Lmb0;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v3, v1

    :cond_c
    const/4 p1, 0x3

    new-array p1, p1, [Lpz3;

    aput-object v6, p1, v5

    aput-object v0, p1, v4

    const/4 v0, 0x2

    aput-object v3, p1, v0

    invoke-static {p1}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lna0$a;

    invoke-virtual {p2}, Lxa0;->b()Lxa0$c;

    move-result-object v1

    invoke-virtual {v1}, Lxa0$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lxa0;->b()Lxa0$c;

    move-result-object p2

    invoke-virtual {p2}, Lxa0$c;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lna0$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lna0;

    invoke-direct {p2, p0, p1, v0}, Lna0;-><init>(Lna0$b;Ljava/util/ArrayList;Lna0$a;)V

    return-object p2
.end method
