.class public final Lv40;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor$subLoadPromotionsItems$1"
    f = "BalanceInteractor.kt"
    l = {
        0x173
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public m:I

.field public n:I

.field public o:Lb40;

.field public p:Ljava/util/ArrayList;

.field public q:Lkx2;

.field public r:Ljava/util/ArrayList;

.field public s:Z

.field public t:I

.field public final synthetic u:I

.field public final synthetic v:Lb40;

.field public final synthetic w:Z


# direct methods
.method public constructor <init>(ILb40;ZLe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lb40;",
            "Z",
            "Le02<",
            "-",
            "Lv40;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lv40;->u:I

    iput-object p2, p0, Lv40;->v:Lb40;

    iput-boolean p3, p0, Lv40;->w:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance p1, Lv40;

    iget-object v0, p0, Lv40;->v:Lb40;

    iget-boolean v1, p0, Lv40;->w:Z

    iget p0, p0, Lv40;->u:I

    invoke-direct {p1, p0, v0, v1, p2}, Lv40;-><init>(ILb40;ZLe02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lv40;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lv40;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lv40;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lv40;->t:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lv40;->n:I

    iget v4, p0, Lv40;->m:I

    iget-boolean v5, p0, Lv40;->s:Z

    iget v6, p0, Lv40;->l:I

    iget-object v7, p0, Lv40;->r:Ljava/util/ArrayList;

    iget-object v8, p0, Lv40;->q:Lkx2;

    iget-object v9, p0, Lv40;->p:Ljava/util/ArrayList;

    iget-object v10, p0, Lv40;->o:Lb40;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget p1, p0, Lv40;->u:I

    iget-object v1, p0, Lv40;->v:Lb40;

    iget-boolean v4, p0, Lv40;->w:Z

    const/4 v5, 0x0

    move v6, v5

    move v5, v4

    move v4, v6

    move v6, p1

    move-object v10, v1

    :goto_0
    if-ge v4, v6, :cond_9

    iget-object p1, v10, Lb40;->f:Lz68;

    invoke-virtual {p1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v8, v1, Lp20;

    if-eqz v8, :cond_2

    check-cast v1, Lp20;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sget-object v8, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object p1, v10, Lb40;->a:Ln60;

    new-instance v9, Lm60;

    add-int/lit8 v11, v4, 0x1

    const/4 v12, 0x4

    invoke-direct {v9, v11, v12}, Lm60;-><init>(II)V

    iput-object v10, p0, Lv40;->o:Lb40;

    iput-object v7, p0, Lv40;->p:Ljava/util/ArrayList;

    iput-object v8, p0, Lv40;->q:Lkx2;

    iput-object v7, p0, Lv40;->r:Ljava/util/ArrayList;

    iput v6, p0, Lv40;->l:I

    iput-boolean v5, p0, Lv40;->s:Z

    iput v4, p0, Lv40;->m:I

    iput v1, p0, Lv40;->n:I

    iput v3, p0, Lv40;->t:I

    invoke-interface {p1, v9, v5, p0}, Ln60;->w(Lm60;ZLf02;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v9, v7

    :goto_1
    :try_start_2
    check-cast p1, La57;

    iget-object p1, p1, La57;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lj26;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lj26;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {p1, v12}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Li10;

    invoke-static {v12}, Lb40;->s(Li10;)Lz30;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v9, v7

    :goto_3
    new-instance v11, Lk57$a;

    invoke-direct {v11, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :cond_4
    invoke-static {v11}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    instance-of v12, p1, Ljava/util/concurrent/CancellationException;

    if-nez v12, :cond_5

    goto :goto_4

    :cond_5
    throw p1

    :cond_6
    :goto_4
    instance-of p1, v11, Lk57$a;

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move-object v8, v11

    :goto_5
    check-cast v8, Ljava/util/Collection;

    invoke-interface {v7, v1, v8}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object p1, v10, Lb40;->f:Lz68;

    invoke-virtual {p1, v9}, Lz68;->setValue(Ljava/lang/Object;)V

    add-int/2addr v4, v3

    goto/16 :goto_0

    :cond_8
    const-string p0, "Collection contains no element matching the predicate."

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    return-object v2

    :cond_9
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
