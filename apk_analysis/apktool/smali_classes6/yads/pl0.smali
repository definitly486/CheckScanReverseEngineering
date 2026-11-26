.class public final Lyads/pl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/g14;


# instance fields
.field public final a:Lyads/ol0;

.field public final b:Lyads/vc0;

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:F

.field public final g:F


# direct methods
.method public constructor <init>(Lyads/vc0;Lyads/zk0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/pl0;->b:Lyads/vc0;

    new-instance v0, Lyads/ol0;

    invoke-direct {v0, p2}, Lyads/ol0;-><init>(Lyads/zk0;)V

    iput-object v0, p0, Lyads/pl0;->a:Lyads/ol0;

    iget-object p2, v0, Lyads/ol0;->e:Lyads/vc0;

    if-eq p1, p2, :cond_0

    iput-object p1, v0, Lyads/ol0;->e:Lyads/vc0;

    iget-object p1, v0, Lyads/ol0;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, v0, Lyads/ol0;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lyads/pl0;->c:J

    iput-wide p1, p0, Lyads/pl0;->d:J

    iput-wide p1, p0, Lyads/pl0;->e:J

    const p1, -0x800001

    iput p1, p0, Lyads/pl0;->f:F

    iput p1, p0, Lyads/pl0;->g:F

    return-void
.end method

.method public static a(Ljava/lang/Class;Lyads/vc0;)Lyads/g14;
    .locals 1

    .line 479
    :try_start_0
    const-class v0, Lyads/vc0;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/g14;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 480
    invoke-static {p0}, Li29;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/p04;)Lyads/cs;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lyads/p04;->c:Lyads/k04;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lyads/p04;->c:Lyads/k04;

    iget-object v2, v2, Lyads/k04;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v4, "ssai"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    throw v3

    :cond_1
    :goto_0
    iget-object v2, v1, Lyads/p04;->c:Lyads/k04;

    iget-object v2, v2, Lyads/k04;->a:Landroid/net/Uri;

    invoke-static {v2, v3}, Lyads/u56;->a(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v2

    iget-object v4, v0, Lyads/pl0;->a:Lyads/ol0;

    iget-object v5, v4, Lyads/ol0;->d:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/g14;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v2}, Lyads/ol0;->a(I)Lyads/ut5;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v5, v3

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Lyads/ut5;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/g14;

    iget-object v6, v4, Lyads/ol0;->f:Lyads/sk0;

    if-eqz v6, :cond_4

    invoke-interface {v5, v6}, Lyads/g14;->a(Lyads/sk0;)Lyads/g14;

    :cond_4
    iget-object v4, v4, Lyads/ol0;->d:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "No suitable media source factory found for content type: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lyads/zj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lyads/p04;->d:Lyads/j04;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v6, v2, Lyads/j04;->b:J

    iget-wide v8, v2, Lyads/j04;->c:J

    iget-wide v10, v2, Lyads/j04;->d:J

    iget v4, v2, Lyads/j04;->e:F

    iget v2, v2, Lyads/j04;->f:F

    iget-object v12, v1, Lyads/p04;->d:Lyads/j04;

    iget-wide v13, v12, Lyads/j04;->b:J

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v13, v15

    if-nez v13, :cond_5

    iget-wide v6, v0, Lyads/pl0;->c:J

    :cond_5
    move-wide/from16 v18, v6

    iget v6, v12, Lyads/j04;->e:F

    const v7, -0x800001

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    iget v4, v0, Lyads/pl0;->f:F

    :cond_6
    move/from16 v24, v4

    iget v4, v12, Lyads/j04;->f:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_7

    iget v2, v0, Lyads/pl0;->g:F

    :cond_7
    move/from16 v25, v2

    iget-wide v6, v12, Lyads/j04;->c:J

    cmp-long v2, v6, v15

    if-nez v2, :cond_8

    iget-wide v8, v0, Lyads/pl0;->d:J

    :cond_8
    move-wide/from16 v20, v8

    iget-wide v6, v12, Lyads/j04;->d:J

    cmp-long v2, v6, v15

    if-nez v2, :cond_9

    iget-wide v10, v0, Lyads/pl0;->e:J

    :cond_9
    move-wide/from16 v22, v10

    new-instance v17, Lyads/j04;

    invoke-direct/range {v17 .. v25}, Lyads/j04;-><init>(JJJFF)V

    move-object/from16 v2, v17

    iget-object v4, v1, Lyads/p04;->d:Lyads/j04;

    invoke-virtual {v2, v4}, Lyads/j04;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    new-instance v4, Lyads/h04;

    invoke-direct {v4}, Lyads/h04;-><init>()V

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v6, Lyads/k55;->f:Lyads/k55;

    sget-object v7, Lyads/m04;->d:Lyads/m04;

    iget-object v7, v1, Lyads/p04;->f:Lyads/g04;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lyads/e04;

    invoke-direct {v8, v7}, Lyads/e04;-><init>(Lyads/g04;)V

    iget-object v7, v1, Lyads/p04;->b:Ljava/lang/String;

    iget-object v9, v1, Lyads/p04;->e:Lyads/t04;

    iget-object v10, v1, Lyads/p04;->d:Lyads/j04;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v1, Lyads/p04;->g:Lyads/m04;

    iget-object v1, v1, Lyads/p04;->c:Lyads/k04;

    if-eqz v1, :cond_a

    iget-object v4, v1, Lyads/k04;->c:Ljava/lang/String;

    iget-object v6, v1, Lyads/k04;->a:Landroid/net/Uri;

    iget-object v11, v1, Lyads/k04;->b:Ljava/util/List;

    iget-object v1, v1, Lyads/k04;->d:Lyads/oe3;

    sget-object v12, Lyads/oe3;->c:Lyads/le3;

    move-object/from16 v18, v1

    move-object/from16 v17, v4

    move-object v14, v6

    move-object/from16 v16, v11

    goto :goto_2

    :cond_a
    move-object v14, v3

    move-object/from16 v17, v14

    move-object/from16 v16, v4

    move-object/from16 v18, v6

    :goto_2
    iget-wide v11, v2, Lyads/j04;->b:J

    move-object v6, v3

    iget-wide v3, v2, Lyads/j04;->c:J

    move-object/from16 v28, v6

    move-object/from16 v19, v7

    iget-wide v6, v2, Lyads/j04;->d:J

    iget v1, v2, Lyads/j04;->e:F

    iget v2, v2, Lyads/j04;->f:F

    if-eqz v14, :cond_b

    new-instance v13, Lyads/k04;

    const/4 v15, 0x0

    invoke-direct/range {v13 .. v18}, Lyads/k04;-><init>(Landroid/net/Uri;Lyads/i04;Ljava/util/List;Ljava/lang/String;Lyads/oe3;)V

    move-object v14, v13

    :goto_3
    move-wide/from16 v20, v11

    goto :goto_4

    :cond_b
    move-object/from16 v14, v28

    goto :goto_3

    :goto_4
    new-instance v11, Lyads/p04;

    if-eqz v19, :cond_c

    move-object/from16 v12, v19

    goto :goto_5

    :cond_c
    const-string v12, ""

    :goto_5
    new-instance v13, Lyads/g04;

    invoke-direct {v13, v8}, Lyads/g04;-><init>(Lyads/e04;)V

    new-instance v15, Lyads/j04;

    move/from16 v26, v1

    move/from16 v27, v2

    move-wide/from16 v22, v3

    move-wide/from16 v24, v6

    move-object/from16 v19, v15

    invoke-direct/range {v19 .. v27}, Lyads/j04;-><init>(JJJFF)V

    if-eqz v9, :cond_d

    :goto_6
    move-object/from16 v16, v9

    move-object/from16 v17, v10

    goto :goto_7

    :cond_d
    sget-object v9, Lyads/t04;->H:Lyads/t04;

    goto :goto_6

    :goto_7
    invoke-direct/range {v11 .. v17}, Lyads/p04;-><init>(Ljava/lang/String;Lyads/g04;Lyads/k04;Lyads/j04;Lyads/t04;Lyads/m04;)V

    move-object v1, v11

    goto :goto_8

    :cond_e
    move-object/from16 v28, v3

    :goto_8
    invoke-interface {v5, v1}, Lyads/g14;->a(Lyads/p04;)Lyads/cs;

    move-result-object v2

    iget-object v3, v1, Lyads/p04;->c:Lyads/k04;

    iget-object v3, v3, Lyads/k04;->d:Lyads/oe3;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v5

    new-array v4, v4, [Lyads/cs;

    const/4 v6, 0x0

    aput-object v2, v4, v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_10

    new-instance v2, Lyads/e84;

    invoke-direct {v2, v4}, Lyads/e84;-><init>([Lyads/cs;)V

    :cond_f
    move-object v3, v2

    goto :goto_9

    :cond_10
    iget-object v0, v0, Lyads/pl0;->b:Lyads/vc0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/n04;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v0, Lyads/k14;

    invoke-direct {v0}, Lyads/k14;-><init>()V

    new-instance v0, Lyads/tl2;

    invoke-direct {v0}, Lyads/tl2;-><init>()V

    sget-object v0, Lyads/oe3;->c:Lyads/le3;

    sget-object v0, Lyads/k55;->f:Lyads/k55;

    sget-object v0, Lyads/m04;->d:Lyads/m04;

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    throw v28

    :goto_9
    iget-object v0, v1, Lyads/p04;->f:Lyads/g04;

    iget-wide v6, v0, Lyads/f04;->b:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_11

    iget-wide v8, v0, Lyads/f04;->c:J

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v2, v8, v10

    if-nez v2, :cond_11

    iget-boolean v0, v0, Lyads/f04;->e:Z

    if-nez v0, :cond_11

    goto :goto_a

    :cond_11
    new-instance v2, Lyads/w00;

    invoke-static {v6, v7}, Lyads/u56;->a(J)J

    move-result-wide v6

    iget-object v0, v1, Lyads/p04;->f:Lyads/g04;

    iget-wide v8, v0, Lyads/f04;->c:J

    invoke-static {v8, v9}, Lyads/u56;->a(J)J

    move-result-wide v8

    iget-object v0, v1, Lyads/p04;->f:Lyads/g04;

    iget-boolean v4, v0, Lyads/f04;->f:Z

    xor-int/2addr v4, v5

    move-wide/from16 v29, v8

    move v8, v4

    move-wide v4, v6

    move-wide/from16 v6, v29

    iget-boolean v9, v0, Lyads/f04;->d:Z

    iget-boolean v10, v0, Lyads/f04;->e:Z

    invoke-direct/range {v2 .. v10}, Lyads/w00;-><init>(Lyads/cs;JJZZZ)V

    move-object v3, v2

    :goto_a
    iget-object v0, v1, Lyads/p04;->c:Lyads/k04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lyads/p04;->c:Lyads/k04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v3
.end method

.method public final a(Lyads/sk0;)Lyads/g14;
    .locals 2

    .line 474
    iget-object v0, p0, Lyads/pl0;->a:Lyads/ol0;

    if-eqz p1, :cond_1

    .line 475
    iput-object p1, v0, Lyads/ol0;->f:Lyads/sk0;

    .line 476
    iget-object v0, v0, Lyads/ol0;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/g14;

    .line 477
    invoke-interface {v1, p1}, Lyads/g14;->a(Lyads/sk0;)Lyads/g14;

    goto :goto_0

    :cond_0
    return-object p0

    .line 478
    :cond_1
    const-string p0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
