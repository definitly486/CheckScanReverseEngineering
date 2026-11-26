.class public final Lmh9;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.welcomes.WelcomeBannersInteractor$subscribeOnWelcomeBanners$1"
    f = "WelcomeBannersInteractor.kt"
    l = {
        0x1d,
        0x31
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Lhc0$a;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Lkx2;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lnh9;


# direct methods
.method public constructor <init>(Lnh9;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnh9;",
            "Le02<",
            "-",
            "Lmh9;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmh9;->o:Lnh9;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
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

    new-instance v0, Lmh9;

    iget-object p0, p0, Lmh9;->o:Lnh9;

    invoke-direct {v0, p0, p2}, Lmh9;-><init>(Lnh9;Le02;)V

    iput-object p1, v0, Lmh9;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lmh9;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lmh9;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lmh9;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    sget-object v2, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, v1, Lmh9;->m:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v5, v1, Lmh9;->o:Lnh9;

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v6, :cond_1

    if-ne v0, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    iget-object v7, v1, Lmh9;->l:Lkx2;

    iget-object v0, v1, Lmh9;->n:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lid3;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v0, v1, Lmh9;->n:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lid3;

    iget-object v0, v5, Lnh9;->b:Ljf6;

    invoke-interface {v0}, Ljf6;->P0()I

    move-result v0

    if-lt v0, v6, :cond_10

    iget-object v0, v5, Lnh9;->b:Ljf6;

    invoke-interface {v0}, Ljf6;->C0()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, v5, Lnh9;->d:Z

    if-nez v0, :cond_10

    sget-object v7, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object v0, v5, Lnh9;->a:Lrp0;

    iget v9, v5, Lnh9;->c:I

    iput-object v8, v1, Lmh9;->n:Ljava/lang/Object;

    iput-object v7, v1, Lmh9;->l:Lkx2;

    iput v6, v1, Lmh9;->m:I

    invoke-interface {v0, v9, v1}, Lrp0;->r(ILmh9;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3

    goto/16 :goto_8

    :cond_3
    :goto_0
    check-cast v0, La57;

    iget-object v0, v0, La57;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v0, v10}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljc0;

    invoke-virtual {v10}, Ljc0;->b()Lhc0$a;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    new-instance v9, Lk57$a;

    invoke-direct {v9, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :cond_4
    invoke-static {v9}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v10, v0, Ljava/util/concurrent/CancellationException;

    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    throw v0

    :cond_6
    :goto_3
    instance-of v0, v9, Lk57$a;

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move-object v7, v9

    :goto_4
    check-cast v7, Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhc0$a;

    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    iget-object v10, v5, Lnh9;->b:Ljf6;

    invoke-interface {v10}, Ljf6;->c1()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lmh9$a;

    invoke-direct {v11}, Lmh9$a;-><init>()V

    iget-object v11, v11, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v10, v11}, Lht3;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    if-eqz v9, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget v12, v7, Lhc0$a;->g:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/Long;

    const-wide/16 v14, -0x1

    invoke-direct {v13, v14, v15}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_9

    invoke-interface {v9, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    :cond_9
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_f

    :cond_a
    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v14, v12, v14

    const/4 v15, 0x0

    if-nez v14, :cond_b

    move v14, v6

    goto :goto_6

    :cond_b
    move v14, v15

    :goto_6
    sub-long v12, v10, v12

    iget-wide v3, v7, Lhc0$a;->h:J

    cmp-long v3, v12, v3

    if-lez v3, :cond_c

    move v15, v6

    :cond_c
    if-nez v14, :cond_e

    if-eqz v15, :cond_d

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x2

    goto :goto_5

    :cond_e
    :goto_7
    iget v0, v7, Lhc0$a;->g:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v10, v11}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lnh9;->b:Ljf6;

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljf6;->D(Ljava/lang/String;)V

    iput-boolean v6, v5, Lnh9;->d:Z

    const/4 v3, 0x0

    iput-object v3, v1, Lmh9;->n:Ljava/lang/Object;

    iput-object v3, v1, Lmh9;->l:Lkx2;

    const/4 v4, 0x2

    iput v4, v1, Lmh9;->m:I

    invoke-interface {v8, v7, v1}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_10

    :goto_8
    return-object v2

    :cond_f
    const-string v0, "Required value was null."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_10
    :goto_9
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
