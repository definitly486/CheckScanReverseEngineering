.class public final Lyads/yn4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Lyads/ao4;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Lyads/sl5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Le02;Lyads/ao4;Lyads/sl5;)V
    .locals 0

    iput-object p2, p0, Lyads/yn4;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Lyads/yn4;->e:Lyads/ao4;

    iput-object p1, p0, Lyads/yn4;->f:Landroid/content/Context;

    iput-object p5, p0, Lyads/yn4;->g:Lyads/sl5;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6

    new-instance v0, Lyads/yn4;

    iget-object v2, p0, Lyads/yn4;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lyads/yn4;->e:Lyads/ao4;

    iget-object v1, p0, Lyads/yn4;->f:Landroid/content/Context;

    iget-object v5, p0, Lyads/yn4;->g:Lyads/sl5;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lyads/yn4;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Le02;Lyads/ao4;Lyads/sl5;)V

    iput-object p1, v0, Lyads/yn4;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/yn4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/yn4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/yn4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/yn4;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/yn4;->c:Ljava/lang/Object;

    check-cast p1, Ly22;

    iget-object v1, p0, Lyads/yn4;->d:Ljava/util/ArrayList;

    iget-object v5, p0, Lyads/yn4;->e:Lyads/ao4;

    iget-object v6, p0, Lyads/yn4;->f:Landroid/content/Context;

    iget-object v7, p0, Lyads/yn4;->g:Lyads/sl5;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lyads/x54;

    new-instance v4, Lyads/xn4;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lyads/xn4;-><init>(Lyads/ao4;Landroid/content/Context;Lyads/sl5;Lyads/x54;Le02;)V

    const/4 v8, 0x3

    invoke-static {p1, v2, v2, v4, v8}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput v3, p0, Lyads/yn4;->b:I

    invoke-static {v10, p0}, Loz;->a(Ljava/util/Collection;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lqn1;->R(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
