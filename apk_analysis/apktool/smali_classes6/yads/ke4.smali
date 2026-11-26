.class public final Lyads/ke4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:Lyads/le4;

.field public c:Ljava/util/Collection;

.field public d:Ljava/util/Iterator;

.field public e:Lyads/sd4;

.field public f:Ljava/util/Collection;

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/util/List;

.field public final synthetic j:Lyads/le4;


# direct methods
.method public constructor <init>(Ljava/util/List;Lyads/le4;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/ke4;->i:Ljava/util/List;

    iput-object p2, p0, Lyads/ke4;->j:Lyads/le4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance v0, Lyads/ke4;

    iget-object v1, p0, Lyads/ke4;->i:Ljava/util/List;

    iget-object p0, p0, Lyads/ke4;->j:Lyads/le4;

    invoke-direct {v0, v1, p0, p2}, Lyads/ke4;-><init>(Ljava/util/List;Lyads/le4;Le02;)V

    iput-object p1, v0, Lyads/ke4;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/ke4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/ke4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/ke4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/ke4;->g:I

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Lyads/ke4;->f:Ljava/util/Collection;

    iget-object v6, v0, Lyads/ke4;->e:Lyads/sd4;

    iget-object v7, v0, Lyads/ke4;->d:Ljava/util/Iterator;

    iget-object v8, v0, Lyads/ke4;->c:Ljava/util/Collection;

    iget-object v9, v0, Lyads/ke4;->b:Lyads/le4;

    iget-object v10, v0, Lyads/ke4;->h:Ljava/lang/Object;

    check-cast v10, Ly22;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v11, v10

    move-object v10, v9

    move-object v9, v7

    move-object v7, v6

    move-object v6, v8

    move-object/from16 v8, p1

    goto/16 :goto_5

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lyads/ke4;->h:Ljava/lang/Object;

    check-cast v2, Ly22;

    iget-object v6, v0, Lyads/ke4;->i:Ljava/util/List;

    iget-object v7, v0, Lyads/ke4;->j:Lyads/le4;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v10, v2

    move-object v9, v7

    move-object v2, v8

    move-object v7, v6

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/sd4;

    iget-object v8, v6, Lyads/sd4;->b:Ljava/util/List;

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v8, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyads/ak;

    iget-object v13, v9, Lyads/le4;->c:Lyads/rm4;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v12, Lyads/ak;->c:Ljava/lang/Object;

    instance-of v13, v13, Lyads/v14;

    if-eqz v13, :cond_2

    move-object v13, v12

    goto :goto_2

    :cond_2
    move-object v13, v5

    :goto_2
    if-eqz v13, :cond_5

    iget-object v13, v13, Lyads/ak;->c:Ljava/lang/Object;

    check-cast v13, Lyads/v14;

    if-eqz v13, :cond_5

    iget-object v13, v13, Lyads/v14;->b:Lyads/r96;

    if-eqz v13, :cond_5

    iget-object v13, v13, Lyads/r96;->a:Ljava/util/List;

    if-eqz v13, :cond_5

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyads/ja6;

    iget-object v14, v14, Lyads/ja6;->b:Lyads/t96;

    iget-boolean v14, v14, Lyads/t96;->a:Z

    if-eqz v14, :cond_4

    new-instance v13, Lyads/je4;

    invoke-direct {v13, v9, v12, v5}, Lyads/je4;-><init>(Lyads/le4;Lyads/ak;Le02;)V

    const/4 v12, 0x3

    invoke-static {v10, v5, v5, v13, v12}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v12

    goto :goto_4

    :cond_5
    :goto_3
    invoke-static {v12}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object v12

    :goto_4
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iput-object v10, v0, Lyads/ke4;->h:Ljava/lang/Object;

    iput-object v9, v0, Lyads/ke4;->b:Lyads/le4;

    iput-object v2, v0, Lyads/ke4;->c:Ljava/util/Collection;

    iput-object v7, v0, Lyads/ke4;->d:Ljava/util/Iterator;

    iput-object v6, v0, Lyads/ke4;->e:Lyads/sd4;

    iput-object v2, v0, Lyads/ke4;->f:Ljava/util/Collection;

    iput v4, v0, Lyads/ke4;->g:I

    invoke-static {v11, v0}, Loz;->a(Ljava/util/Collection;Lf02;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_7

    return-object v1

    :cond_7
    move-object v11, v10

    move-object v10, v9

    move-object v9, v7

    move-object v7, v6

    move-object v6, v2

    :goto_5
    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lqn1;->R(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v8, v12, :cond_8

    return-object v5

    :cond_8
    iget-object v13, v7, Lyads/sd4;->a:Lyads/f95;

    iget-object v15, v7, Lyads/sd4;->c:Ljava/lang/String;

    iget-object v8, v7, Lyads/sd4;->d:Ljava/lang/String;

    iget-object v12, v7, Lyads/sd4;->e:Ljava/lang/String;

    iget-object v3, v7, Lyads/sd4;->f:Lyads/ot3;

    iget-object v4, v7, Lyads/sd4;->g:Lyads/j5;

    iget-object v5, v7, Lyads/sd4;->h:Ljava/util/List;

    iget-object v0, v7, Lyads/sd4;->i:Ljava/util/List;

    move-object/from16 v21, v0

    iget-object v0, v7, Lyads/sd4;->j:Lyads/s70;

    iget-object v7, v7, Lyads/sd4;->k:Lyads/ai4;

    move-object/from16 v17, v12

    new-instance v12, Lyads/sd4;

    move-object/from16 v22, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v7

    move-object/from16 v16, v8

    invoke-direct/range {v12 .. v23}, Lyads/sd4;-><init>(Lyads/f95;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyads/ot3;Lyads/j5;Ljava/util/List;Ljava/util/List;Lyads/s70;Lyads/ai4;)V

    invoke-interface {v2, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xa

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v2, v6

    move-object v7, v9

    move-object v9, v10

    move-object v10, v11

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_9
    check-cast v2, Ljava/util/List;

    return-object v2
.end method
