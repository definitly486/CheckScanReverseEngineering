.class public final Lyads/zj4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/ck4;

.field public final synthetic d:Lyads/ee4;


# direct methods
.method public constructor <init>(Lyads/ck4;Lyads/ee4;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/zj4;->c:Lyads/ck4;

    iput-object p2, p0, Lyads/zj4;->d:Lyads/ee4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/zj4;

    iget-object v0, p0, Lyads/zj4;->c:Lyads/ck4;

    iget-object p0, p0, Lyads/zj4;->d:Lyads/ee4;

    invoke-direct {p1, v0, p0, p2}, Lyads/zj4;-><init>(Lyads/ck4;Lyads/ee4;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/zj4;

    iget-object v0, p0, Lyads/zj4;->c:Lyads/ck4;

    iget-object p0, p0, Lyads/zj4;->d:Lyads/ee4;

    invoke-direct {p1, v0, p0, p2}, Lyads/zj4;-><init>(Lyads/ck4;Lyads/ee4;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/zj4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/zj4;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/zj4;->c:Lyads/ck4;

    iget-object p1, p1, Lyads/ck4;->c:Lyads/rk4;

    iget-object v1, p0, Lyads/zj4;->d:Lyads/ee4;

    iput v3, p0, Lyads/zj4;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lc31;

    invoke-static {p0}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    invoke-direct {v4, v3, p0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v4}, Lc31;->u()V

    iget-object p0, p1, Lyads/rk4;->a:Lyads/jo6;

    if-eqz p0, :cond_8

    iget-object p0, p1, Lyads/rk4;->b:Lyads/pk4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v1, Lyads/ee4;->a:Lyads/vg4;

    iget-object p0, p0, Lyads/vg4;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/sd4;

    invoke-static {v3}, Lyads/x14;->a(Lyads/sd4;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v1}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/v14;

    iget-object v3, v3, Lyads/v14;->b:Lyads/r96;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lyads/r96;->a:Ljava/util/List;

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    if-nez v3, :cond_4

    sget-object v3, Lkx2;->b:Lkx2;

    :cond_4
    invoke-static {v3, p0}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ja6;

    iget-object v1, v1, Lyads/ja6;->b:Lyads/t96;

    iget-object v1, v1, Lyads/t96;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object p0, p1, Lyads/rk4;->a:Lyads/jo6;

    new-instance p1, Lyads/qk4;

    invoke-direct {p1, v4}, Lyads/qk4;-><init>(Lc31;)V

    invoke-virtual {p0, p1}, Lyads/jo6;->a(Lyads/d96;)V

    goto :goto_4

    :cond_8
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v4, p0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {v4}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_9

    goto :goto_5

    :cond_9
    sget-object p0, Lj59;->a:Lj59;

    :goto_5
    if-ne p0, v0, :cond_a

    return-object v0

    :cond_a
    :goto_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
