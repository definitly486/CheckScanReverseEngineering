.class public final Lyads/vm4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lyads/wm4;


# direct methods
.method public constructor <init>(Ljava/util/List;Lyads/wm4;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/vm4;->d:Ljava/util/List;

    iput-object p2, p0, Lyads/vm4;->e:Lyads/wm4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance v0, Lyads/vm4;

    iget-object v1, p0, Lyads/vm4;->d:Ljava/util/List;

    iget-object p0, p0, Lyads/vm4;->e:Lyads/wm4;

    invoke-direct {v0, v1, p0, p2}, Lyads/vm4;-><init>(Ljava/util/List;Lyads/wm4;Le02;)V

    iput-object p1, v0, Lyads/vm4;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/vm4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/vm4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/vm4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/vm4;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/vm4;->c:Ljava/lang/Object;

    check-cast p1, Ly22;

    iget-object v1, p0, Lyads/vm4;->d:Ljava/util/List;

    iget-object v4, p0, Lyads/vm4;->e:Lyads/wm4;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/ja6;

    iget-object v7, v6, Lyads/ja6;->b:Lyads/t96;

    iget-boolean v7, v7, Lyads/t96;->a:Z

    if-eqz v7, :cond_2

    new-instance v7, Lyads/um4;

    invoke-direct {v7, v4, v6, v2}, Lyads/um4;-><init>(Lyads/wm4;Lyads/ja6;Le02;)V

    const/4 v6, 0x3

    invoke-static {p1, v2, v2, v7, v6}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iput v3, p0, Lyads/vm4;->b:I

    invoke-static {v5, p0}, Loz;->a(Ljava/util/Collection;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkn1;->r(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
