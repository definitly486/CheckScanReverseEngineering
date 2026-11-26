.class public final Lyads/d65;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lyads/e65;


# direct methods
.method public constructor <init>(Lyads/e65;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/d65;->d:Lyads/e65;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance v0, Lyads/d65;

    iget-object p0, p0, Lyads/d65;->d:Lyads/e65;

    invoke-direct {v0, p0, p2}, Lyads/d65;-><init>(Lyads/e65;Le02;)V

    iput-object p1, v0, Lyads/d65;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance v0, Lyads/d65;

    iget-object p0, p0, Lyads/d65;->d:Lyads/e65;

    invoke-direct {v0, p0, p2}, Lyads/d65;-><init>(Lyads/e65;Le02;)V

    iput-object p1, v0, Lyads/d65;->c:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lyads/d65;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/d65;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Lyads/d65;->c:Ljava/lang/Object;

    check-cast v2, Ly22;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lyads/d65;->c:Ljava/lang/Object;

    check-cast v2, Ly22;

    :goto_0
    invoke-static {v2}, Lz22;->e(Ly22;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, v0, Lyads/d65;->d:Lyads/e65;

    iget-boolean v6, v5, Lyads/e65;->d:Z

    if-nez v6, :cond_1c

    iget-object v5, v5, Lyads/e65;->a:Lyads/m8;

    iget-object v6, v5, Lyads/m8;->a:Lyads/oh4;

    iget-object v6, v6, Lyads/oh4;->a:Lyads/ch4;

    iget-object v6, v6, Lyads/ch4;->f:Lyads/dh4;

    if-eqz v6, :cond_2

    iget-object v6, v6, Lyads/dh4;->d:Lyads/qh4;

    invoke-virtual {v6}, Lyads/qh4;->a()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_2
    move-object/from16 v17, v1

    move-object/from16 v16, v3

    goto/16 :goto_c

    :cond_3
    sget-object v7, Lyads/eh6;->a:Lyads/th6;

    invoke-virtual {v7, v6}, Lyads/th6;->a(Landroid/view/View;)Lyads/uh6;

    move-result-object v6

    iget v6, v6, Lyads/uh6;->a:I

    if-lt v6, v4, :cond_2

    iget-object v5, v5, Lyads/m8;->b:Lyads/lh4;

    iget-object v6, v5, Lyads/lh4;->c:Lyads/zg5;

    iget-object v7, v5, Lyads/lh4;->a:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-boolean v6, v6, Lyads/fe5;->C:Z

    if-eqz v6, :cond_4

    iget-object v5, v5, Lyads/lh4;->b:Lyads/ae4;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lyads/ae4;->a(Z)Lyads/i66;

    move-result-object v5

    instance-of v5, v5, Lyads/g66;

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    if-eqz v5, :cond_2

    iget-object v5, v0, Lyads/d65;->d:Lyads/e65;

    iput-boolean v4, v5, Lyads/e65;->d:Z

    iget-object v5, v5, Lyads/e65;->b:Lyads/j65;

    iget-object v6, v5, Lyads/j65;->c:Lyads/l65;

    if-eqz v6, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lyads/l65;->a:Ljava/lang/Long;

    :cond_5
    iget-object v6, v5, Lyads/j65;->d:Lyads/i65;

    iget-object v7, v6, Lyads/i65;->f:Lyads/e40;

    iget-object v8, v6, Lyads/i65;->a:Lyads/d9;

    iget-object v9, v6, Lyads/i65;->b:Lyads/e4;

    invoke-virtual {v7, v9, v8}, Lyads/e40;->a(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object v7

    iget-object v8, v6, Lyads/i65;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, v6, Lyads/i65;->d:Lyads/ea;

    sget-object v11, Lyads/i16;->i:Lyads/i16;

    const/4 v12, 0x4

    invoke-static {v10, v9, v11, v7, v12}, Lyads/ea;->a(Lyads/ea;Ljava/lang/String;Lyads/i16;Lyads/h75;I)V

    goto :goto_2

    :cond_6
    iget-object v6, v6, Lyads/i65;->e:Lyads/h65;

    iget-object v7, v6, Lyads/h65;->f:Lyads/e40;

    iget-object v8, v6, Lyads/h65;->b:Lyads/d9;

    iget-object v9, v6, Lyads/h65;->a:Lyads/e4;

    invoke-virtual {v7, v9, v8}, Lyads/e40;->a(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object v7

    sget-object v8, Lyads/c75;->a:Ljava/lang/String;

    const-string v9, "adapter"

    invoke-virtual {v7, v8, v9}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v6, Lyads/h65;->g:Lyads/yj4;

    if-eqz v8, :cond_12

    iget-object v9, v8, Lyads/yj4;->a:Lyads/zh4;

    invoke-virtual {v9}, Lyads/zh4;->a()Lyads/h75;

    move-result-object v9

    iget-object v9, v9, Lyads/h75;->a:Ljava/util/Map;

    const-string v10, "assets"

    const-string v11, "rendered"

    iget-object v8, v8, Lyads/yj4;->b:Lyads/yk;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iget-object v13, v8, Lyads/yk;->a:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyads/ak;

    iget-object v15, v14, Lyads/ak;->a:Ljava/lang/String;

    move-object/from16 v16, v3

    iget-object v3, v8, Lyads/yk;->b:Lyads/dh4;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v14}, Lyads/dh4;->a(Lyads/ak;)Lyads/bk;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-interface {v3}, Lyads/bk;->b()Z

    move-result v14

    if-eqz v14, :cond_d

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Lyads/bk;->c()Lyads/tg6;

    move-result-object v4

    if-eqz v4, :cond_7

    move-object/from16 p1, v13

    const-string v13, "width"

    move-object/from16 v17, v1

    iget v1, v4, Lyads/tg6;->a:I

    invoke-static {v1}, Lyads/e46;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "height"

    iget v4, v4, Lyads/tg6;->b:I

    invoke-static {v4}, Lyads/e46;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    move-object/from16 v17, v1

    move-object/from16 p1, v13

    :goto_4
    instance-of v1, v3, Lyads/ey3;

    if-eqz v1, :cond_8

    check-cast v3, Lyads/ey3;

    goto :goto_5

    :cond_8
    move-object/from16 v3, v16

    :goto_5
    if-eqz v3, :cond_c

    iget-object v1, v3, Lyads/ey3;->b:Lyads/z14;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lyads/z14;->d()Lyads/y14;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_9
    iget-object v1, v3, Lyads/ey3;->a:Lyads/be3;

    if-eqz v1, :cond_a

    sget-object v1, Lyads/y14;->f:Lyads/y14;

    goto :goto_6

    :cond_a
    move-object/from16 v1, v16

    :cond_b
    :goto_6
    if-eqz v1, :cond_c

    iget-object v1, v1, Lyads/y14;->b:Ljava/lang/String;

    const-string v3, "value_type"

    invoke-virtual {v14, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {v12, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, p1

    move-object/from16 v3, v16

    move-object/from16 v1, v17

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_d
    move-object/from16 v3, v16

    goto/16 :goto_3

    :cond_e
    move-object/from16 v17, v1

    move-object/from16 v16, v3

    iget-object v1, v8, Lyads/yk;->b:Lyads/dh4;

    if-eqz v1, :cond_f

    iget-object v1, v1, Lyads/dh4;->d:Lyads/qh4;

    invoke-virtual {v1}, Lyads/qh4;->a()Landroid/view/View;

    move-result-object v1

    goto :goto_7

    :cond_f
    move-object/from16 v1, v16

    :goto_7
    new-instance v3, Luz4;

    invoke-direct {v3}, Luz4;-><init>()V

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v4}, Lyads/e46;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "width"

    invoke-virtual {v3, v8, v4}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Lyads/e46;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "height"

    invoke-virtual {v3, v4, v1}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-virtual {v3}, Luz4;->b()Luz4;

    move-result-object v1

    invoke-virtual {v1}, Luz4;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "superview"

    invoke-virtual {v12, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-static {v11, v12}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v1}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v3, v7, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_8

    :cond_12
    move-object/from16 v17, v1

    move-object/from16 v16, v3

    :goto_8
    iget-object v1, v6, Lyads/h65;->a:Lyads/e4;

    iget-object v1, v1, Lyads/e4;->d:Lyads/tl5;

    iget-object v1, v1, Lyads/tl5;->a:Lyads/sl5;

    if-eqz v1, :cond_13

    invoke-interface {v1}, Lyads/sl5;->b()Lyads/rl5;

    move-result-object v3

    iget-object v3, v3, Lyads/rl5;->b:Ljava/lang/String;

    const-string v4, "size_type"

    invoke-virtual {v7, v3, v4}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lyads/sl5;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "width"

    invoke-virtual {v7, v3, v4}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lyads/sl5;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "height"

    invoke-virtual {v7, v1, v3}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    iget-object v1, v6, Lyads/h65;->e:Lyads/fe5;

    if-eqz v1, :cond_14

    const-string v3, "banner_size_calculation_type"

    iget-object v1, v1, Lyads/fe5;->S:Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    iget-object v1, v6, Lyads/h65;->c:Lyads/ba;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_17

    const/4 v3, 0x1

    if-eq v1, v3, :cond_16

    const/4 v3, 0x2

    if-ne v1, v3, :cond_15

    sget-object v1, Lyads/e75;->k:Lyads/e75;

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_9

    :cond_15
    invoke-static {}, Lme0;->e()V

    return-object v16

    :cond_16
    sget-object v1, Lyads/e75;->l:Lyads/e75;

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_9

    :cond_17
    sget-object v1, Lyads/e75;->l:Lyads/e75;

    sget-object v3, Lyads/e75;->k:Lyads/e75;

    filled-new-array {v1, v3}, [Lyads/e75;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/e75;

    new-instance v4, Lyads/g75;

    iget-object v8, v7, Lyads/h75;->a:Ljava/util/Map;

    iget-object v9, v7, Lyads/h75;->b:Lyads/c;

    invoke-direct {v4, v3, v8, v9}, Lyads/g75;-><init>(Lyads/e75;Ljava/util/Map;Lyads/c;)V

    iget-object v3, v6, Lyads/h65;->d:Lyads/q84;

    invoke-virtual {v3, v4}, Lyads/q84;->a(Lyads/g75;)V

    goto :goto_a

    :cond_18
    iget-object v1, v5, Lyads/j65;->a:Lyads/g5;

    iget-object v3, v1, Lyads/g5;->a:Lyads/vf4;

    iget-object v3, v3, Lyads/vf4;->a:Ljava/lang/String;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_19

    goto :goto_b

    :cond_19
    iget-object v1, v1, Lyads/g5;->b:Lyads/f5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lyads/f5;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v6, v1, Lyads/f5;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v1, Lyads/f5;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_b

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_1a
    :goto_b
    iget-object v1, v5, Lyads/j65;->b:Lyads/we3;

    invoke-virtual {v1}, Lyads/we3;->f()V

    move-object/from16 v4, v17

    const/4 v3, 0x1

    goto :goto_d

    :goto_c
    iput-object v2, v0, Lyads/d65;->c:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Lyads/d65;->b:I

    const-wide/16 v4, 0x12c

    invoke-static {v4, v5, v0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v4, v17

    if-ne v1, v4, :cond_1b

    return-object v4

    :cond_1b
    :goto_d
    move-object v1, v4

    move v4, v3

    move-object/from16 v3, v16

    goto/16 :goto_0

    :cond_1c
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
