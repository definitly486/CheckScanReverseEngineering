.class public final Lyads/lc3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lyads/sc3;

.field public final synthetic e:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lyads/sc3;Ljava/util/Set;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/lc3;->d:Lyads/sc3;

    iput-object p2, p0, Lyads/lc3;->e:Ljava/util/Set;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance v0, Lyads/lc3;

    iget-object v1, p0, Lyads/lc3;->d:Lyads/sc3;

    iget-object p0, p0, Lyads/lc3;->e:Ljava/util/Set;

    invoke-direct {v0, v1, p0, p2}, Lyads/lc3;-><init>(Lyads/sc3;Ljava/util/Set;Le02;)V

    iput-object p1, v0, Lyads/lc3;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lug6;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/lc3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/lc3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/lc3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/lc3;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v1, p0, Lyads/lc3;->c:Ljava/lang/Object;

    check-cast v1, Lug6;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    :cond_2
    move-object v8, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/lc3;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lug6;

    iget-object p1, p0, Lyads/lc3;->d:Lyads/sc3;

    iput-object v1, p0, Lyads/lc3;->c:Ljava/lang/Object;

    iput v4, p0, Lyads/lc3;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lqo2;->a:Loi2;

    sget-object v4, Lsh2;->c:Lsh2;

    new-instance v5, Lyads/rc3;

    invoke-direct {v5, p1, v2}, Lyads/rc3;-><init>(Lyads/sc3;Le02;)V

    invoke-static {v4, v5, p0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_2

    :goto_0
    move-object v6, p1

    check-cast v6, Lyads/zc3;

    iget-object p1, p0, Lyads/lc3;->e:Ljava/util/Set;

    iget-object v5, p0, Lyads/lc3;->d:Lyads/sc3;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lyads/rd3;

    new-instance v4, Lyads/kc3;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lyads/kc3;-><init>(Lyads/sc3;Lyads/zc3;Lyads/rd3;Lug6;Le02;)V

    const/4 v7, 0x3

    invoke-static {v8, v2, v2, v4, v7}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iput-object v2, p0, Lyads/lc3;->c:Ljava/lang/Object;

    iput v3, p0, Lyads/lc3;->b:I

    invoke-static {v1, p0}, Loz;->a(Ljava/util/Collection;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    :goto_2
    return-object v0

    :cond_5
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
