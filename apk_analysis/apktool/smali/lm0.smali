.class public final Llm0;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor$fetchMain$2"
    f = "BonusBlockInteractor.kt"
    l = {
        0x58
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lw81;",
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

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lwl0;


# direct methods
.method public constructor <init>(Lwl0;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwl0;",
            "Le02<",
            "-",
            "Llm0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Llm0;->n:Lwl0;

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

    new-instance v0, Llm0;

    iget-object p0, p0, Llm0;->n:Lwl0;

    invoke-direct {v0, p0, p2}, Llm0;-><init>(Lwl0;Le02;)V

    iput-object p1, v0, Llm0;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lw81;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Llm0;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Llm0;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Llm0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Llm0;->l:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Llm0;->m:Ljava/lang/Object;

    check-cast v2, Lw81;

    iget-object v5, v0, Llm0;->n:Lwl0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v6, v2, Lw81;->a:J

    long-to-int v6, v6

    iget-boolean v11, v2, Lw81;->b:Z

    iget-object v2, v5, Lwl0;->h:Lgy6;

    iget-object v2, v2, Lgy6;->b:Ly68;

    invoke-interface {v2}, Ly68;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lsv7;

    if-eqz v10, :cond_2

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lfs3;

    if-eqz v10, :cond_4

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lsv7;

    iget v7, v13, Lsv7;->a:I

    if-ne v7, v6, :cond_9

    instance-of v7, v13, Lsv7$a;

    if-eqz v7, :cond_6

    move-object v7, v13

    check-cast v7, Lsv7$a;

    iget v8, v7, Lsv7$a;->c:I

    iget-object v9, v7, Lsv7$a;->d:Landroid/text/Spanned;

    iget-object v10, v7, Lsv7$a;->e:Ljava/lang/String;

    iget-object v12, v7, Lsv7$a;->g:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lsv7$a;

    invoke-direct/range {v7 .. v12}, Lsv7$a;-><init>(ILandroid/text/Spanned;Ljava/lang/String;ZLandroid/widget/ImageView$ScaleType;)V

    move-object v4, v13

    goto :goto_3

    :cond_6
    instance-of v7, v13, Lsv7$b;

    if-eqz v7, :cond_7

    move-object v7, v13

    check-cast v7, Lsv7$b;

    iget v8, v7, Lsv7$b;->c:I

    iget-object v9, v7, Lsv7$b;->d:Landroid/text/Spanned;

    iget-object v10, v7, Lsv7$b;->e:Ljava/lang/String;

    iget-boolean v12, v7, Lsv7$b;->g:Z

    iget-object v7, v7, Lsv7$b;->h:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v13

    move-object v13, v7

    new-instance v7, Lsv7$b;

    move-object/from16 v4, v16

    invoke-direct/range {v7 .. v13}, Lsv7$b;-><init>(ILandroid/text/Spanned;Ljava/lang/String;ZZLandroid/widget/ImageView$ScaleType;)V

    goto :goto_3

    :cond_7
    move-object v4, v13

    instance-of v7, v4, Lsv7$c;

    if-eqz v7, :cond_8

    move-object v13, v4

    check-cast v13, Lsv7$c;

    invoke-static {v13, v11}, Lsv7$c;->d(Lsv7$c;Z)Lsv7$c;

    move-result-object v7

    :goto_3
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_9
    :goto_4
    const/4 v4, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfs3;

    iget-object v8, v7, Lfs3;->e:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    instance-of v9, v8, Ljava/util/Collection;

    if-eqz v9, :cond_c

    move-object v9, v8

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_5

    :cond_c
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsv7$c;

    iget v9, v9, Lsv7;->a:I

    if-ne v9, v6, :cond_d

    iget-object v8, v7, Lfs3;->e:Ljava/util/List;

    check-cast v8, Ljava/util/Collection;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsv7$c;

    iget v12, v10, Lsv7;->a:I

    if-ne v12, v6, :cond_e

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v10, v11}, Lsv7$c;->d(Lsv7$c;Z)Lsv7$c;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    iget v10, v7, Lfs3;->a:I

    iget-object v12, v7, Lfs3;->b:Ljava/lang/String;

    iget-object v13, v7, Lfs3;->c:Ljava/lang/String;

    iget-object v7, v7, Lfs3;->d:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v17, Lfs3;

    move-object/from16 v21, v7

    move-object/from16 v22, v9

    move/from16 v18, v10

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    invoke-direct/range {v17 .. v22}, Lfs3;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v7, v17

    invoke-virtual {v2, v8, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_f
    const-string v0, "Collection contains no element matching the predicate."

    invoke-static {v0}, Lag;->g(Ljava/lang/String;)V

    return-object v3

    :cond_10
    iget-object v4, v5, Lwl0;->g:Lz68;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v3, v2}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v2, 0x1

    iput v2, v0, Llm0;->l:I

    invoke-virtual {v5, v0}, Lwl0;->n(Lf02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_11

    return-object v1

    :cond_11
    :goto_6
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
