.class public abstract Lyads/dq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wc0;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public d:Lyads/bd0;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lyads/dq;->a:Z

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lyads/dq;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lyads/p16;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lyads/dq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/dq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lyads/dq;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lyads/dq;->c:I

    :cond_0
    return-void
.end method

.method public final b(Lyads/bd0;)V
    .locals 4

    iput-object p1, p0, Lyads/dq;->d:Lyads/bd0;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lyads/dq;->c:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lyads/dq;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/p16;

    iget-boolean v2, p0, Lyads/dq;->a:Z

    check-cast v1, Lyads/zj0;

    monitor-enter v1

    :try_start_0
    sget-object v3, Lyads/zj0;->n:Lyads/k55;

    if-eqz v2, :cond_2

    iget v2, p1, Lyads/bd0;->i:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    iget v2, v1, Lyads/zj0;->f:I

    if-nez v2, :cond_1

    iget-object v2, v1, Lyads/zj0;->d:Lyads/du5;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lyads/zj0;->g:J

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_1
    iget v2, v1, Lyads/zj0;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lyads/zj0;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit v1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_4
    monitor-exit v1

    throw p0

    :cond_3
    return-void
.end method

.method public final c(I)V
    .locals 7

    iget-object v0, p0, Lyads/dq;->d:Lyads/bd0;

    sget v1, Lyads/u56;->a:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lyads/dq;->c:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lyads/dq;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/p16;

    iget-boolean v3, p0, Lyads/dq;->a:Z

    check-cast v2, Lyads/zj0;

    monitor-enter v2

    :try_start_0
    sget-object v4, Lyads/zj0;->n:Lyads/k55;

    if-eqz v3, :cond_1

    iget v3, v0, Lyads/bd0;->i:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v3, v2, Lyads/zj0;->h:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lyads/zj0;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    monitor-exit v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_3
    monitor-exit v2

    throw p0

    :cond_2
    return-void
.end method

.method public final g()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/dq;->d:Lyads/bd0;

    sget v2, Lyads/u56;->a:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v0, Lyads/dq;->c:I

    if-ge v3, v4, :cond_11

    iget-object v4, v0, Lyads/dq;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/p16;

    iget-boolean v5, v0, Lyads/dq;->a:Z

    check-cast v4, Lyads/zj0;

    monitor-enter v4

    :try_start_0
    sget-object v6, Lyads/zj0;->n:Lyads/k55;

    if-eqz v5, :cond_0

    iget v5, v1, Lyads/bd0;->i:I

    const/16 v6, 0x8

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    :cond_0
    move/from16 v16, v3

    goto/16 :goto_8

    :cond_1
    iget v5, v4, Lyads/zj0;->f:I

    if-lez v5, :cond_10

    iget-object v5, v4, Lyads/zj0;->d:Lyads/du5;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v4, Lyads/zj0;->g:J

    sub-long v7, v5, v7

    long-to-int v10, v7

    iget-wide v7, v4, Lyads/zj0;->j:J

    int-to-long v11, v10

    add-long/2addr v7, v11

    iput-wide v7, v4, Lyads/zj0;->j:J

    iget-wide v7, v4, Lyads/zj0;->k:J

    iget-wide v11, v4, Lyads/zj0;->h:J

    add-long/2addr v7, v11

    iput-wide v7, v4, Lyads/zj0;->k:J

    const/4 v7, 0x1

    if-lez v10, :cond_f

    long-to-float v8, v11

    const/high16 v9, 0x45fa0000    # 8000.0f

    mul-float/2addr v8, v9

    int-to-float v9, v10

    div-float/2addr v8, v9

    iget-object v9, v4, Lyads/zj0;->c:Lyads/mn5;

    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v11, v11

    iget v12, v9, Lyads/mn5;->d:I

    if-eq v12, v7, :cond_2

    iget-object v12, v9, Lyads/mn5;->b:Ljava/util/ArrayList;

    sget-object v13, Lyads/mn5;->h:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v7, v9, Lyads/mn5;->d:I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_2
    :goto_1
    iget v12, v9, Lyads/mn5;->g:I

    if-lez v12, :cond_3

    iget-object v13, v9, Lyads/mn5;->c:[Lyads/ln5;

    add-int/lit8 v12, v12, -0x1

    iput v12, v9, Lyads/mn5;->g:I

    aget-object v12, v13, v12

    goto :goto_2

    :cond_3
    new-instance v12, Lyads/ln5;

    invoke-direct {v12}, Lyads/ln5;-><init>()V

    :goto_2
    iget v13, v9, Lyads/mn5;->e:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v9, Lyads/mn5;->e:I

    iput v13, v12, Lyads/ln5;->a:I

    iput v11, v12, Lyads/ln5;->b:I

    iput v8, v12, Lyads/ln5;->c:F

    iget-object v8, v9, Lyads/mn5;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v8, v9, Lyads/mn5;->f:I

    add-int/2addr v8, v11

    iput v8, v9, Lyads/mn5;->f:I

    :cond_4
    :goto_3
    iget v8, v9, Lyads/mn5;->f:I

    iget v11, v9, Lyads/mn5;->a:I

    if-le v8, v11, :cond_6

    sub-int/2addr v8, v11

    iget-object v11, v9, Lyads/mn5;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lyads/ln5;

    iget v12, v11, Lyads/ln5;->b:I

    if-gt v12, v8, :cond_5

    iget v8, v9, Lyads/mn5;->f:I

    sub-int/2addr v8, v12

    iput v8, v9, Lyads/mn5;->f:I

    iget-object v8, v9, Lyads/mn5;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v8, v9, Lyads/mn5;->g:I

    const/4 v12, 0x5

    if-ge v8, v12, :cond_4

    iget-object v12, v9, Lyads/mn5;->c:[Lyads/ln5;

    add-int/lit8 v13, v8, 0x1

    iput v13, v9, Lyads/mn5;->g:I

    aput-object v11, v12, v8

    goto :goto_3

    :cond_5
    sub-int/2addr v12, v8

    iput v12, v11, Lyads/ln5;->b:I

    iget v11, v9, Lyads/mn5;->f:I

    sub-int/2addr v11, v8

    iput v11, v9, Lyads/mn5;->f:I

    goto :goto_3

    :cond_6
    iget-wide v8, v4, Lyads/zj0;->j:J

    const-wide/16 v11, 0x7d0

    cmp-long v8, v8, v11

    if-gez v8, :cond_7

    iget-wide v8, v4, Lyads/zj0;->k:J

    const-wide/32 v11, 0x80000

    cmp-long v8, v8, v11

    if-ltz v8, :cond_c

    :cond_7
    iget-object v8, v4, Lyads/zj0;->c:Lyads/mn5;

    iget v9, v8, Lyads/mn5;->d:I

    if-eqz v9, :cond_8

    iget-object v9, v8, Lyads/mn5;->b:Ljava/util/ArrayList;

    sget-object v11, Lyads/mn5;->i:Ljava/util/Comparator;

    invoke-static {v9, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v2, v8, Lyads/mn5;->d:I

    :cond_8
    iget v9, v8, Lyads/mn5;->f:I

    int-to-float v9, v9

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v11, v9

    move v9, v2

    move v12, v9

    :goto_4
    iget-object v13, v8, Lyads/mn5;->b:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v14, v8, Lyads/mn5;->b:Ljava/util/ArrayList;

    if-ge v9, v13, :cond_a

    :try_start_1
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lyads/ln5;

    iget v14, v13, Lyads/ln5;->b:I

    add-int/2addr v12, v14

    int-to-float v14, v12

    cmpl-float v14, v14, v11

    if-ltz v14, :cond_9

    iget v8, v13, Lyads/ln5;->c:F

    goto :goto_5

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    const/high16 v8, 0x7fc00000    # Float.NaN

    goto :goto_5

    :cond_b
    iget-object v8, v8, Lyads/mn5;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/ln5;

    iget v8, v8, Lyads/ln5;->c:F

    :goto_5
    float-to-long v8, v8

    iput-wide v8, v4, Lyads/zj0;->l:J

    :cond_c
    iget-wide v11, v4, Lyads/zj0;->h:J

    iget-wide v13, v4, Lyads/zj0;->l:J

    const-wide/16 v8, 0x0

    if-nez v10, :cond_d

    cmp-long v15, v11, v8

    if-nez v15, :cond_d

    move/from16 v16, v3

    iget-wide v2, v4, Lyads/zj0;->m:J

    cmp-long v2, v13, v2

    if-nez v2, :cond_e

    move-wide v2, v8

    goto :goto_6

    :cond_d
    move/from16 v16, v3

    :cond_e
    iput-wide v13, v4, Lyads/zj0;->m:J

    move-wide v2, v8

    iget-object v9, v4, Lyads/zj0;->b:Lyads/tn;

    invoke-virtual/range {v9 .. v14}, Lyads/tn;->a(IJJ)V

    :goto_6
    iput-wide v5, v4, Lyads/zj0;->g:J

    iput-wide v2, v4, Lyads/zj0;->h:J

    goto :goto_7

    :cond_f
    move/from16 v16, v3

    :goto_7
    iget v2, v4, Lyads/zj0;->f:I

    sub-int/2addr v2, v7

    iput v2, v4, Lyads/zj0;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    goto :goto_9

    :cond_10
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_8
    monitor-exit v4

    :goto_9
    add-int/lit8 v3, v16, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :goto_a
    monitor-exit v4

    throw v0

    :cond_11
    const/4 v1, 0x0

    iput-object v1, v0, Lyads/dq;->d:Lyads/bd0;

    return-void
.end method

.method public final h()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lyads/dq;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lyads/dq;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/p16;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
