.class public final Lyads/na6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/jc6;

.field public final b:Lyads/u86;

.field public final c:Lyads/la6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/ab6;)V
    .locals 2

    new-instance v0, Lyads/jc6;

    invoke-direct {v0}, Lyads/jc6;-><init>()V

    new-instance v1, Lyads/u86;

    invoke-direct {v1, p1}, Lyads/u86;-><init>(Landroid/content/Context;)V

    new-instance p1, Lyads/la6;

    invoke-direct {p1, p2}, Lyads/la6;-><init>(Lyads/ab6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/na6;->a:Lyads/jc6;

    iput-object v1, p0, Lyads/na6;->b:Lyads/u86;

    iput-object p1, p0, Lyads/na6;->c:Lyads/la6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/na6;->a:Lyads/jc6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p1

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/t96;

    iget-object v3, v3, Lyads/t96;->k:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lyads/t96;

    iget-object v4, v4, Lyads/t96;->k:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Lyads/ic6;

    invoke-direct {v1}, Lyads/ic6;-><init>()V

    invoke-static {v2, v1}, Lqn1;->n0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {v1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    :goto_2
    iget-object v2, v0, Lyads/na6;->b:Lyads/u86;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lyads/t96;

    iget-object v4, v8, Lyads/t96;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lyads/p90;

    if-eqz v9, :cond_14

    iget-object v4, v9, Lyads/p90;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v7, Lyads/t86;

    new-instance v10, Lyads/zz3;

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v10 .. v20}, Lyads/zz3;-><init>(Ljava/lang/String;Ljava/lang/String;Lyads/yz3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;IIILjava/lang/String;)V

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v14}, Lyads/t86;-><init>(Lyads/t96;Lyads/p90;Lyads/zz3;Lyads/mo5;Ljava/lang/String;Lorg/json/JSONObject;Lyads/ga;)V

    :goto_4
    move-object v6, v7

    goto/16 :goto_d

    :cond_6
    iget-object v4, v2, Lyads/u86;->e:Lyads/fe5;

    const/4 v7, 0x1

    if-eqz v4, :cond_8

    iget-boolean v4, v4, Lyads/fe5;->E0:Z

    if-ne v4, v7, :cond_8

    iget-boolean v4, v8, Lyads/t96;->a:Z

    if-eqz v4, :cond_8

    new-instance v7, Lyads/t86;

    iget-object v4, v8, Lyads/t96;->i:Ljava/lang/String;

    if-nez v4, :cond_7

    const-string v4, ""

    :cond_7
    move-object v11, v4

    new-instance v10, Lyads/zz3;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v10 .. v20}, Lyads/zz3;-><init>(Ljava/lang/String;Ljava/lang/String;Lyads/yz3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;IIILjava/lang/String;)V

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v14}, Lyads/t86;-><init>(Lyads/t96;Lyads/p90;Lyads/zz3;Lyads/mo5;Ljava/lang/String;Lorg/json/JSONObject;Lyads/ga;)V

    goto :goto_4

    :cond_8
    iget-object v4, v2, Lyads/u86;->a:Lyads/ws;

    iget-object v10, v9, Lyads/p90;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Lyads/ws;->a(Ljava/util/List;)Lyads/zz3;

    move-result-object v10

    if-eqz v10, :cond_14

    iget-object v4, v8, Lyads/t96;->d:Lyads/ba6;

    iget-object v11, v2, Lyads/u86;->b:Lyads/no5;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v4, Lyads/ba6;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lyads/qs2;

    iget-object v14, v13, Lyads/qs2;->a:Ljava/lang/String;

    const-string v15, "social_ad_info"

    invoke-static {v14, v15}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    iget-object v13, v13, Lyads/qs2;->b:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_9

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    :goto_5
    check-cast v12, Lyads/qs2;

    if-eqz v12, :cond_b

    iget-object v11, v12, Lyads/qs2;->b:Ljava/lang/String;

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    :goto_6
    if-eqz v11, :cond_c

    new-instance v12, Lyads/mo5;

    invoke-direct {v12, v11}, Lyads/mo5;-><init>(Ljava/lang/String;)V

    move-object v11, v12

    goto :goto_7

    :cond_c
    const/4 v11, 0x0

    :goto_7
    iget-object v12, v2, Lyads/u86;->c:Lyads/m5;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lyads/m5;->a(Lyads/ba6;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lyads/u86;->c:Lyads/m5;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lyads/m5;->a(Lyads/ba6;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_d

    invoke-static {v13}, Lyads/zq3;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    goto :goto_8

    :cond_d
    const/4 v13, 0x0

    :goto_8
    iget-object v14, v2, Lyads/u86;->d:Lyads/ia;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lyads/ba6;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lyads/qs2;

    iget-object v15, v15, Lyads/qs2;->a:Ljava/lang/String;

    const/16 p1, 0x0

    const-string v6, "AdTune"

    invoke-static {v15, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_9

    :cond_f
    const/16 p1, 0x0

    move-object/from16 v14, p1

    :goto_9
    check-cast v14, Lyads/qs2;

    if-eqz v14, :cond_10

    iget-object v4, v14, Lyads/qs2;->b:Ljava/lang/String;

    goto :goto_a

    :cond_10
    move-object/from16 v4, p1

    :goto_a
    if-eqz v4, :cond_11

    invoke-static {v4}, Lyads/zq3;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_b

    :cond_11
    move-object/from16 v4, p1

    :goto_b
    if-eqz v4, :cond_13

    new-instance v6, Lyads/ga;

    const-string v14, "show"

    invoke-virtual {v4, v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v7, :cond_12

    move v5, v7

    :cond_12
    const-string v7, "token"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "advertiserInfo"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v4, v5}, Lyads/ga;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v14, v6

    goto :goto_c

    :cond_13
    move-object/from16 v14, p1

    :goto_c
    new-instance v7, Lyads/t86;

    invoke-direct/range {v7 .. v14}, Lyads/t86;-><init>(Lyads/t96;Lyads/p90;Lyads/zz3;Lyads/mo5;Ljava/lang/String;Lorg/json/JSONObject;Lyads/ga;)V

    goto/16 :goto_4

    :cond_14
    const/16 p1, 0x0

    move-object/from16 v6, p1

    :goto_d
    if-eqz v6, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_15
    const/16 p1, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v5, 0x1

    if-ltz v5, :cond_17

    check-cast v4, Lyads/t86;

    iget-object v5, v0, Lyads/na6;->c:Lyads/la6;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v4, Lyads/t86;->a:Lyads/t96;

    iget-object v9, v4, Lyads/t86;->b:Lyads/p90;

    iget-object v10, v4, Lyads/t86;->c:Lyads/zz3;

    iget-object v15, v4, Lyads/t86;->d:Lyads/mo5;

    iget-object v12, v4, Lyads/t86;->e:Ljava/lang/String;

    iget-object v14, v4, Lyads/t86;->f:Lorg/json/JSONObject;

    new-instance v11, Lyads/ib6;

    invoke-direct {v11, v1, v6}, Lyads/ib6;-><init>(II)V

    iget-object v4, v4, Lyads/t86;->g:Lyads/ga;

    if-eqz v4, :cond_16

    invoke-static {v4}, Lyads/ha;->a(Lyads/ga;)Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    goto :goto_f

    :cond_16
    move-object/from16 v13, p1

    :goto_f
    iget-object v7, v5, Lyads/la6;->a:Lyads/ab6;

    invoke-interface/range {v7 .. v14}, Lyads/ab6;->a(Lyads/t96;Lyads/p90;Lyads/zz3;Lyads/ib6;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lyads/aw4;

    move-result-object v11

    sget-object v5, Lyads/qb3;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    new-instance v7, Lyads/ja6;

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    move-object v14, v4

    move-object v12, v15

    invoke-direct/range {v7 .. v14}, Lyads/ja6;-><init>(Lyads/p90;Lyads/t96;Lyads/zz3;Lyads/aw4;Lyads/mo5;Ljava/lang/String;Lyads/ga;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v6

    goto :goto_e

    :cond_17
    invoke-static {}, Lu96;->o()V

    throw p1

    :cond_18
    return-object v2
.end method
