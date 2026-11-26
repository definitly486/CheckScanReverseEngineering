.class public final Lyads/be4;
.super Lyads/ij4;
.source "SourceFile"

# interfaces
.implements Lyads/pg4;


# instance fields
.field public final Q:Lyads/sd4;

.field public final R:Lyads/lg4;

.field public final S:Lyads/b05;

.field public final T:Lyads/zh4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/sd4;Lyads/lg4;Lyads/b05;Lyads/rt;Lyads/we4;)V
    .locals 6

    invoke-direct {p0, p1, p5, p6}, Lyads/ij4;-><init>(Landroid/content/Context;Lyads/rt;Lyads/we4;)V

    iput-object p2, p0, Lyads/be4;->Q:Lyads/sd4;

    iput-object p3, p0, Lyads/be4;->R:Lyads/lg4;

    iput-object p4, p0, Lyads/be4;->S:Lyads/b05;

    iget-object p1, p5, Lyads/rt;->a:Lyads/ee4;

    iget-object v1, p1, Lyads/ee4;->c:Lyads/e4;

    iget-object p1, p2, Lyads/sd4;->a:Lyads/f95;

    new-instance v5, Lyads/il5;

    invoke-direct {v5, p2}, Lyads/il5;-><init>(Lyads/sd4;)V

    new-instance v0, Lyads/zh4;

    iget-object v2, p1, Lyads/f95;->c:Ljava/lang/String;

    iget-object v3, p0, Lyads/ij4;->i:Lyads/d9;

    iget-object v4, p0, Lyads/ij4;->j:Lyads/vg4;

    invoke-direct/range {v0 .. v5}, Lyads/zh4;-><init>(Lyads/e4;Ljava/lang/String;Lyads/d9;Lyads/vg4;Lyads/li4;)V

    iput-object v0, p0, Lyads/be4;->T:Lyads/zh4;

    invoke-virtual {p0, v0}, Lyads/ij4;->a(Lyads/zh4;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lyads/be4;->R:Lyads/lg4;

    .line 71
    iget-object p0, p0, Lyads/lg4;->a:Lyads/sd4;

    .line 72
    iget-object p0, p0, Lyads/sd4;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lyads/ih4;)Lyads/g70;
    .locals 2

    :try_start_0
    sget-object v0, Lyads/gi4;->c:Lyads/gi4;

    iget-object v1, p0, Lyads/be4;->T:Lyads/zh4;

    iput-object v0, v1, Lyads/zh4;->f:Lyads/gi4;

    iget-object v0, p1, Lyads/ih4;->c:Landroid/view/View;

    new-instance v1, Lyads/rh4;

    invoke-direct {v1, p1}, Lyads/rh4;-><init>(Lyads/ih4;)V

    iget-object p1, p0, Lyads/be4;->S:Lyads/b05;

    invoke-virtual {p0, v0, p1, v1}, Lyads/ij4;->a(Landroid/view/View;Lyads/b05;Lyads/rh4;)V

    sget-object p0, Lyads/f70;->a:Lyads/f70;
    :try_end_0
    .catch Lyads/yf4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Ad binding failed with unexpected exception"

    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Ad binding failed with unexpected error: %s"

    invoke-static {v0, p1}, Lyads/jn3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lyads/e70;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lyads/e70;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p0

    iget-object p1, p0, Lyads/yf4;->b:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Ad binding failed: %s"

    invoke-static {v0, p1}, Lyads/jn3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lyads/e70;

    iget-object v0, p0, Lyads/yf4;->c:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Lyads/e70;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p1
.end method

.method public final a(Lyads/ih4;Lyads/pz;)V
    .locals 2

    .line 66
    iget-object v0, p1, Lyads/ih4;->c:Landroid/view/View;

    .line 67
    new-instance v1, Lyads/rh4;

    invoke-direct {v1, p1}, Lyads/rh4;-><init>(Lyads/ih4;)V

    .line 68
    iget-object p1, p0, Lyads/be4;->S:Lyads/b05;

    .line 69
    invoke-virtual {p0, v0, p1, v1, p2}, Lyads/ij4;->a(Landroid/view/View;Lyads/b05;Lyads/rh4;Lyads/pz;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/ij4;->N:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Lyads/s70;
    .locals 0

    iget-object p0, p0, Lyads/be4;->Q:Lyads/sd4;

    iget-object p0, p0, Lyads/sd4;->j:Lyads/s70;

    return-object p0
.end method

.method public final getAdAssets()Lyads/f80;
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lyads/be4;->R:Lyads/lg4;

    iget-object v1, v0, Lyads/lg4;->f:Lyads/zd4;

    iget-object v0, v0, Lyads/lg4;->a:Lyads/sd4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lyads/sd4;->b:Ljava/util/List;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lm05;->b(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/ak;

    iget-object v4, v2, Lyads/ak;->a:Ljava/lang/String;

    iget-object v2, v2, Lyads/ak;->c:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "media"

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lyads/v14;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    check-cast v0, Lyads/v14;

    goto :goto_1

    :cond_2
    move-object v0, v4

    :goto_1
    const-string v2, "favicon"

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Lyads/rd3;

    if-eqz v5, :cond_3

    check-cast v2, Lyads/rd3;

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    const-string v5, "icon"

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lyads/rd3;

    if-eqz v6, :cond_4

    check-cast v5, Lyads/rd3;

    goto :goto_3

    :cond_4
    move-object v5, v4

    :goto_3
    const-string v6, "close_button"

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lyads/g10;

    if-eqz v7, :cond_5

    check-cast v6, Lyads/g10;

    goto :goto_4

    :cond_5
    move-object v6, v4

    :goto_4
    const-string v7, "age"

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_6

    check-cast v7, Ljava/lang/String;

    move-object v14, v7

    goto :goto_5

    :cond_6
    move-object v14, v4

    :goto_5
    const-string v7, "body"

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_7

    check-cast v7, Ljava/lang/String;

    move-object v15, v7

    goto :goto_6

    :cond_7
    move-object v15, v4

    :goto_6
    const-string v7, "call_to_action"

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_8

    check-cast v7, Ljava/lang/String;

    move-object/from16 v16, v7

    goto :goto_7

    :cond_8
    move-object/from16 v16, v4

    :goto_7
    const-string v7, "domain"

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_9

    check-cast v7, Ljava/lang/String;

    move-object/from16 v17, v7

    goto :goto_8

    :cond_9
    move-object/from16 v17, v4

    :goto_8
    const-string v7, "price"

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_a

    check-cast v7, Ljava/lang/String;

    move-object/from16 v18, v7

    goto :goto_9

    :cond_a
    move-object/from16 v18, v4

    :goto_9
    const-string v7, "rating"

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_b

    check-cast v7, Ljava/lang/String;

    goto :goto_a

    :cond_b
    move-object v7, v4

    :goto_a
    const-string v8, "review_count"

    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_c

    check-cast v8, Ljava/lang/String;

    move-object/from16 v20, v8

    goto :goto_b

    :cond_c
    move-object/from16 v20, v4

    :goto_b
    const-string v8, "sponsored"

    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_d

    check-cast v8, Ljava/lang/String;

    move-object/from16 v21, v8

    goto :goto_c

    :cond_d
    move-object/from16 v21, v4

    :goto_c
    const-string v8, "title"

    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_e

    check-cast v8, Ljava/lang/String;

    move-object/from16 v22, v8

    goto :goto_d

    :cond_e
    move-object/from16 v22, v4

    :goto_d
    const-string v8, "warning"

    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lyads/r80;

    if-eqz v9, :cond_f

    check-cast v8, Lyads/r80;

    move-object/from16 v23, v8

    goto :goto_e

    :cond_f
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_10

    new-instance v9, Lyads/r80;

    check-cast v8, Ljava/lang/String;

    invoke-direct {v9, v8}, Lyads/r80;-><init>(Ljava/lang/String;)V

    move-object/from16 v23, v9

    goto :goto_e

    :cond_10
    move-object/from16 v23, v4

    :goto_e
    const-string v8, "feedback"

    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_11

    move/from16 v24, v9

    goto :goto_f

    :cond_11
    move/from16 v24, v8

    :goto_f
    if-eqz v0, :cond_12

    iget-object v3, v0, Lyads/v14;->c:Ljava/util/List;

    if-eqz v3, :cond_12

    invoke-static {v3}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/rd3;

    goto :goto_10

    :cond_12
    move-object v3, v4

    :goto_10
    iget-object v10, v1, Lyads/zd4;->b:Lyads/wf4;

    iget-object v11, v1, Lyads/zd4;->a:Lyads/b05;

    invoke-virtual {v10, v3, v11}, Lyads/wf4;->a(Lyads/rd3;Lyads/b05;)Lyads/i80;

    move-result-object v12

    iget-object v3, v1, Lyads/zd4;->b:Lyads/wf4;

    iget-object v10, v1, Lyads/zd4;->a:Lyads/b05;

    invoke-virtual {v3, v2, v10}, Lyads/wf4;->a(Lyads/rd3;Lyads/b05;)Lyads/i80;

    move-result-object v10

    iget-object v2, v1, Lyads/zd4;->b:Lyads/wf4;

    iget-object v3, v1, Lyads/zd4;->a:Lyads/b05;

    invoke-virtual {v2, v5, v3}, Lyads/wf4;->a(Lyads/rd3;Lyads/b05;)Lyads/i80;

    move-result-object v11

    iget-object v2, v1, Lyads/zd4;->c:Lyads/mg4;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_16

    iget-object v2, v0, Lyads/v14;->b:Lyads/r96;

    iget-object v3, v0, Lyads/v14;->c:Ljava/util/List;

    iget-object v0, v0, Lyads/v14;->a:Lyads/by3;

    if-eqz v2, :cond_14

    iget-object v0, v2, Lyads/r96;->a:Ljava/util/List;

    invoke-static {v0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ja6;

    iget-object v0, v0, Lyads/ja6;->d:Lyads/aw4;

    check-cast v0, Lyads/ol4;

    iget v2, v0, Lyads/ol4;->c:I

    if-eqz v2, :cond_13

    iget v0, v0, Lyads/ol4;->b:I

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_11

    :cond_13
    const v0, 0x3fe38e39

    :goto_11
    new-instance v2, Lyads/p80;

    invoke-direct {v2, v0, v9}, Lyads/p80;-><init>(FZ)V

    goto :goto_12

    :cond_14
    if-eqz v3, :cond_15

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v9, :cond_15

    invoke-static {v3}, Lyads/tc4;->a(Ljava/util/List;)D

    move-result-wide v2

    double-to-float v0, v2

    new-instance v2, Lyads/p80;

    invoke-direct {v2, v0, v8}, Lyads/p80;-><init>(FZ)V

    goto :goto_12

    :cond_15
    if-eqz v0, :cond_16

    new-instance v2, Lyads/p80;

    iget v3, v0, Lyads/by3;->b:F

    iget-boolean v0, v0, Lyads/by3;->c:Z

    invoke-direct {v2, v3, v0}, Lyads/p80;-><init>(FZ)V

    goto :goto_12

    :cond_16
    move-object v2, v4

    :goto_12
    iget-object v0, v1, Lyads/zd4;->e:Lyads/ki4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_19

    iget-object v0, v6, Lyads/g10;->a:Lyads/f10;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_18

    if-ne v0, v9, :cond_17

    sget-object v0, Lyads/t80;->c:Lyads/t80;

    goto :goto_13

    :cond_17
    invoke-static {}, Lme0;->e()V

    return-object v4

    :cond_18
    sget-object v0, Lyads/t80;->b:Lyads/t80;

    :goto_13
    new-instance v4, Lyads/u80;

    iget-object v3, v6, Lyads/g10;->b:Ljava/lang/String;

    invoke-direct {v4, v0, v3}, Lyads/u80;-><init>(Lyads/t80;Ljava/lang/String;)V

    :cond_19
    move-object v13, v4

    iget-object v0, v1, Lyads/zd4;->d:Lyads/bi4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lyads/bi4;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v19

    new-instance v8, Lyads/f80;

    move-object v9, v2

    invoke-direct/range {v8 .. v24}, Lyads/f80;-><init>(Lyads/p80;Lyads/i80;Lyads/i80;Lyads/i80;Lyads/u80;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyads/r80;Z)V

    return-object v8
.end method

.method public final getAdType()Lyads/f95;
    .locals 0

    iget-object p0, p0, Lyads/be4;->R:Lyads/lg4;

    iget-object p0, p0, Lyads/lg4;->a:Lyads/sd4;

    iget-object p0, p0, Lyads/sd4;->a:Lyads/f95;

    return-object p0
.end method

.method public final getInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/be4;->R:Lyads/lg4;

    iget-object p0, p0, Lyads/lg4;->a:Lyads/sd4;

    iget-object p0, p0, Lyads/sd4;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final loadImages()V
    .locals 4

    iget-object p0, p0, Lyads/be4;->R:Lyads/lg4;

    iget-object v0, p0, Lyads/lg4;->a:Lyads/sd4;

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lyads/lg4;->e:Lyads/yd3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/sd4;

    iget-object v3, v3, Lyads/sd4;->b:Ljava/util/List;

    invoke-virtual {v1, v3}, Lyads/yd3;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v2}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyads/lg4;->d:Lyads/sc3;

    new-instance v1, Lyads/kg4;

    invoke-direct {v1, p0}, Lyads/kg4;-><init>(Lyads/lg4;)V

    invoke-virtual {v0, v2, v1}, Lyads/sc3;->a(Ljava/util/Set;Lyads/ce3;)V

    return-void
.end method
