.class public final Lyads/mq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lyads/y04;
.implements Lyads/sw4;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:I

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:I

.field public K:Lyads/lq2;

.field public L:J

.field public M:I

.field public N:Z

.field public O:Lyads/up2;

.field public P:J

.field public final b:[Lyads/gs;

.field public final c:Ljava/util/Set;

.field public final d:[Lyads/gs;

.field public final e:Lyads/p06;

.field public final f:Lyads/q06;

.field public final g:Lyads/kl0;

.field public final h:Lyads/vn;

.field public final i:Lyads/gu5;

.field public final j:Landroid/os/HandlerThread;

.field public final k:Landroid/os/Looper;

.field public final l:Lyads/jx5;

.field public final m:Lyads/hx5;

.field public final n:J

.field public final o:Lyads/ml0;

.field public final p:Ljava/util/ArrayList;

.field public final q:Lyads/du5;

.field public final r:Lyads/jq2;

.field public final s:Lyads/d14;

.field public final t:Lyads/q14;

.field public final u:Lyads/jl0;

.field public final v:J

.field public w:Lyads/th5;

.field public x:Lyads/bw4;

.field public y:Lyads/iq2;

.field public z:Z


# direct methods
.method public constructor <init>([Lyads/gs;Lyads/p06;Lyads/q06;Lyads/kl0;Lyads/vn;Lyads/ge;Lyads/th5;Lyads/jl0;JLandroid/os/Looper;Lyads/du5;Lyads/jq2;Lyads/rw4;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p12

    move-object/from16 v7, p14

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v8, p13

    iput-object v8, v0, Lyads/mq2;->r:Lyads/jq2;

    iput-object v1, v0, Lyads/mq2;->b:[Lyads/gs;

    iput-object v2, v0, Lyads/mq2;->e:Lyads/p06;

    move-object/from16 v8, p3

    iput-object v8, v0, Lyads/mq2;->f:Lyads/q06;

    iput-object v3, v0, Lyads/mq2;->g:Lyads/kl0;

    iput-object v4, v0, Lyads/mq2;->h:Lyads/vn;

    const/4 v9, 0x0

    iput v9, v0, Lyads/mq2;->E:I

    iput-boolean v9, v0, Lyads/mq2;->F:Z

    move-object/from16 v10, p7

    iput-object v10, v0, Lyads/mq2;->w:Lyads/th5;

    move-object/from16 v10, p8

    iput-object v10, v0, Lyads/mq2;->u:Lyads/jl0;

    move-wide/from16 v10, p9

    iput-wide v10, v0, Lyads/mq2;->v:J

    iput-boolean v9, v0, Lyads/mq2;->A:Z

    iput-object v6, v0, Lyads/mq2;->q:Lyads/du5;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v10, v0, Lyads/mq2;->P:J

    iget-wide v10, v3, Lyads/kl0;->h:J

    iput-wide v10, v0, Lyads/mq2;->n:J

    new-instance v8, Lyads/bw4;

    move v3, v9

    sget-object v9, Lyads/kx5;->b:Lyads/gx5;

    sget-object v10, Lyads/bw4;->s:Lyads/h14;

    sget-object v18, Lyads/g06;->e:Lyads/g06;

    sget-object v20, Lyads/k55;->f:Lyads/k55;

    sget-object v24, Lyads/dw4;->e:Lyads/dw4;

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    move-object/from16 v21, v10

    move-object/from16 v19, p3

    invoke-direct/range {v8 .. v31}, Lyads/bw4;-><init>(Lyads/kx5;Lyads/h14;JJILyads/up2;ZLyads/g06;Lyads/q06;Ljava/util/List;Lyads/h14;ZILyads/dw4;JJJZ)V

    iput-object v8, v0, Lyads/mq2;->x:Lyads/bw4;

    new-instance v9, Lyads/iq2;

    invoke-direct {v9, v8}, Lyads/iq2;-><init>(Lyads/bw4;)V

    iput-object v9, v0, Lyads/mq2;->y:Lyads/iq2;

    array-length v8, v1

    new-array v8, v8, [Lyads/gs;

    iput-object v8, v0, Lyads/mq2;->d:[Lyads/gs;

    move v9, v3

    :goto_0
    array-length v3, v1

    if-ge v9, v3, :cond_0

    aget-object v3, v1, v9

    iput v9, v3, Lyads/gs;->e:I

    iput-object v7, v3, Lyads/gs;->f:Lyads/rw4;

    iget-object v8, v0, Lyads/mq2;->d:[Lyads/gs;

    aput-object v3, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lyads/ml0;

    invoke-direct {v1, v0, v6}, Lyads/ml0;-><init>(Lyads/mq2;Lyads/du5;)V

    iput-object v1, v0, Lyads/mq2;->o:Lyads/ml0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lyads/mq2;->p:Ljava/util/ArrayList;

    invoke-static {}, Lyads/tj5;->a()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lyads/mq2;->c:Ljava/util/Set;

    new-instance v1, Lyads/jx5;

    invoke-direct {v1}, Lyads/jx5;-><init>()V

    iput-object v1, v0, Lyads/mq2;->l:Lyads/jx5;

    new-instance v1, Lyads/hx5;

    invoke-direct {v1}, Lyads/hx5;-><init>()V

    iput-object v1, v0, Lyads/mq2;->m:Lyads/hx5;

    iput-object v0, v2, Lyads/p06;->a:Lyads/mq2;

    iput-object v4, v2, Lyads/p06;->b:Lyads/vn;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lyads/mq2;->N:Z

    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p11

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lyads/d14;

    invoke-direct {v2, v5, v1}, Lyads/d14;-><init>(Lyads/ge;Landroid/os/Handler;)V

    iput-object v2, v0, Lyads/mq2;->s:Lyads/d14;

    new-instance v2, Lyads/q14;

    invoke-direct {v2, v0, v5, v1, v7}, Lyads/q14;-><init>(Lyads/mq2;Lyads/ge;Landroid/os/Handler;Lyads/rw4;)V

    iput-object v2, v0, Lyads/mq2;->t:Lyads/q14;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayer:Playback"

    const/16 v3, -0x10

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lyads/mq2;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lyads/mq2;->k:Landroid/os/Looper;

    invoke-virtual {v6, v1, v0}, Lyads/du5;->a(Landroid/os/Looper;Lyads/mq2;)Lyads/gu5;

    move-result-object v1

    iput-object v1, v0, Lyads/mq2;->i:Lyads/gu5;

    return-void
.end method

.method public static a(Lyads/kx5;Lyads/lq2;ZIZLyads/jx5;Lyads/hx5;)Landroid/util/Pair;
    .locals 9

    .line 2663
    iget-object v2, p1, Lyads/lq2;->a:Lyads/kx5;

    .line 2664
    invoke-virtual {p0}, Lyads/kx5;->c()Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    return-object v8

    .line 2665
    :cond_0
    invoke-virtual {v2}, Lyads/kx5;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, p0

    .line 2666
    :cond_1
    :try_start_0
    iget v5, p1, Lyads/lq2;->b:I

    iget-wide v6, p1, Lyads/lq2;->c:J

    move-object v3, p5

    move-object v4, p6

    .line 2667
    invoke-virtual/range {v2 .. v7}, Lyads/kx5;->a(Lyads/jx5;Lyads/hx5;IJ)Landroid/util/Pair;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 2668
    invoke-virtual {p0, v3}, Lyads/kx5;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v5

    .line 2669
    :cond_2
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_4

    .line 2670
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4, p6}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v4

    iget-boolean v4, v4, Lyads/hx5;->g:Z

    if-eqz v4, :cond_3

    iget v4, p6, Lyads/hx5;->d:I

    const-wide/16 v6, 0x0

    .line 2671
    invoke-virtual {v3, v4, p5, v6, v7}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object v4

    .line 2672
    iget v4, v4, Lyads/jx5;->p:I

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2673
    invoke-virtual {v3, v6}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v3

    if-ne v4, v3, :cond_3

    .line 2674
    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v3, p6}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v3

    iget v3, v3, Lyads/hx5;->d:I

    .line 2675
    iget-wide v4, p1, Lyads/lq2;->c:J

    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    .line 2676
    invoke-virtual/range {v0 .. v5}, Lyads/kx5;->a(Lyads/jx5;Lyads/hx5;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v5

    :cond_4
    if-eqz p2, :cond_5

    .line 2677
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, p0

    move v2, p3

    move-object v0, p5

    move-object v1, p6

    move-object v5, v3

    move v3, p4

    .line 2678
    invoke-static/range {v0 .. v6}, Lyads/mq2;->a(Lyads/jx5;Lyads/hx5;IZLjava/lang/Object;Lyads/kx5;Lyads/kx5;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2679
    invoke-virtual {p0, v2, p6}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v2

    iget v3, v2, Lyads/hx5;->d:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    .line 2680
    invoke-virtual/range {v0 .. v5}, Lyads/kx5;->a(Lyads/jx5;Lyads/hx5;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v8
.end method

.method public static a(Lyads/jx5;Lyads/hx5;IZLjava/lang/Object;Lyads/kx5;Lyads/kx5;)Ljava/lang/Object;
    .locals 9

    .line 2681
    invoke-virtual {p5, p4}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result p4

    .line 2682
    invoke-virtual {p5}, Lyads/kx5;->a()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    move p4, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v6, p0

    move-object v5, p1

    move v7, p2

    move v8, p3

    move-object v3, p5

    .line 2683
    invoke-virtual/range {v3 .. v8}, Lyads/kx5;->a(ILyads/hx5;Lyads/jx5;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 2684
    :cond_0
    invoke-virtual {v3, v4}, Lyads/kx5;->a(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p6, p0}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    move-object p5, v3

    move-object p1, v5

    move-object p0, v6

    move p2, v7

    move p3, v8

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 2685
    :cond_2
    invoke-virtual {p6, p4}, Lyads/kx5;->a(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lyads/gs;J)V
    .locals 1

    const/4 v0, 0x1

    .line 2024
    iput-boolean v0, p0, Lyads/gs;->l:Z

    .line 2025
    instance-of v0, p0, Lyads/hw5;

    if-eqz v0, :cond_1

    .line 2026
    check-cast p0, Lyads/hw5;

    .line 2027
    iget-boolean v0, p0, Lyads/gs;->l:Z

    if-eqz v0, :cond_0

    .line 2028
    iput-wide p1, p0, Lyads/hw5;->B:J

    return-void

    .line 2029
    :cond_0
    invoke-static {}, Lud;->g()V

    :cond_1
    return-void
.end method

.method public static a(Lyads/uw4;)V
    .locals 4

    .line 2312
    monitor-enter p0

    .line 2313
    monitor-exit p0

    const/4 v0, 0x1

    .line 2314
    :try_start_0
    iget-object v1, p0, Lyads/uw4;->a:Lyads/tw4;

    .line 2315
    iget v2, p0, Lyads/uw4;->d:I

    .line 2316
    iget-object v3, p0, Lyads/uw4;->e:Ljava/lang/Object;

    .line 2317
    invoke-interface {v1, v2, v3}, Lyads/tw4;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2318
    invoke-virtual {p0, v0}, Lyads/uw4;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lyads/uw4;->a(Z)V

    .line 2319
    throw v1
.end method

.method public static b(Lyads/gs;)Z
    .locals 0

    .line 91
    iget p0, p0, Lyads/gs;->g:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(J)J
    .locals 7

    .line 2648
    iget-object v0, p0, Lyads/mq2;->s:Lyads/d14;

    .line 2649
    iget-object v0, v0, Lyads/d14;->j:Lyads/a14;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2650
    :cond_0
    iget-wide v3, p0, Lyads/mq2;->L:J

    .line 2651
    iget-wide v5, v0, Lyads/a14;->o:J

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    .line 2652
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a(Lyads/h14;JZZ)J
    .locals 16

    move-object/from16 v0, p0

    .line 2179
    invoke-virtual {v0}, Lyads/mq2;->m()V

    const/4 v15, 0x0

    .line 2180
    iput-boolean v15, v0, Lyads/mq2;->C:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    .line 2181
    iget-object v2, v0, Lyads/mq2;->x:Lyads/bw4;

    iget v2, v2, Lyads/bw4;->e:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2182
    :cond_0
    invoke-virtual {v0, v1}, Lyads/mq2;->b(I)V

    .line 2183
    :cond_1
    iget-object v2, v0, Lyads/mq2;->s:Lyads/d14;

    .line 2184
    iget-object v2, v2, Lyads/d14;->h:Lyads/a14;

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 2185
    iget-object v4, v3, Lyads/a14;->f:Lyads/c14;

    iget-object v4, v4, Lyads/c14;->a:Lyads/h14;

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lyads/b14;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 2186
    :cond_2
    iget-object v3, v3, Lyads/a14;->l:Lyads/a14;

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    if-ne v2, v3, :cond_4

    if-eqz v3, :cond_7

    .line 2187
    iget-wide v4, v3, Lyads/a14;->o:J

    add-long v4, p2, v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_7

    .line 2188
    :cond_4
    iget-object v2, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v4, v2

    move v5, v15

    :goto_2
    if-ge v5, v4, :cond_5

    aget-object v6, v2, v5

    .line 2189
    invoke-virtual {v0, v6}, Lyads/mq2;->a(Lyads/gs;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_7

    .line 2190
    :goto_3
    iget-object v2, v0, Lyads/mq2;->s:Lyads/d14;

    .line 2191
    iget-object v4, v2, Lyads/d14;->h:Lyads/a14;

    if-eq v4, v3, :cond_6

    .line 2192
    invoke-virtual {v2}, Lyads/d14;->a()Lyads/a14;

    goto :goto_3

    .line 2193
    :cond_6
    invoke-virtual {v2, v3}, Lyads/d14;->a(Lyads/a14;)Z

    const-wide v4, 0xe8d4a51000L

    .line 2194
    iput-wide v4, v3, Lyads/a14;->o:J

    .line 2195
    iget-object v2, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v2, v2

    new-array v2, v2, [Z

    invoke-virtual {v0, v2}, Lyads/mq2;->a([Z)V

    .line 2196
    :cond_7
    iget-object v2, v0, Lyads/mq2;->s:Lyads/d14;

    if-eqz v3, :cond_b

    .line 2197
    invoke-virtual {v2, v3}, Lyads/d14;->a(Lyads/a14;)Z

    .line 2198
    iget-boolean v2, v3, Lyads/a14;->d:Z

    if-nez v2, :cond_9

    .line 2199
    iget-object v2, v3, Lyads/a14;->f:Lyads/c14;

    .line 2200
    iget-wide v4, v2, Lyads/c14;->b:J

    cmp-long v4, p2, v4

    if-nez v4, :cond_8

    move-object v15, v3

    move-wide/from16 v3, p2

    goto :goto_4

    :cond_8
    move v4, v1

    .line 2201
    new-instance v1, Lyads/c14;

    iget-object v5, v2, Lyads/c14;->a:Lyads/h14;

    move-object v7, v5

    iget-wide v5, v2, Lyads/c14;->c:J

    move-object v9, v7

    iget-wide v7, v2, Lyads/c14;->d:J

    move-object v11, v9

    iget-wide v9, v2, Lyads/c14;->e:J

    move-object v12, v11

    iget-boolean v11, v2, Lyads/c14;->f:Z

    move-object v13, v12

    iget-boolean v12, v2, Lyads/c14;->g:Z

    move-object v14, v13

    iget-boolean v13, v2, Lyads/c14;->h:Z

    iget-boolean v2, v2, Lyads/c14;->i:Z

    move-object v4, v14

    move v14, v2

    move-object v2, v4

    move-object v15, v3

    move-wide/from16 v3, p2

    invoke-direct/range {v1 .. v14}, Lyads/c14;-><init>(Lyads/h14;JJJJZZZZ)V

    move-object v2, v1

    .line 2202
    :goto_4
    iput-object v2, v15, Lyads/a14;->f:Lyads/c14;

    goto :goto_5

    :cond_9
    move-object v15, v3

    move-wide/from16 v3, p2

    .line 2203
    iget-boolean v1, v15, Lyads/a14;->e:Z

    if-eqz v1, :cond_a

    .line 2204
    iget-object v1, v15, Lyads/a14;->a:Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lyads/z04;->seekToUs(J)J

    move-result-wide v1

    .line 2205
    iget-object v3, v15, Lyads/a14;->a:Ljava/lang/Object;

    iget-wide v4, v0, Lyads/mq2;->n:J

    sub-long v4, v1, v4

    invoke-interface {v3, v4, v5}, Lyads/z04;->a(J)V

    goto :goto_6

    :cond_a
    :goto_5
    move-wide v1, v3

    .line 2206
    :goto_6
    invoke-virtual {v0, v1, v2}, Lyads/mq2;->b(J)V

    .line 2207
    invoke-virtual {v0}, Lyads/mq2;->d()V

    :goto_7
    const/4 v3, 0x0

    goto :goto_8

    :cond_b
    move-wide/from16 v3, p2

    .line 2208
    invoke-virtual {v2}, Lyads/d14;->b()V

    .line 2209
    invoke-virtual {v0, v3, v4}, Lyads/mq2;->b(J)V

    move-wide v1, v3

    goto :goto_7

    .line 2210
    :goto_8
    invoke-virtual {v0, v3}, Lyads/mq2;->a(Z)V

    .line 2211
    iget-object v0, v0, Lyads/mq2;->i:Lyads/gu5;

    .line 2212
    iget-object v0, v0, Lyads/gu5;->a:Landroid/os/Handler;

    const/4 v4, 0x2

    .line 2213
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide v1
.end method

.method public final a(Lyads/kx5;Ljava/lang/Object;J)J
    .locals 4

    .line 2121
    iget-object v0, p0, Lyads/mq2;->m:Lyads/hx5;

    invoke-virtual {p1, p2, v0}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object p2

    iget p2, p2, Lyads/hx5;->d:I

    .line 2122
    iget-object v0, p0, Lyads/mq2;->l:Lyads/jx5;

    const-wide/16 v1, 0x0

    .line 2123
    invoke-virtual {p1, p2, v0, v1, v2}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    .line 2124
    iget-object p1, p0, Lyads/mq2;->l:Lyads/jx5;

    iget-wide v0, p1, Lyads/jx5;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lyads/jx5;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lyads/mq2;->l:Lyads/jx5;

    iget-boolean p2, p1, Lyads/jx5;->j:Z

    if-nez p2, :cond_0

    goto :goto_1

    .line 2125
    :cond_0
    iget-wide p1, p1, Lyads/jx5;->h:J

    .line 2126
    sget v0, Lyads/u56;->a:I

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 2127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    goto :goto_0

    .line 2128
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 2129
    :goto_0
    iget-object v0, p0, Lyads/mq2;->l:Lyads/jx5;

    iget-wide v0, v0, Lyads/jx5;->g:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lyads/u56;->a(J)J

    move-result-wide p1

    iget-object p0, p0, Lyads/mq2;->m:Lyads/hx5;

    .line 2130
    iget-wide v0, p0, Lyads/hx5;->f:J

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_2
    :goto_1
    return-wide v2
.end method

.method public final a(Lyads/kx5;)Landroid/util/Pair;
    .locals 9

    .line 2297
    invoke-virtual {p1}, Lyads/kx5;->c()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2298
    sget-object p0, Lyads/bw4;->s:Lyads/h14;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 2299
    :cond_0
    iget-boolean v0, p0, Lyads/mq2;->F:Z

    invoke-virtual {p1, v0}, Lyads/kx5;->a(Z)I

    move-result v6

    .line 2300
    iget-object v4, p0, Lyads/mq2;->l:Lyads/jx5;

    iget-object v5, p0, Lyads/mq2;->m:Lyads/hx5;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    .line 2301
    invoke-virtual/range {v3 .. v8}, Lyads/kx5;->a(Lyads/jx5;Lyads/hx5;IJ)Landroid/util/Pair;

    move-result-object p1

    .line 2302
    iget-object v0, p0, Lyads/mq2;->s:Lyads/d14;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2303
    invoke-virtual {v0, v3, v4, v1, v2}, Lyads/d14;->a(Lyads/kx5;Ljava/lang/Object;J)Lyads/h14;

    move-result-object v0

    .line 2304
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2305
    invoke-virtual {v0}, Lyads/b14;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2306
    iget-object p1, v0, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v4, p0, Lyads/mq2;->m:Lyads/hx5;

    invoke-virtual {v3, p1, v4}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    .line 2307
    iget p1, v0, Lyads/b14;->c:I

    iget-object v3, p0, Lyads/mq2;->m:Lyads/hx5;

    iget v4, v0, Lyads/b14;->b:I

    invoke-virtual {v3, v4}, Lyads/hx5;->a(I)I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 2308
    iget-object p0, p0, Lyads/mq2;->m:Lyads/hx5;

    .line 2309
    iget-object p0, p0, Lyads/hx5;->h:Lyads/a6;

    .line 2310
    iget-wide v1, p0, Lyads/a6;->c:J

    goto :goto_0

    :cond_1
    move-wide v1, v4

    .line 2311
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/h14;JJJZI)Lyads/bw4;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p9

    .line 2525
    iget-boolean v3, v0, Lyads/mq2;->N:Z

    const/4 v5, 0x0

    if-nez v3, :cond_1

    iget-object v3, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v6, v3, Lyads/bw4;->r:J

    cmp-long v3, p2, v6

    if-nez v3, :cond_1

    iget-object v3, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v3, v3, Lyads/bw4;->b:Lyads/h14;

    .line 2526
    invoke-virtual {v1, v3}, Lyads/b14;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v0, Lyads/mq2;->N:Z

    .line 2527
    invoke-virtual {v0}, Lyads/mq2;->k()V

    .line 2528
    iget-object v3, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v6, v3, Lyads/bw4;->h:Lyads/g06;

    .line 2529
    iget-object v7, v3, Lyads/bw4;->i:Lyads/q06;

    .line 2530
    iget-object v8, v3, Lyads/bw4;->j:Ljava/util/List;

    .line 2531
    iget-object v9, v0, Lyads/mq2;->t:Lyads/q14;

    .line 2532
    iget-boolean v9, v9, Lyads/q14;->k:Z

    if-eqz v9, :cond_a

    .line 2533
    iget-object v3, v0, Lyads/mq2;->s:Lyads/d14;

    .line 2534
    iget-object v3, v3, Lyads/d14;->h:Lyads/a14;

    if-nez v3, :cond_2

    .line 2535
    sget-object v6, Lyads/g06;->e:Lyads/g06;

    goto :goto_2

    .line 2536
    :cond_2
    iget-object v6, v3, Lyads/a14;->m:Lyads/g06;

    :goto_2
    if-nez v3, :cond_3

    .line 2537
    iget-object v7, v0, Lyads/mq2;->f:Lyads/q06;

    goto :goto_3

    .line 2538
    :cond_3
    iget-object v7, v3, Lyads/a14;->n:Lyads/q06;

    .line 2539
    :goto_3
    iget-object v8, v7, Lyads/q06;->c:[Lyads/er2;

    .line 2540
    new-instance v9, Lyads/ke3;

    invoke-direct {v9}, Lyads/ke3;-><init>()V

    .line 2541
    array-length v10, v8

    move v11, v5

    move v12, v11

    :goto_4
    if-ge v11, v10, :cond_6

    aget-object v13, v8, v11

    if-eqz v13, :cond_5

    .line 2542
    invoke-interface {v13, v5}, Lyads/er2;->a(I)Lyads/vz2;

    move-result-object v13

    .line 2543
    iget-object v13, v13, Lyads/vz2;->k:Lyads/h84;

    if-nez v13, :cond_4

    .line 2544
    new-instance v13, Lyads/h84;

    new-array v14, v5, [Lyads/g84;

    invoke-direct {v13, v14}, Lyads/h84;-><init>([Lyads/g84;)V

    invoke-virtual {v9, v13}, Lyads/ke3;->a(Ljava/lang/Object;)Lyads/ke3;

    goto :goto_5

    .line 2545
    :cond_4
    invoke-virtual {v9, v13}, Lyads/ke3;->a(Ljava/lang/Object;)Lyads/ke3;

    const/4 v12, 0x1

    :cond_5
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    if-eqz v12, :cond_7

    .line 2546
    invoke-virtual {v9}, Lyads/ke3;->a()Lyads/k55;

    move-result-object v5

    :goto_6
    move-object v8, v5

    goto :goto_7

    :cond_7
    sget-object v5, Lyads/oe3;->c:Lyads/le3;

    .line 2547
    sget-object v5, Lyads/k55;->f:Lyads/k55;

    goto :goto_6

    :goto_7
    if-eqz v3, :cond_9

    .line 2548
    iget-object v5, v3, Lyads/a14;->f:Lyads/c14;

    iget-wide v9, v5, Lyads/c14;->c:J

    cmp-long v11, v9, p4

    if-eqz v11, :cond_9

    cmp-long v9, p4, v9

    if-nez v9, :cond_8

    move-object v9, v6

    move-object/from16 v24, v7

    goto :goto_8

    .line 2549
    :cond_8
    new-instance v10, Lyads/c14;

    iget-object v11, v5, Lyads/c14;->a:Lyads/h14;

    iget-wide v12, v5, Lyads/c14;->b:J

    iget-wide v14, v5, Lyads/c14;->d:J

    move-object v9, v6

    move-object/from16 v24, v7

    iget-wide v6, v5, Lyads/c14;->e:J

    iget-boolean v4, v5, Lyads/c14;->f:Z

    move/from16 v20, v4

    iget-boolean v4, v5, Lyads/c14;->g:Z

    move/from16 v21, v4

    iget-boolean v4, v5, Lyads/c14;->h:Z

    iget-boolean v5, v5, Lyads/c14;->i:Z

    move/from16 v22, v4

    move/from16 v23, v5

    move-wide/from16 v18, v6

    move-wide/from16 v16, v14

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v23}, Lyads/c14;-><init>(Lyads/h14;JJJJZZZZ)V

    move-object v5, v10

    .line 2550
    :goto_8
    iput-object v5, v3, Lyads/a14;->f:Lyads/c14;

    goto :goto_9

    :cond_9
    move-object v9, v6

    move-object/from16 v24, v7

    :goto_9
    move-object v12, v8

    move-object v10, v9

    move-object/from16 v11, v24

    goto :goto_a

    .line 2551
    :cond_a
    iget-object v3, v3, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v1, v3}, Lyads/b14;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 2552
    sget-object v6, Lyads/g06;->e:Lyads/g06;

    .line 2553
    iget-object v7, v0, Lyads/mq2;->f:Lyads/q06;

    .line 2554
    sget-object v8, Lyads/k55;->f:Lyads/k55;

    :cond_b
    move-object v10, v6

    move-object v11, v7

    move-object v12, v8

    :goto_a
    if-eqz p8, :cond_e

    .line 2555
    iget-object v3, v0, Lyads/mq2;->y:Lyads/iq2;

    .line 2556
    iget-boolean v4, v3, Lyads/iq2;->d:Z

    if-eqz v4, :cond_d

    .line 2557
    iget v4, v3, Lyads/iq2;->e:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_d

    if-ne v2, v5, :cond_c

    goto :goto_b

    .line 2558
    :cond_c
    invoke-static {}, Lmi2;->b()V

    const/4 v0, 0x0

    return-object v0

    :cond_d
    const/4 v4, 0x1

    .line 2559
    iput-boolean v4, v3, Lyads/iq2;->a:Z

    .line 2560
    iput-boolean v4, v3, Lyads/iq2;->d:Z

    .line 2561
    iput v2, v3, Lyads/iq2;->e:I

    .line 2562
    :cond_e
    :goto_b
    iget-object v2, v0, Lyads/mq2;->x:Lyads/bw4;

    .line 2563
    iget-wide v3, v2, Lyads/bw4;->p:J

    invoke-virtual {v0, v3, v4}, Lyads/mq2;->a(J)J

    move-result-wide v8

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object v0, v2

    move-wide/from16 v2, p2

    .line 2564
    invoke-virtual/range {v0 .. v12}, Lyads/bw4;->a(Lyads/h14;JJJJLyads/g06;Lyads/q06;Ljava/util/List;)Lyads/bw4;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 58

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/mq2;->q:Lyads/du5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-object v1, v0, Lyads/mq2;->i:Lyads/gu5;

    iget-object v1, v1, Lyads/gu5;->a:Landroid/os/Handler;

    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v1, v1, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v1}, Lyads/kx5;->c()Z

    move-result v1

    const/4 v13, 0x0

    const-wide/high16 v16, -0x8000000000000000L

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_0

    iget-object v1, v0, Lyads/mq2;->t:Lyads/q14;

    iget-boolean v1, v1, Lyads/q14;->k:Z

    if-nez v1, :cond_1

    :cond_0
    move-wide/from16 v32, v10

    const/4 v13, 0x0

    const/16 v29, 0x1

    const-wide/16 v30, 0x0

    move-wide v10, v7

    goto/16 :goto_1f

    :cond_1
    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    iget-wide v3, v0, Lyads/mq2;->L:J

    iget-object v1, v1, Lyads/d14;->j:Lyads/a14;

    if-eqz v1, :cond_2

    iget-object v5, v1, Lyads/a14;->l:Lyads/a14;

    if-nez v5, :cond_3

    iget-boolean v5, v1, Lyads/a14;->d:Z

    if-eqz v5, :cond_2

    iget-object v5, v1, Lyads/a14;->a:Ljava/lang/Object;

    move-wide/from16 v18, v3

    const/4 v6, 0x1

    iget-wide v2, v1, Lyads/a14;->o:J

    sub-long v3, v18, v2

    invoke-interface {v5, v3, v4}, Lyads/ui5;->reevaluateBuffer(J)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lud;->g()V

    return-void

    :goto_0
    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v2, v1, Lyads/d14;->j:Lyads/a14;

    if-eqz v2, :cond_6

    iget-object v3, v2, Lyads/a14;->f:Lyads/c14;

    iget-boolean v3, v3, Lyads/c14;->i:Z

    if-nez v3, :cond_4

    iget-boolean v3, v2, Lyads/a14;->d:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v2, Lyads/a14;->e:Z

    if-eqz v3, :cond_5

    iget-object v2, v2, Lyads/a14;->a:Ljava/lang/Object;

    invoke-interface {v2}, Lyads/ui5;->getBufferedPositionUs()J

    move-result-wide v2

    cmp-long v2, v2, v16

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move/from16 v29, v6

    move-wide/from16 v27, v7

    move-wide/from16 v32, v10

    const/4 v8, 0x0

    const-wide/16 v30, 0x0

    goto/16 :goto_6

    :cond_5
    :goto_1
    iget-object v2, v1, Lyads/d14;->j:Lyads/a14;

    iget-object v2, v2, Lyads/a14;->f:Lyads/c14;

    iget-wide v2, v2, Lyads/c14;->e:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_4

    iget v1, v1, Lyads/d14;->k:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_4

    :cond_6
    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    iget-wide v2, v0, Lyads/mq2;->L:J

    iget-object v4, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v5, v1, Lyads/d14;->j:Lyads/a14;

    if-nez v5, :cond_8

    iget-object v2, v4, Lyads/bw4;->a:Lyads/kx5;

    iget-object v3, v4, Lyads/bw4;->b:Lyads/h14;

    move-wide/from16 v27, v7

    move v8, v6

    iget-wide v6, v4, Lyads/bw4;->c:J

    iget-wide v4, v4, Lyads/bw4;->r:J

    move/from16 v29, v8

    iget-object v8, v3, Lyads/b14;->a:Ljava/lang/Object;

    const-wide/16 v30, 0x0

    iget-object v14, v1, Lyads/d14;->a:Lyads/hx5;

    invoke-virtual {v2, v8, v14}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    invoke-virtual {v3}, Lyads/b14;->a()Z

    move-result v8

    iget-object v14, v3, Lyads/b14;->a:Ljava/lang/Object;

    if-eqz v8, :cond_7

    iget v4, v3, Lyads/b14;->b:I

    iget v5, v3, Lyads/b14;->c:I

    move-wide/from16 v32, v10

    iget-wide v9, v3, Lyads/b14;->d:J

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v21, v4

    move/from16 v22, v5

    move-wide/from16 v23, v6

    move-wide/from16 v25, v9

    move-object/from16 v20, v14

    invoke-virtual/range {v18 .. v26}, Lyads/d14;->a(Lyads/kx5;Ljava/lang/Object;IIJJ)Lyads/c14;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-wide/from16 v23, v6

    move-wide/from16 v32, v10

    move-object/from16 v20, v14

    iget-wide v1, v3, Lyads/b14;->d:J

    move-wide/from16 v25, v1

    move-wide/from16 v21, v4

    invoke-virtual/range {v18 .. v26}, Lyads/d14;->a(Lyads/kx5;Ljava/lang/Object;JJJ)Lyads/c14;

    move-result-object v1

    goto :goto_2

    :cond_8
    move/from16 v29, v6

    move-wide/from16 v27, v7

    move-wide/from16 v32, v10

    const-wide/16 v30, 0x0

    iget-object v4, v4, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v1, v4, v5, v2, v3}, Lyads/d14;->a(Lyads/kx5;Lyads/a14;J)Lyads/c14;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_d

    iget-object v2, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v3, v0, Lyads/mq2;->d:[Lyads/gs;

    iget-object v4, v0, Lyads/mq2;->e:Lyads/p06;

    iget-object v5, v0, Lyads/mq2;->g:Lyads/kl0;

    iget-object v5, v5, Lyads/kl0;->a:Lyads/aj0;

    iget-object v6, v0, Lyads/mq2;->t:Lyads/q14;

    iget-object v7, v0, Lyads/mq2;->f:Lyads/q06;

    iget-object v9, v2, Lyads/d14;->j:Lyads/a14;

    if-nez v9, :cond_9

    const-wide v9, 0xe8d4a51000L

    :goto_3
    move-wide/from16 v20, v9

    goto :goto_4

    :cond_9
    iget-wide v10, v9, Lyads/a14;->o:J

    iget-object v9, v9, Lyads/a14;->f:Lyads/c14;

    iget-wide v14, v9, Lyads/c14;->e:J

    add-long/2addr v10, v14

    iget-wide v14, v1, Lyads/c14;->b:J

    sub-long v9, v10, v14

    goto :goto_3

    :goto_4
    new-instance v18, Lyads/a14;

    move-object/from16 v25, v1

    move-object/from16 v19, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v26, v7

    invoke-direct/range {v18 .. v26}, Lyads/a14;-><init>([Lyads/gs;JLyads/p06;Lyads/aj0;Lyads/q14;Lyads/c14;Lyads/q06;)V

    move-object/from16 v3, v18

    iget-object v4, v2, Lyads/d14;->j:Lyads/a14;

    if-eqz v4, :cond_b

    iget-object v5, v4, Lyads/a14;->l:Lyads/a14;

    if-ne v3, v5, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v4}, Lyads/a14;->a()V

    iput-object v3, v4, Lyads/a14;->l:Lyads/a14;

    goto :goto_5

    :cond_b
    iput-object v3, v2, Lyads/d14;->h:Lyads/a14;

    iput-object v3, v2, Lyads/d14;->i:Lyads/a14;

    :goto_5
    iput-object v13, v2, Lyads/d14;->l:Ljava/lang/Object;

    iput-object v3, v2, Lyads/d14;->j:Lyads/a14;

    iget v4, v2, Lyads/d14;->k:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lyads/d14;->k:I

    invoke-virtual {v2}, Lyads/d14;->c()V

    iget-object v2, v3, Lyads/a14;->a:Ljava/lang/Object;

    iget-wide v4, v1, Lyads/c14;->b:J

    invoke-interface {v2, v0, v4, v5}, Lyads/z04;->a(Lyads/y04;J)V

    iget-object v2, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v2, v2, Lyads/d14;->h:Lyads/a14;

    if-ne v2, v3, :cond_c

    iget-wide v1, v1, Lyads/c14;->b:J

    invoke-virtual {v0, v1, v2}, Lyads/mq2;->b(J)V

    :cond_c
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lyads/mq2;->a(Z)V

    goto :goto_6

    :cond_d
    const/4 v8, 0x0

    :goto_6
    iget-boolean v1, v0, Lyads/mq2;->D:Z

    if-eqz v1, :cond_11

    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v1, v1, Lyads/d14;->j:Lyads/a14;

    if-nez v1, :cond_e

    goto :goto_8

    :cond_e
    iget-boolean v2, v1, Lyads/a14;->d:Z

    if-nez v2, :cond_f

    move-wide/from16 v1, v30

    goto :goto_7

    :cond_f
    iget-object v1, v1, Lyads/a14;->a:Ljava/lang/Object;

    invoke-interface {v1}, Lyads/ui5;->getNextLoadPositionUs()J

    move-result-wide v1

    :goto_7
    cmp-long v1, v1, v16

    if-nez v1, :cond_10

    :goto_8
    move v1, v8

    goto :goto_9

    :cond_10
    move/from16 v1, v29

    :goto_9
    iput-boolean v1, v0, Lyads/mq2;->D:Z

    invoke-virtual {v0}, Lyads/mq2;->n()V

    goto :goto_a

    :cond_11
    invoke-virtual {v0}, Lyads/mq2;->d()V

    :goto_a
    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v1, v1, Lyads/d14;->i:Lyads/a14;

    if-nez v1, :cond_13

    :cond_12
    :goto_b
    move/from16 v11, v29

    goto/16 :goto_13

    :cond_13
    iget-object v2, v1, Lyads/a14;->l:Lyads/a14;

    if-eqz v2, :cond_14

    iget-boolean v2, v0, Lyads/mq2;->B:Z

    if-eqz v2, :cond_15

    :cond_14
    move/from16 v11, v29

    goto/16 :goto_10

    :cond_15
    iget-boolean v2, v1, Lyads/a14;->d:Z

    if-nez v2, :cond_16

    goto :goto_b

    :cond_16
    move v2, v8

    :goto_c
    iget-object v3, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v4, v3

    if-ge v2, v4, :cond_18

    aget-object v3, v3, v2

    iget-object v4, v1, Lyads/a14;->c:[Lyads/mc5;

    aget-object v4, v4, v2

    iget-object v5, v3, Lyads/gs;->h:Lyads/mc5;

    if-ne v5, v4, :cond_12

    if-eqz v4, :cond_17

    invoke-virtual {v3}, Lyads/gs;->d()Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, v1, Lyads/a14;->l:Lyads/a14;

    iget-object v5, v1, Lyads/a14;->f:Lyads/c14;

    iget-boolean v5, v5, Lyads/c14;->f:Z

    if-eqz v5, :cond_12

    iget-boolean v5, v4, Lyads/a14;->d:Z

    if-eqz v5, :cond_12

    instance-of v5, v3, Lyads/hw5;

    if-nez v5, :cond_17

    instance-of v5, v3, Lyads/k84;

    if-nez v5, :cond_17

    iget-wide v5, v3, Lyads/gs;->k:J

    iget-object v3, v4, Lyads/a14;->f:Lyads/c14;

    iget-wide v9, v3, Lyads/c14;->b:J

    iget-wide v3, v4, Lyads/a14;->o:J

    add-long/2addr v9, v3

    cmp-long v3, v5, v9

    if-ltz v3, :cond_12

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_18
    iget-object v2, v1, Lyads/a14;->l:Lyads/a14;

    iget-boolean v3, v2, Lyads/a14;->d:Z

    if-nez v3, :cond_19

    iget-wide v3, v0, Lyads/mq2;->L:J

    iget-object v5, v2, Lyads/a14;->f:Lyads/c14;

    iget-wide v5, v5, Lyads/c14;->b:J

    iget-wide v9, v2, Lyads/a14;->o:J

    add-long/2addr v5, v9

    cmp-long v2, v3, v5

    if-gez v2, :cond_19

    goto :goto_b

    :cond_19
    iget-object v7, v1, Lyads/a14;->n:Lyads/q06;

    iget-object v2, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v3, v2, Lyads/d14;->i:Lyads/a14;

    if-eqz v3, :cond_1f

    iget-object v3, v3, Lyads/a14;->l:Lyads/a14;

    if-eqz v3, :cond_1f

    iput-object v3, v2, Lyads/d14;->i:Lyads/a14;

    invoke-virtual {v2}, Lyads/d14;->c()V

    iget-object v9, v2, Lyads/d14;->i:Lyads/a14;

    iget-object v10, v9, Lyads/a14;->n:Lyads/q06;

    iget-object v2, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v2, v2, Lyads/bw4;->a:Lyads/kx5;

    iget-object v3, v9, Lyads/a14;->f:Lyads/c14;

    iget-object v3, v3, Lyads/c14;->a:Lyads/h14;

    iget-object v1, v1, Lyads/a14;->f:Lyads/c14;

    iget-object v4, v1, Lyads/c14;->a:Lyads/h14;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v2

    move-object v2, v3

    move-object v3, v1

    move/from16 v11, v29

    invoke-virtual/range {v0 .. v6}, Lyads/mq2;->a(Lyads/kx5;Lyads/h14;Lyads/kx5;Lyads/h14;J)V

    iget-boolean v1, v9, Lyads/a14;->d:Z

    if-eqz v1, :cond_1b

    iget-object v1, v9, Lyads/a14;->a:Ljava/lang/Object;

    invoke-interface {v1}, Lyads/z04;->readDiscontinuity()J

    move-result-wide v1

    cmp-long v1, v1, v27

    if-eqz v1, :cond_1b

    iget-object v1, v9, Lyads/a14;->f:Lyads/c14;

    iget-wide v1, v1, Lyads/c14;->b:J

    iget-wide v3, v9, Lyads/a14;->o:J

    add-long/2addr v1, v3

    iget-object v3, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v4, v3

    move v5, v8

    :goto_d
    if-ge v5, v4, :cond_23

    aget-object v6, v3, v5

    iget-object v7, v6, Lyads/gs;->h:Lyads/mc5;

    if-eqz v7, :cond_1a

    invoke-static {v6, v1, v2}, Lyads/mq2;->a(Lyads/gs;J)V

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1b
    move v1, v8

    :goto_e
    iget-object v2, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v2, v2

    if-ge v1, v2, :cond_23

    invoke-virtual {v7, v1}, Lyads/q06;->a(I)Z

    move-result v2

    invoke-virtual {v10, v1}, Lyads/q06;->a(I)Z

    move-result v3

    if-eqz v2, :cond_1e

    iget-object v2, v0, Lyads/mq2;->b:[Lyads/gs;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lyads/gs;->l:Z

    if-nez v2, :cond_1e

    iget-object v2, v0, Lyads/mq2;->d:[Lyads/gs;

    aget-object v2, v2, v1

    iget v2, v2, Lyads/gs;->b:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_1c

    move v2, v11

    goto :goto_f

    :cond_1c
    move v2, v8

    :goto_f
    iget-object v4, v7, Lyads/q06;->b:[Lyads/n65;

    aget-object v4, v4, v1

    iget-object v5, v10, Lyads/q06;->b:[Lyads/n65;

    aget-object v5, v5, v1

    if-eqz v3, :cond_1d

    invoke-virtual {v5, v4}, Lyads/n65;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    if-eqz v2, :cond_1e

    :cond_1d
    iget-object v2, v0, Lyads/mq2;->b:[Lyads/gs;

    aget-object v2, v2, v1

    iget-object v3, v9, Lyads/a14;->f:Lyads/c14;

    iget-wide v3, v3, Lyads/c14;->b:J

    iget-wide v5, v9, Lyads/a14;->o:J

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lyads/mq2;->a(Lyads/gs;J)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1f
    invoke-static {}, Lud;->g()V

    return-void

    :goto_10
    iget-object v2, v1, Lyads/a14;->f:Lyads/c14;

    iget-boolean v2, v2, Lyads/c14;->i:Z

    if-nez v2, :cond_20

    iget-boolean v2, v0, Lyads/mq2;->B:Z

    if-eqz v2, :cond_23

    :cond_20
    move v2, v8

    :goto_11
    iget-object v3, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v4, v3

    if-ge v2, v4, :cond_23

    aget-object v3, v3, v2

    iget-object v4, v1, Lyads/a14;->c:[Lyads/mc5;

    aget-object v4, v4, v2

    if-eqz v4, :cond_22

    iget-object v5, v3, Lyads/gs;->h:Lyads/mc5;

    if-ne v5, v4, :cond_22

    invoke-virtual {v3}, Lyads/gs;->d()Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v4, v1, Lyads/a14;->f:Lyads/c14;

    iget-wide v4, v4, Lyads/c14;->e:J

    cmp-long v6, v4, v27

    if-eqz v6, :cond_21

    cmp-long v6, v4, v16

    if-eqz v6, :cond_21

    iget-wide v6, v1, Lyads/a14;->o:J

    add-long/2addr v6, v4

    goto :goto_12

    :cond_21
    move-wide/from16 v6, v27

    :goto_12
    invoke-static {v3, v6, v7}, Lyads/mq2;->a(Lyads/gs;J)V

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_23
    :goto_13
    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v2, v1, Lyads/d14;->i:Lyads/a14;

    if-eqz v2, :cond_24

    iget-object v1, v1, Lyads/d14;->h:Lyads/a14;

    if-eq v1, v2, :cond_24

    iget-boolean v1, v2, Lyads/a14;->g:Z

    if-eqz v1, :cond_25

    :cond_24
    move/from16 v29, v11

    goto/16 :goto_1a

    :cond_25
    iget-object v1, v2, Lyads/a14;->n:Lyads/q06;

    move v3, v8

    move v4, v3

    :goto_14
    iget-object v5, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v6, v5

    if-ge v4, v6, :cond_2f

    aget-object v5, v5, v4

    invoke-static {v5}, Lyads/mq2;->b(Lyads/gs;)Z

    move-result v6

    if-nez v6, :cond_26

    :goto_15
    move/from16 v29, v11

    goto/16 :goto_19

    :cond_26
    iget-object v6, v5, Lyads/gs;->h:Lyads/mc5;

    iget-object v7, v2, Lyads/a14;->c:[Lyads/mc5;

    aget-object v7, v7, v4

    if-eq v6, v7, :cond_27

    move v6, v11

    goto :goto_16

    :cond_27
    move v6, v8

    :goto_16
    invoke-virtual {v1, v4}, Lyads/q06;->a(I)Z

    move-result v7

    if-eqz v7, :cond_28

    if-nez v6, :cond_28

    goto :goto_15

    :cond_28
    iget-boolean v6, v5, Lyads/gs;->l:Z

    if-nez v6, :cond_2d

    iget-object v6, v1, Lyads/q06;->c:[Lyads/er2;

    aget-object v6, v6, v4

    if-eqz v6, :cond_29

    invoke-interface {v6}, Lyads/er2;->length()I

    move-result v7

    goto :goto_17

    :cond_29
    move v7, v8

    :goto_17
    new-array v9, v7, [Lyads/vz2;

    move v10, v8

    :goto_18
    if-ge v10, v7, :cond_2a

    invoke-interface {v6, v10}, Lyads/er2;->a(I)Lyads/vz2;

    move-result-object v14

    aput-object v14, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_2a
    iget-object v6, v2, Lyads/a14;->c:[Lyads/mc5;

    aget-object v6, v6, v4

    iget-object v7, v2, Lyads/a14;->f:Lyads/c14;

    iget-wide v14, v7, Lyads/c14;->b:J

    move-wide/from16 v18, v14

    iget-wide v13, v2, Lyads/a14;->o:J

    move/from16 v29, v11

    add-long v10, v18, v13

    iget-boolean v7, v5, Lyads/gs;->l:Z

    if-nez v7, :cond_2c

    iput-object v6, v5, Lyads/gs;->h:Lyads/mc5;

    iget-wide v6, v5, Lyads/gs;->k:J

    cmp-long v6, v6, v16

    if-nez v6, :cond_2b

    iput-wide v10, v5, Lyads/gs;->k:J

    :cond_2b
    iput-object v9, v5, Lyads/gs;->i:[Lyads/vz2;

    iput-wide v13, v5, Lyads/gs;->j:J

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    move-wide/from16 v22, v13

    invoke-virtual/range {v18 .. v23}, Lyads/gs;->a([Lyads/vz2;JJ)V

    goto :goto_19

    :cond_2c
    invoke-static {}, Lud;->g()V

    return-void

    :cond_2d
    move/from16 v29, v11

    invoke-virtual {v5}, Lyads/gs;->e()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-virtual {v0, v5}, Lyads/mq2;->a(Lyads/gs;)V

    goto :goto_19

    :cond_2e
    move/from16 v3, v29

    :goto_19
    add-int/lit8 v4, v4, 0x1

    move/from16 v11, v29

    const/4 v13, 0x0

    goto/16 :goto_14

    :cond_2f
    move/from16 v29, v11

    if-nez v3, :cond_30

    array-length v1, v5

    new-array v1, v1, [Z

    invoke-virtual {v0, v1}, Lyads/mq2;->a([Z)V

    :cond_30
    :goto_1a
    move v2, v8

    :goto_1b
    invoke-virtual {v0}, Lyads/mq2;->l()Z

    move-result v1

    if-nez v1, :cond_32

    :cond_31
    :goto_1c
    move v13, v8

    move-wide/from16 v10, v27

    goto/16 :goto_1f

    :cond_32
    iget-boolean v1, v0, Lyads/mq2;->B:Z

    if-eqz v1, :cond_33

    goto :goto_1c

    :cond_33
    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v1, v1, Lyads/d14;->h:Lyads/a14;

    if-nez v1, :cond_34

    goto :goto_1c

    :cond_34
    iget-object v1, v1, Lyads/a14;->l:Lyads/a14;

    if-eqz v1, :cond_31

    iget-wide v3, v0, Lyads/mq2;->L:J

    iget-object v5, v1, Lyads/a14;->f:Lyads/c14;

    iget-wide v5, v5, Lyads/c14;->b:J

    iget-wide v9, v1, Lyads/a14;->o:J

    add-long/2addr v5, v9

    cmp-long v3, v3, v5

    if-ltz v3, :cond_31

    iget-boolean v1, v1, Lyads/a14;->g:Z

    if-eqz v1, :cond_31

    if-eqz v2, :cond_36

    iget-object v1, v0, Lyads/mq2;->y:Lyads/iq2;

    iget-object v2, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-boolean v3, v1, Lyads/iq2;->a:Z

    iget-object v4, v1, Lyads/iq2;->b:Lyads/bw4;

    if-eq v4, v2, :cond_35

    move/from16 v4, v29

    goto :goto_1d

    :cond_35
    move v4, v8

    :goto_1d
    or-int/2addr v3, v4

    iput-boolean v3, v1, Lyads/iq2;->a:Z

    iput-object v2, v1, Lyads/iq2;->b:Lyads/bw4;

    if-eqz v3, :cond_36

    iget-object v2, v0, Lyads/mq2;->r:Lyads/jq2;

    check-cast v2, Lx52;

    invoke-virtual {v2, v1}, Lx52;->a(Lyads/iq2;)V

    new-instance v1, Lyads/iq2;

    iget-object v2, v0, Lyads/mq2;->x:Lyads/bw4;

    invoke-direct {v1, v2}, Lyads/iq2;-><init>(Lyads/bw4;)V

    iput-object v1, v0, Lyads/mq2;->y:Lyads/iq2;

    :cond_36
    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    invoke-virtual {v1}, Lyads/d14;->a()Lyads/a14;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v2, v2, Lyads/bw4;->b:Lyads/h14;

    iget-object v2, v2, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v3, v1, Lyads/a14;->f:Lyads/c14;

    iget-object v3, v3, Lyads/c14;->a:Lyads/h14;

    iget-object v3, v3, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v2, v2, Lyads/bw4;->b:Lyads/h14;

    iget v3, v2, Lyads/b14;->b:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_37

    iget-object v3, v1, Lyads/a14;->f:Lyads/c14;

    iget-object v3, v3, Lyads/c14;->a:Lyads/h14;

    iget v5, v3, Lyads/b14;->b:I

    if-ne v5, v4, :cond_37

    iget v2, v2, Lyads/b14;->e:I

    iget v3, v3, Lyads/b14;->e:I

    if-eq v2, v3, :cond_37

    move/from16 v2, v29

    goto :goto_1e

    :cond_37
    move v2, v8

    :goto_1e
    iget-object v1, v1, Lyads/a14;->f:Lyads/c14;

    iget-object v3, v1, Lyads/c14;->a:Lyads/h14;

    move v4, v2

    move-object v5, v3

    iget-wide v2, v1, Lyads/c14;->b:J

    iget-wide v6, v1, Lyads/c14;->c:J

    xor-int/lit8 v1, v4, 0x1

    const/4 v9, 0x0

    move v10, v8

    move v8, v1

    move-object v1, v5

    move-wide v4, v6

    move-wide v6, v2

    move v13, v10

    move-wide/from16 v10, v27

    invoke-virtual/range {v0 .. v9}, Lyads/mq2;->a(Lyads/h14;JJJZI)Lyads/bw4;

    move-result-object v1

    iput-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    invoke-virtual {v0}, Lyads/mq2;->k()V

    invoke-virtual {v0}, Lyads/mq2;->o()V

    move v8, v13

    move/from16 v2, v29

    goto/16 :goto_1b

    :goto_1f
    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget v1, v1, Lyads/bw4;->e:I

    move/from16 v6, v29

    if-eq v1, v6, :cond_70

    const/4 v2, 0x4

    if-ne v1, v2, :cond_38

    goto/16 :goto_43

    :cond_38
    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v1, v1, Lyads/d14;->h:Lyads/a14;

    const-wide/16 v3, 0xa

    if-nez v1, :cond_39

    iget-object v0, v0, Lyads/mq2;->i:Lyads/gu5;

    add-long v10, v32, v3

    iget-object v0, v0, Lyads/gu5;->a:Landroid/os/Handler;

    invoke-virtual {v0, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    :cond_39
    const-string v5, "doSomeWork"

    invoke-static {v5}, Lyads/b06;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lyads/mq2;->o()V

    iget-boolean v5, v1, Lyads/a14;->d:Z

    const-wide/16 v6, 0x3e8

    if-eqz v5, :cond_43

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    mul-long/2addr v8, v6

    iget-object v5, v1, Lyads/a14;->a:Ljava/lang/Object;

    iget-object v14, v0, Lyads/mq2;->x:Lyads/bw4;

    move-wide/from16 v18, v3

    iget-wide v3, v14, Lyads/bw4;->r:J

    move-wide/from16 v20, v6

    iget-wide v6, v0, Lyads/mq2;->n:J

    sub-long/2addr v3, v6

    invoke-interface {v5, v3, v4}, Lyads/z04;->a(J)V

    move v5, v13

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_20
    iget-object v6, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v7, v6

    if-ge v5, v7, :cond_42

    aget-object v6, v6, v5

    invoke-static {v6}, Lyads/mq2;->b(Lyads/gs;)Z

    move-result v7

    if-nez v7, :cond_3a

    move-wide/from16 v27, v10

    goto :goto_27

    :cond_3a
    move-wide/from16 v27, v10

    iget-wide v10, v0, Lyads/mq2;->L:J

    invoke-virtual {v6, v10, v11, v8, v9}, Lyads/gs;->a(JJ)V

    if-eqz v3, :cond_3b

    invoke-virtual {v6}, Lyads/gs;->e()Z

    move-result v3

    if-eqz v3, :cond_3b

    const/4 v3, 0x1

    goto :goto_21

    :cond_3b
    move v3, v13

    :goto_21
    iget-object v7, v1, Lyads/a14;->c:[Lyads/mc5;

    aget-object v7, v7, v5

    iget-object v10, v6, Lyads/gs;->h:Lyads/mc5;

    if-eq v7, v10, :cond_3c

    const/4 v7, 0x1

    goto :goto_22

    :cond_3c
    move v7, v13

    :goto_22
    if-nez v7, :cond_3d

    invoke-virtual {v6}, Lyads/gs;->d()Z

    move-result v10

    if-eqz v10, :cond_3d

    const/4 v10, 0x1

    goto :goto_23

    :cond_3d
    move v10, v13

    :goto_23
    if-nez v7, :cond_3f

    if-nez v10, :cond_3f

    invoke-virtual {v6}, Lyads/gs;->f()Z

    move-result v7

    if-nez v7, :cond_3f

    invoke-virtual {v6}, Lyads/gs;->e()Z

    move-result v7

    if-eqz v7, :cond_3e

    goto :goto_24

    :cond_3e
    move v7, v13

    goto :goto_25

    :cond_3f
    :goto_24
    const/4 v7, 0x1

    :goto_25
    if-eqz v4, :cond_40

    if-eqz v7, :cond_40

    const/4 v4, 0x1

    goto :goto_26

    :cond_40
    move v4, v13

    :goto_26
    if-nez v7, :cond_41

    iget-object v6, v6, Lyads/gs;->h:Lyads/mc5;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6}, Lyads/mc5;->a()V

    :cond_41
    :goto_27
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v10, v27

    goto :goto_20

    :cond_42
    move-wide/from16 v27, v10

    goto :goto_28

    :cond_43
    move-wide/from16 v18, v3

    move-wide/from16 v20, v6

    move-wide/from16 v27, v10

    iget-object v3, v1, Lyads/a14;->a:Ljava/lang/Object;

    invoke-interface {v3}, Lyads/z04;->maybeThrowPrepareError()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_28
    iget-object v5, v1, Lyads/a14;->f:Lyads/c14;

    iget-wide v5, v5, Lyads/c14;->e:J

    if-eqz v3, :cond_45

    iget-boolean v3, v1, Lyads/a14;->d:Z

    if-eqz v3, :cond_45

    cmp-long v3, v5, v27

    if-eqz v3, :cond_44

    iget-object v3, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v7, v3, Lyads/bw4;->r:J

    cmp-long v3, v5, v7

    if-gtz v3, :cond_45

    :cond_44
    const/4 v9, 0x1

    goto :goto_29

    :cond_45
    move v9, v13

    :goto_29
    if-eqz v9, :cond_46

    iget-boolean v3, v0, Lyads/mq2;->B:Z

    if-eqz v3, :cond_46

    iput-boolean v13, v0, Lyads/mq2;->B:Z

    iget-object v3, v0, Lyads/mq2;->x:Lyads/bw4;

    iget v3, v3, Lyads/bw4;->m:I

    const/4 v5, 0x5

    invoke-virtual {v0, v3, v5, v13, v13}, Lyads/mq2;->a(IIZZ)V

    :cond_46
    const/4 v3, 0x3

    if-eqz v9, :cond_48

    iget-object v5, v1, Lyads/a14;->f:Lyads/c14;

    iget-boolean v5, v5, Lyads/c14;->i:Z

    if-eqz v5, :cond_48

    invoke-virtual {v0, v2}, Lyads/mq2;->b(I)V

    invoke-virtual {v0}, Lyads/mq2;->m()V

    :cond_47
    const/4 v6, 0x1

    goto/16 :goto_37

    :cond_48
    iget-object v5, v0, Lyads/mq2;->x:Lyads/bw4;

    iget v6, v5, Lyads/bw4;->e:I

    if-ne v6, v12, :cond_49

    iget v6, v0, Lyads/mq2;->J:I

    if-nez v6, :cond_4a

    iget-object v6, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v6, v6, Lyads/d14;->h:Lyads/a14;

    iget-object v7, v6, Lyads/a14;->f:Lyads/c14;

    iget-wide v7, v7, Lyads/c14;->e:J

    iget-boolean v6, v6, Lyads/a14;->d:Z

    if-eqz v6, :cond_49

    cmp-long v6, v7, v27

    if-eqz v6, :cond_54

    iget-wide v5, v5, Lyads/bw4;->r:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_54

    invoke-virtual {v0}, Lyads/mq2;->l()Z

    move-result v5

    if-nez v5, :cond_49

    goto/16 :goto_30

    :cond_49
    :goto_2a
    const/4 v6, 0x1

    goto/16 :goto_33

    :cond_4a
    if-nez v4, :cond_4b

    goto :goto_2a

    :cond_4b
    iget-boolean v6, v5, Lyads/bw4;->g:Z

    if-nez v6, :cond_4c

    goto/16 :goto_30

    :cond_4c
    iget-object v5, v5, Lyads/bw4;->a:Lyads/kx5;

    iget-object v6, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v6, v6, Lyads/d14;->h:Lyads/a14;

    iget-object v6, v6, Lyads/a14;->f:Lyads/c14;

    iget-object v6, v6, Lyads/c14;->a:Lyads/h14;

    invoke-virtual {v0, v5, v6}, Lyads/mq2;->a(Lyads/kx5;Lyads/h14;)Z

    move-result v5

    if-eqz v5, :cond_4d

    iget-object v5, v0, Lyads/mq2;->u:Lyads/jl0;

    iget-wide v7, v5, Lyads/jl0;->h:J

    goto :goto_2b

    :cond_4d
    move-wide/from16 v7, v27

    :goto_2b
    iget-object v5, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v5, v5, Lyads/d14;->j:Lyads/a14;

    iget-boolean v6, v5, Lyads/a14;->d:Z

    if-eqz v6, :cond_4f

    iget-boolean v6, v5, Lyads/a14;->e:Z

    if-eqz v6, :cond_4e

    iget-object v6, v5, Lyads/a14;->a:Ljava/lang/Object;

    invoke-interface {v6}, Lyads/ui5;->getBufferedPositionUs()J

    move-result-wide v9

    cmp-long v6, v9, v16

    if-nez v6, :cond_4f

    :cond_4e
    iget-object v6, v5, Lyads/a14;->f:Lyads/c14;

    iget-boolean v6, v6, Lyads/c14;->i:Z

    if-eqz v6, :cond_4f

    const/4 v9, 0x1

    goto :goto_2c

    :cond_4f
    move v9, v13

    :goto_2c
    iget-object v6, v5, Lyads/a14;->f:Lyads/c14;

    iget-object v6, v6, Lyads/c14;->a:Lyads/h14;

    invoke-virtual {v6}, Lyads/b14;->a()Z

    move-result v6

    if-eqz v6, :cond_50

    iget-boolean v5, v5, Lyads/a14;->d:Z

    if-nez v5, :cond_50

    const/4 v5, 0x1

    goto :goto_2d

    :cond_50
    move v5, v13

    :goto_2d
    if-nez v9, :cond_54

    if-nez v5, :cond_54

    iget-object v5, v0, Lyads/mq2;->g:Lyads/kl0;

    iget-object v6, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v9, v6, Lyads/bw4;->p:J

    invoke-virtual {v0, v9, v10}, Lyads/mq2;->a(J)J

    move-result-wide v9

    iget-object v6, v0, Lyads/mq2;->o:Lyads/ml0;

    invoke-virtual {v6}, Lyads/ml0;->getPlaybackParameters()Lyads/dw4;

    move-result-object v6

    iget v6, v6, Lyads/dw4;->b:F

    iget-boolean v11, v0, Lyads/mq2;->C:Z

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v6, v14

    if-nez v14, :cond_51

    goto :goto_2e

    :cond_51
    long-to-double v9, v9

    float-to-double v12, v6

    div-double/2addr v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    :goto_2e
    if-eqz v11, :cond_52

    iget-wide v11, v5, Lyads/kl0;->e:J

    goto :goto_2f

    :cond_52
    iget-wide v11, v5, Lyads/kl0;->d:J

    :goto_2f
    cmp-long v6, v7, v27

    if-eqz v6, :cond_53

    const-wide/16 v23, 0x2

    div-long v7, v7, v23

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    :cond_53
    cmp-long v6, v11, v30

    if-lez v6, :cond_54

    cmp-long v6, v9, v11

    if-gez v6, :cond_54

    iget-boolean v6, v5, Lyads/kl0;->g:Z

    if-nez v6, :cond_49

    iget-object v6, v5, Lyads/kl0;->a:Lyads/aj0;

    monitor-enter v6

    :try_start_0
    iget v7, v6, Lyads/aj0;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v8, 0x10000

    mul-int/2addr v7, v8

    monitor-exit v6

    iget v5, v5, Lyads/kl0;->i:I

    if-lt v7, v5, :cond_49

    goto :goto_30

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_54
    :goto_30
    invoke-virtual {v0, v3}, Lyads/mq2;->b(I)V

    const/4 v15, 0x0

    iput-object v15, v0, Lyads/mq2;->O:Lyads/up2;

    invoke-virtual {v0}, Lyads/mq2;->l()Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v8, 0x0

    iput-boolean v8, v0, Lyads/mq2;->C:Z

    iget-object v4, v0, Lyads/mq2;->o:Lyads/ml0;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lyads/ml0;->g:Z

    iget-object v4, v4, Lyads/ml0;->b:Lyads/eq5;

    iget-boolean v5, v4, Lyads/eq5;->c:Z

    if-nez v5, :cond_55

    iget-object v5, v4, Lyads/eq5;->b:Lyads/du5;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v4, Lyads/eq5;->e:J

    iput-boolean v6, v4, Lyads/eq5;->c:Z

    :cond_55
    iget-object v4, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v5, v4

    const/4 v9, 0x0

    :goto_31
    if-ge v9, v5, :cond_60

    aget-object v7, v4, v9

    invoke-static {v7}, Lyads/mq2;->b(Lyads/gs;)Z

    move-result v8

    if-eqz v8, :cond_57

    iget v8, v7, Lyads/gs;->g:I

    if-ne v8, v6, :cond_56

    const/4 v14, 0x2

    iput v14, v7, Lyads/gs;->g:I

    invoke-virtual {v7}, Lyads/gs;->i()V

    goto :goto_32

    :cond_56
    invoke-static {}, Lud;->g()V

    return-void

    :cond_57
    :goto_32
    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    :goto_33
    iget-object v5, v0, Lyads/mq2;->x:Lyads/bw4;

    iget v7, v5, Lyads/bw4;->e:I

    if-ne v7, v3, :cond_60

    iget v7, v0, Lyads/mq2;->J:I

    if-nez v7, :cond_58

    iget-object v4, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v4, v4, Lyads/d14;->h:Lyads/a14;

    iget-object v7, v4, Lyads/a14;->f:Lyads/c14;

    iget-wide v7, v7, Lyads/c14;->e:J

    iget-boolean v4, v4, Lyads/a14;->d:Z

    if-eqz v4, :cond_59

    cmp-long v4, v7, v27

    if-eqz v4, :cond_60

    iget-wide v4, v5, Lyads/bw4;->r:J

    cmp-long v4, v4, v7

    if-ltz v4, :cond_60

    invoke-virtual {v0}, Lyads/mq2;->l()Z

    move-result v4

    if-nez v4, :cond_59

    goto :goto_37

    :cond_58
    if-nez v4, :cond_60

    :cond_59
    invoke-virtual {v0}, Lyads/mq2;->l()Z

    move-result v4

    iput-boolean v4, v0, Lyads/mq2;->C:Z

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Lyads/mq2;->b(I)V

    iget-boolean v4, v0, Lyads/mq2;->C:Z

    if-eqz v4, :cond_5f

    iget-object v4, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v4, v4, Lyads/d14;->h:Lyads/a14;

    :goto_34
    if-eqz v4, :cond_5c

    iget-object v5, v4, Lyads/a14;->n:Lyads/q06;

    iget-object v5, v5, Lyads/q06;->c:[Lyads/er2;

    array-length v7, v5

    const/4 v9, 0x0

    :goto_35
    if-ge v9, v7, :cond_5b

    aget-object v8, v5, v9

    if-eqz v8, :cond_5a

    invoke-interface {v8}, Lyads/er2;->i()V

    :cond_5a
    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    :cond_5b
    iget-object v4, v4, Lyads/a14;->l:Lyads/a14;

    goto :goto_34

    :cond_5c
    iget-object v4, v0, Lyads/mq2;->u:Lyads/jl0;

    iget-wide v7, v4, Lyads/jl0;->h:J

    cmp-long v5, v7, v27

    if-nez v5, :cond_5d

    goto :goto_36

    :cond_5d
    iget-wide v9, v4, Lyads/jl0;->b:J

    add-long/2addr v7, v9

    iput-wide v7, v4, Lyads/jl0;->h:J

    iget-wide v9, v4, Lyads/jl0;->g:J

    cmp-long v5, v9, v27

    if-eqz v5, :cond_5e

    cmp-long v5, v7, v9

    if-lez v5, :cond_5e

    iput-wide v9, v4, Lyads/jl0;->h:J

    :cond_5e
    move-wide/from16 v10, v27

    iput-wide v10, v4, Lyads/jl0;->l:J

    :cond_5f
    :goto_36
    invoke-virtual {v0}, Lyads/mq2;->m()V

    :cond_60
    :goto_37
    iget-object v4, v0, Lyads/mq2;->x:Lyads/bw4;

    iget v4, v4, Lyads/bw4;->e:I

    const/4 v14, 0x2

    if-ne v4, v14, :cond_63

    const/4 v9, 0x0

    :goto_38
    iget-object v4, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v5, v4

    if-ge v9, v5, :cond_62

    aget-object v4, v4, v9

    invoke-static {v4}, Lyads/mq2;->b(Lyads/gs;)Z

    move-result v4

    if-eqz v4, :cond_61

    iget-object v4, v0, Lyads/mq2;->b:[Lyads/gs;

    aget-object v4, v4, v9

    iget-object v4, v4, Lyads/gs;->h:Lyads/mc5;

    iget-object v5, v1, Lyads/a14;->c:[Lyads/mc5;

    aget-object v5, v5, v9

    if-ne v4, v5, :cond_61

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Lyads/mc5;->a()V

    :cond_61
    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    :cond_62
    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-boolean v4, v1, Lyads/bw4;->g:Z

    if-nez v4, :cond_63

    iget-wide v4, v1, Lyads/bw4;->q:J

    const-wide/32 v7, 0x7a120

    cmp-long v1, v4, v7

    if-gez v1, :cond_63

    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v1, v1, Lyads/d14;->j:Lyads/a14;

    if-nez v1, :cond_64

    :cond_63
    :goto_39
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3b

    :cond_64
    iget-boolean v4, v1, Lyads/a14;->d:Z

    if-nez v4, :cond_65

    move-wide/from16 v4, v30

    goto :goto_3a

    :cond_65
    iget-object v1, v1, Lyads/a14;->a:Ljava/lang/Object;

    invoke-interface {v1}, Lyads/ui5;->getNextLoadPositionUs()J

    move-result-wide v4

    :goto_3a
    cmp-long v1, v4, v16

    if-nez v1, :cond_66

    goto :goto_39

    :cond_66
    iget-wide v4, v0, Lyads/mq2;->P:J

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v27

    iget-object v4, v0, Lyads/mq2;->q:Lyads/du5;

    if-nez v1, :cond_67

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lyads/mq2;->P:J

    goto :goto_3c

    :cond_67
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v7, v0, Lyads/mq2;->P:J

    sub-long/2addr v4, v7

    const-wide/16 v7, 0xfa0

    cmp-long v1, v4, v7

    if-gez v1, :cond_68

    goto :goto_3c

    :cond_68
    const-string v0, "Playback stuck buffering and not loading"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :goto_3b
    iput-wide v10, v0, Lyads/mq2;->P:J

    :goto_3c
    invoke-virtual {v0}, Lyads/mq2;->l()Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget v1, v1, Lyads/bw4;->e:I

    if-ne v1, v3, :cond_69

    move v9, v6

    goto :goto_3d

    :cond_69
    const/4 v9, 0x0

    :goto_3d
    iget-boolean v1, v0, Lyads/mq2;->I:Z

    if-eqz v1, :cond_6a

    iget-boolean v1, v0, Lyads/mq2;->H:Z

    if-eqz v1, :cond_6a

    if-eqz v9, :cond_6a

    goto :goto_3e

    :cond_6a
    const/4 v6, 0x0

    :goto_3e
    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-boolean v4, v1, Lyads/bw4;->o:Z

    if-eq v4, v6, :cond_6b

    new-instance v34, Lyads/bw4;

    iget-object v4, v1, Lyads/bw4;->a:Lyads/kx5;

    iget-object v5, v1, Lyads/bw4;->b:Lyads/h14;

    iget-wide v7, v1, Lyads/bw4;->c:J

    iget-wide v10, v1, Lyads/bw4;->d:J

    iget v12, v1, Lyads/bw4;->e:I

    iget-object v13, v1, Lyads/bw4;->f:Lyads/up2;

    iget-boolean v15, v1, Lyads/bw4;->g:Z

    iget-object v14, v1, Lyads/bw4;->h:Lyads/g06;

    iget-object v3, v1, Lyads/bw4;->i:Lyads/q06;

    iget-object v2, v1, Lyads/bw4;->j:Ljava/util/List;

    move-object/from16 v46, v2

    iget-object v2, v1, Lyads/bw4;->k:Lyads/h14;

    move-object/from16 v47, v2

    iget-boolean v2, v1, Lyads/bw4;->l:Z

    move/from16 v48, v2

    iget v2, v1, Lyads/bw4;->m:I

    move/from16 v49, v2

    iget-object v2, v1, Lyads/bw4;->n:Lyads/dw4;

    move-object/from16 v50, v2

    move-object/from16 v45, v3

    iget-wide v2, v1, Lyads/bw4;->p:J

    move-wide/from16 v51, v2

    iget-wide v2, v1, Lyads/bw4;->q:J

    move-wide/from16 v53, v2

    iget-wide v1, v1, Lyads/bw4;->r:J

    move-wide/from16 v55, v1

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move/from16 v57, v6

    move-wide/from16 v37, v7

    move-wide/from16 v39, v10

    move/from16 v41, v12

    move-object/from16 v42, v13

    move-object/from16 v44, v14

    move/from16 v43, v15

    invoke-direct/range {v34 .. v57}, Lyads/bw4;-><init>(Lyads/kx5;Lyads/h14;JJILyads/up2;ZLyads/g06;Lyads/q06;Ljava/util/List;Lyads/h14;ZILyads/dw4;JJJZ)V

    move-object/from16 v1, v34

    iput-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    :goto_3f
    const/4 v8, 0x0

    goto :goto_40

    :cond_6b
    move/from16 v57, v6

    goto :goto_3f

    :goto_40
    iput-boolean v8, v0, Lyads/mq2;->H:Z

    if-nez v57, :cond_70

    iget v1, v1, Lyads/bw4;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6c

    goto :goto_43

    :cond_6c
    const/4 v14, 0x2

    if-nez v9, :cond_6e

    if-ne v1, v14, :cond_6d

    goto :goto_41

    :cond_6d
    const/4 v2, 0x3

    if-ne v1, v2, :cond_6f

    iget v1, v0, Lyads/mq2;->J:I

    if-eqz v1, :cond_6f

    iget-object v0, v0, Lyads/mq2;->i:Lyads/gu5;

    add-long v10, v32, v20

    iget-object v0, v0, Lyads/gu5;->a:Landroid/os/Handler;

    invoke-virtual {v0, v14, v10, v11}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_42

    :cond_6e
    :goto_41
    iget-object v0, v0, Lyads/mq2;->i:Lyads/gu5;

    add-long v10, v32, v18

    iget-object v0, v0, Lyads/gu5;->a:Landroid/os/Handler;

    invoke-virtual {v0, v14, v10, v11}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_6f
    :goto_42
    invoke-static {}, Lyads/b06;->a()V

    :cond_70
    :goto_43
    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 2113
    iput p1, p0, Lyads/mq2;->E:I

    .line 2114
    iget-object v0, p0, Lyads/mq2;->s:Lyads/d14;

    iget-object v1, p0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v1, v1, Lyads/bw4;->a:Lyads/kx5;

    .line 2115
    iput p1, v0, Lyads/d14;->f:I

    .line 2116
    invoke-virtual {v0, v1}, Lyads/d14;->a(Lyads/kx5;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2117
    invoke-virtual {p0, p1}, Lyads/mq2;->b(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 2118
    invoke-virtual {p0, p1}, Lyads/mq2;->a(Z)V

    return-void
.end method

.method public final a(IILyads/ik5;)V
    .locals 2

    .line 2054
    iget-object v0, p0, Lyads/mq2;->y:Lyads/iq2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyads/iq2;->a(I)V

    .line 2055
    iget-object v0, p0, Lyads/mq2;->t:Lyads/q14;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 2056
    iget-object v1, v0, Lyads/q14;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 2057
    iput-object p3, v0, Lyads/q14;->j:Lyads/ik5;

    .line 2058
    invoke-virtual {v0, p1, p2}, Lyads/q14;->a(II)V

    .line 2059
    invoke-virtual {v0}, Lyads/q14;->a()Lyads/kx5;

    move-result-object p1

    const/4 p2, 0x0

    .line 2060
    invoke-virtual {p0, p1, p2}, Lyads/mq2;->a(Lyads/kx5;Z)V

    return-void

    .line 2061
    :cond_0
    invoke-static {}, Lmi2;->b()V

    return-void
.end method

.method public final a(IIZZ)V
    .locals 27

    move-object/from16 v0, p0

    .line 2071
    iget-object v1, v0, Lyads/mq2;->y:Lyads/iq2;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Lyads/iq2;->a(I)V

    .line 2072
    iget-object v1, v0, Lyads/mq2;->y:Lyads/iq2;

    const/4 v2, 0x1

    .line 2073
    iput-boolean v2, v1, Lyads/iq2;->a:Z

    .line 2074
    iput-boolean v2, v1, Lyads/iq2;->f:Z

    move/from16 v3, p2

    .line 2075
    iput v3, v1, Lyads/iq2;->g:I

    .line 2076
    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    .line 2077
    new-instance v3, Lyads/bw4;

    .line 2078
    iget-object v4, v1, Lyads/bw4;->a:Lyads/kx5;

    .line 2079
    iget-object v5, v1, Lyads/bw4;->b:Lyads/h14;

    iget-wide v6, v1, Lyads/bw4;->c:J

    iget-wide v8, v1, Lyads/bw4;->d:J

    iget v10, v1, Lyads/bw4;->e:I

    iget-object v11, v1, Lyads/bw4;->f:Lyads/up2;

    iget-boolean v12, v1, Lyads/bw4;->g:Z

    iget-object v13, v1, Lyads/bw4;->h:Lyads/g06;

    iget-object v14, v1, Lyads/bw4;->i:Lyads/q06;

    iget-object v15, v1, Lyads/bw4;->j:Ljava/util/List;

    iget-object v2, v1, Lyads/bw4;->k:Lyads/h14;

    move-object/from16 v16, v2

    iget-object v2, v1, Lyads/bw4;->n:Lyads/dw4;

    move-object/from16 v19, v2

    move-object/from16 p2, v3

    iget-wide v2, v1, Lyads/bw4;->p:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lyads/bw4;->q:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lyads/bw4;->r:J

    iget-boolean v1, v1, Lyads/bw4;->o:Z

    move/from16 v18, p1

    move/from16 v17, p3

    move/from16 v26, v1

    move-wide/from16 v24, v2

    move-object/from16 v3, p2

    invoke-direct/range {v3 .. v26}, Lyads/bw4;-><init>(Lyads/kx5;Lyads/h14;JJILyads/up2;ZLyads/g06;Lyads/q06;Ljava/util/List;Lyads/h14;ZILyads/dw4;JJJZ)V

    .line 2080
    iput-object v3, v0, Lyads/mq2;->x:Lyads/bw4;

    const/4 v1, 0x0

    .line 2081
    iput-boolean v1, v0, Lyads/mq2;->C:Z

    .line 2082
    iget-object v2, v0, Lyads/mq2;->s:Lyads/d14;

    .line 2083
    iget-object v2, v2, Lyads/d14;->h:Lyads/a14;

    :goto_0
    if-eqz v2, :cond_2

    .line 2084
    iget-object v3, v2, Lyads/a14;->n:Lyads/q06;

    .line 2085
    iget-object v3, v3, Lyads/q06;->c:[Lyads/er2;

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    move/from16 v7, p3

    if-eqz v6, :cond_0

    .line 2086
    invoke-interface {v6, v7}, Lyads/er2;->a(Z)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move/from16 v7, p3

    .line 2087
    iget-object v2, v2, Lyads/a14;->l:Lyads/a14;

    goto :goto_0

    .line 2088
    :cond_2
    invoke-virtual {v0}, Lyads/mq2;->l()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2089
    invoke-virtual {v0}, Lyads/mq2;->m()V

    .line 2090
    invoke-virtual {v0}, Lyads/mq2;->o()V

    return-void

    .line 2091
    :cond_3
    iget-object v2, v0, Lyads/mq2;->x:Lyads/bw4;

    iget v2, v2, Lyads/bw4;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v2, v3, :cond_8

    .line 2092
    iput-boolean v1, v0, Lyads/mq2;->C:Z

    .line 2093
    iget-object v2, v0, Lyads/mq2;->o:Lyads/ml0;

    const/4 v3, 0x1

    .line 2094
    iput-boolean v3, v2, Lyads/ml0;->g:Z

    .line 2095
    iget-object v2, v2, Lyads/ml0;->b:Lyads/eq5;

    .line 2096
    iget-boolean v5, v2, Lyads/eq5;->c:Z

    if-nez v5, :cond_4

    .line 2097
    iget-object v5, v2, Lyads/eq5;->b:Lyads/du5;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2098
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2099
    iput-wide v5, v2, Lyads/eq5;->e:J

    .line 2100
    iput-boolean v3, v2, Lyads/eq5;->c:Z

    .line 2101
    :cond_4
    iget-object v2, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v5, v2

    :goto_2
    if-ge v1, v5, :cond_7

    aget-object v6, v2, v1

    .line 2102
    invoke-static {v6}, Lyads/mq2;->b(Lyads/gs;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2103
    iget v7, v6, Lyads/gs;->g:I

    if-ne v7, v3, :cond_5

    .line 2104
    iput v4, v6, Lyads/gs;->g:I

    .line 2105
    invoke-virtual {v6}, Lyads/gs;->i()V

    goto :goto_3

    .line 2106
    :cond_5
    invoke-static {}, Lud;->g()V

    return-void

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2107
    :cond_7
    iget-object v0, v0, Lyads/mq2;->i:Lyads/gu5;

    .line 2108
    iget-object v0, v0, Lyads/gu5;->a:Landroid/os/Handler;

    .line 2109
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_8
    if-ne v2, v4, :cond_9

    .line 2110
    iget-object v0, v0, Lyads/mq2;->i:Lyads/gu5;

    .line 2111
    iget-object v0, v0, Lyads/gu5;->a:Landroid/os/Handler;

    .line 2112
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void
.end method

.method public final a(Ljava/io/IOException;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 2013
    new-instance v1, Lyads/up2;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v1, v2, v3, v4}, Lyads/up2;-><init>(ILjava/lang/Exception;I)V

    .line 2014
    iget-object v3, v0, Lyads/mq2;->s:Lyads/d14;

    .line 2015
    iget-object v3, v3, Lyads/d14;->h:Lyads/a14;

    if-eqz v3, :cond_0

    .line 2016
    iget-object v3, v3, Lyads/a14;->f:Lyads/c14;

    iget-object v13, v3, Lyads/c14;->a:Lyads/h14;

    .line 2017
    new-instance v4, Lyads/up2;

    .line 2018
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    sget v3, Lyads/u56;->a:I

    .line 2019
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    iget v7, v1, Lyads/zv4;->b:I

    iget v8, v1, Lyads/up2;->d:I

    iget-object v9, v1, Lyads/up2;->e:Ljava/lang/String;

    iget v10, v1, Lyads/up2;->f:I

    iget-object v11, v1, Lyads/up2;->g:Lyads/vz2;

    iget v12, v1, Lyads/up2;->h:I

    iget-wide v14, v1, Lyads/zv4;->c:J

    iget-boolean v1, v1, Lyads/up2;->j:Z

    move/from16 v16, v1

    invoke-direct/range {v4 .. v16}, Lyads/up2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILyads/vz2;ILyads/b14;JZ)V

    move-object v1, v4

    .line 2020
    :cond_0
    const-string v3, "Playback error"

    .line 2021
    invoke-static {v3, v1}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExoPlayerImplInternal"

    invoke-static {v4, v3}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    invoke-virtual {v0, v2, v2}, Lyads/mq2;->a(ZZ)V

    .line 2023
    iget-object v2, v0, Lyads/mq2;->x:Lyads/bw4;

    invoke-virtual {v2, v1}, Lyads/bw4;->a(Lyads/up2;)Lyads/bw4;

    move-result-object v1

    iput-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    return-void
.end method

.method public final a(Lyads/dw4;)V
    .locals 2

    .line 2214
    iget-object v0, p0, Lyads/mq2;->o:Lyads/ml0;

    invoke-virtual {v0, p1}, Lyads/ml0;->a(Lyads/dw4;)V

    .line 2215
    iget-object p1, p0, Lyads/mq2;->o:Lyads/ml0;

    invoke-virtual {p1}, Lyads/ml0;->getPlaybackParameters()Lyads/dw4;

    move-result-object p1

    const/4 v0, 0x1

    .line 2216
    iget v1, p1, Lyads/dw4;->b:F

    invoke-virtual {p0, p1, v1, v0, v0}, Lyads/mq2;->a(Lyads/dw4;FZZ)V

    return-void
.end method

.method public final a(Lyads/dw4;FZZ)V
    .locals 28

    move-object/from16 v0, p0

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 2510
    iget-object v1, v0, Lyads/mq2;->y:Lyads/iq2;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lyads/iq2;->a(I)V

    .line 2511
    :cond_0
    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    .line 2512
    new-instance v2, Lyads/bw4;

    move-object v3, v2

    .line 2513
    iget-object v2, v1, Lyads/bw4;->a:Lyads/kx5;

    move-object v4, v3

    .line 2514
    iget-object v3, v1, Lyads/bw4;->b:Lyads/h14;

    move-object v6, v4

    iget-wide v4, v1, Lyads/bw4;->c:J

    move-object v8, v6

    iget-wide v6, v1, Lyads/bw4;->d:J

    move-object v9, v8

    iget v8, v1, Lyads/bw4;->e:I

    move-object v10, v9

    iget-object v9, v1, Lyads/bw4;->f:Lyads/up2;

    move-object v11, v10

    iget-boolean v10, v1, Lyads/bw4;->g:Z

    move-object v12, v11

    iget-object v11, v1, Lyads/bw4;->h:Lyads/g06;

    move-object v13, v12

    iget-object v12, v1, Lyads/bw4;->i:Lyads/q06;

    move-object v14, v13

    iget-object v13, v1, Lyads/bw4;->j:Ljava/util/List;

    move-object v15, v14

    iget-object v14, v1, Lyads/bw4;->k:Lyads/h14;

    move-object/from16 v16, v15

    iget-boolean v15, v1, Lyads/bw4;->l:Z

    move-object/from16 v17, v2

    iget v2, v1, Lyads/bw4;->m:I

    move/from16 v19, v2

    move-object/from16 v18, v3

    iget-wide v2, v1, Lyads/bw4;->p:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lyads/bw4;->q:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lyads/bw4;->r:J

    iget-boolean v1, v1, Lyads/bw4;->o:Z

    move/from16 v24, v1

    move-object/from16 v1, v16

    move/from16 v16, v19

    move-object/from16 v25, v17

    move-object/from16 v17, p1

    move-wide/from16 v26, v2

    move-object/from16 v2, v25

    move-object/from16 v3, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v22

    move-wide/from16 v22, v26

    invoke-direct/range {v1 .. v24}, Lyads/bw4;-><init>(Lyads/kx5;Lyads/h14;JJILyads/up2;ZLyads/g06;Lyads/q06;Ljava/util/List;Lyads/h14;ZILyads/dw4;JJJZ)V

    move-object v3, v1

    move-object/from16 v1, v17

    .line 2515
    iput-object v3, v0, Lyads/mq2;->x:Lyads/bw4;

    goto :goto_0

    :cond_1
    move-object/from16 v1, p1

    .line 2516
    :goto_0
    iget v2, v1, Lyads/dw4;->b:F

    .line 2517
    iget-object v3, v0, Lyads/mq2;->s:Lyads/d14;

    .line 2518
    iget-object v3, v3, Lyads/d14;->h:Lyads/a14;

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 2519
    iget-object v5, v3, Lyads/a14;->n:Lyads/q06;

    .line 2520
    iget-object v5, v5, Lyads/q06;->c:[Lyads/er2;

    array-length v6, v5

    :goto_2
    if-ge v4, v6, :cond_3

    aget-object v7, v5, v4

    if-eqz v7, :cond_2

    .line 2521
    invoke-interface {v7, v2}, Lyads/er2;->a(F)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2522
    :cond_3
    iget-object v3, v3, Lyads/a14;->l:Lyads/a14;

    goto :goto_1

    .line 2523
    :cond_4
    iget-object v0, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v2, v0

    :goto_3
    if-ge v4, v2, :cond_6

    aget-object v3, v0, v4

    if-eqz v3, :cond_5

    .line 2524
    iget v5, v1, Lyads/dw4;->b:F

    move/from16 v6, p2

    invoke-virtual {v3, v6, v5}, Lyads/gs;->a(FF)V

    goto :goto_4

    :cond_5
    move/from16 v6, p2

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final a(Lyads/gs;)V
    .locals 4

    .line 2326
    invoke-static {p1}, Lyads/mq2;->b(Lyads/gs;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2327
    :cond_0
    iget-object v0, p0, Lyads/mq2;->o:Lyads/ml0;

    .line 2328
    iget-object v1, v0, Lyads/ml0;->d:Lyads/gs;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    .line 2329
    iput-object v3, v0, Lyads/ml0;->e:Lyads/my3;

    .line 2330
    iput-object v3, v0, Lyads/ml0;->d:Lyads/gs;

    .line 2331
    iput-boolean v2, v0, Lyads/ml0;->f:Z

    .line 2332
    :cond_1
    iget v0, p1, Lyads/gs;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    if-ne v0, v1, :cond_2

    .line 2333
    iput v2, p1, Lyads/gs;->g:I

    .line 2334
    invoke-virtual {p1}, Lyads/gs;->j()V

    goto :goto_0

    .line 2335
    :cond_2
    invoke-static {}, Lud;->g()V

    return-void

    .line 2336
    :cond_3
    :goto_0
    iget v0, p1, Lyads/gs;->g:I

    if-ne v0, v2, :cond_4

    .line 2337
    iget-object v0, p1, Lyads/gs;->c:Lyads/a03;

    .line 2338
    iput-object v3, v0, Lyads/a03;->a:Lyads/eo2;

    .line 2339
    iput-object v3, v0, Lyads/a03;->b:Lyads/vz2;

    const/4 v0, 0x0

    .line 2340
    iput v0, p1, Lyads/gs;->g:I

    .line 2341
    iput-object v3, p1, Lyads/gs;->h:Lyads/mc5;

    .line 2342
    iput-object v3, p1, Lyads/gs;->i:[Lyads/vz2;

    .line 2343
    iput-boolean v0, p1, Lyads/gs;->l:Z

    .line 2344
    invoke-virtual {p1}, Lyads/gs;->g()V

    .line 2345
    iget p1, p0, Lyads/mq2;->J:I

    sub-int/2addr p1, v2

    iput p1, p0, Lyads/mq2;->J:I

    return-void

    .line 2346
    :cond_4
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/hq2;)V
    .locals 5

    .line 2039
    iget-object v0, p0, Lyads/mq2;->y:Lyads/iq2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyads/iq2;->a(I)V

    .line 2040
    iget v0, p1, Lyads/hq2;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2041
    new-instance v0, Lyads/lq2;

    new-instance v1, Lyads/hx4;

    iget-object v2, p1, Lyads/hq2;->a:Ljava/util/ArrayList;

    iget-object v3, p1, Lyads/hq2;->b:Lyads/ik5;

    invoke-direct {v1, v2, v3}, Lyads/hx4;-><init>(Ljava/util/ArrayList;Lyads/ik5;)V

    iget v2, p1, Lyads/hq2;->c:I

    iget-wide v3, p1, Lyads/hq2;->d:J

    invoke-direct {v0, v1, v2, v3, v4}, Lyads/lq2;-><init>(Lyads/kx5;IJ)V

    iput-object v0, p0, Lyads/mq2;->K:Lyads/lq2;

    .line 2042
    :cond_0
    iget-object v0, p0, Lyads/mq2;->t:Lyads/q14;

    iget-object v1, p1, Lyads/hq2;->a:Ljava/util/ArrayList;

    iget-object p1, p1, Lyads/hq2;->b:Lyads/ik5;

    .line 2043
    iget-object v2, v0, Lyads/q14;->b:Ljava/util/ArrayList;

    .line 2044
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lyads/q14;->a(II)V

    .line 2045
    iget-object v2, v0, Lyads/q14;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Lyads/q14;->a(ILjava/util/ArrayList;Lyads/ik5;)Lyads/kx5;

    move-result-object p1

    .line 2046
    invoke-virtual {p0, p1, v3}, Lyads/mq2;->a(Lyads/kx5;Z)V

    return-void
.end method

.method public final a(Lyads/hq2;I)V
    .locals 2

    .line 2047
    iget-object v0, p0, Lyads/mq2;->y:Lyads/iq2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyads/iq2;->a(I)V

    .line 2048
    iget-object v0, p0, Lyads/mq2;->t:Lyads/q14;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 2049
    iget-object p2, v0, Lyads/q14;->b:Ljava/util/ArrayList;

    .line 2050
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 2051
    :cond_0
    iget-object v1, p1, Lyads/hq2;->a:Ljava/util/ArrayList;

    iget-object p1, p1, Lyads/hq2;->b:Lyads/ik5;

    .line 2052
    invoke-virtual {v0, p2, v1, p1}, Lyads/q14;->a(ILjava/util/ArrayList;Lyads/ik5;)Lyads/kx5;

    move-result-object p1

    const/4 p2, 0x0

    .line 2053
    invoke-virtual {p0, p1, p2}, Lyads/mq2;->a(Lyads/kx5;Z)V

    return-void
.end method

.method public final a(Lyads/ik5;)V
    .locals 6

    .line 2062
    iget-object v0, p0, Lyads/mq2;->y:Lyads/iq2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyads/iq2;->a(I)V

    .line 2063
    iget-object v0, p0, Lyads/mq2;->t:Lyads/q14;

    .line 2064
    iget-object v1, v0, Lyads/q14;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2065
    iget-object v2, p1, Lyads/ik5;->b:[I

    array-length v2, v2

    if-eq v2, v1, :cond_0

    .line 2066
    new-instance v2, Lyads/ik5;

    new-instance v3, Ljava/util/Random;

    iget-object p1, p1, Lyads/ik5;->a:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v2, v3}, Lyads/ik5;-><init>(Ljava/util/Random;)V

    .line 2067
    invoke-virtual {v2, v1}, Lyads/ik5;->a(I)Lyads/ik5;

    move-result-object p1

    .line 2068
    :cond_0
    iput-object p1, v0, Lyads/q14;->j:Lyads/ik5;

    .line 2069
    invoke-virtual {v0}, Lyads/q14;->a()Lyads/kx5;

    move-result-object p1

    const/4 v0, 0x0

    .line 2070
    invoke-virtual {p0, p1, v0}, Lyads/mq2;->a(Lyads/kx5;Z)V

    return-void
.end method

.method public final a(Lyads/kx5;Lyads/h14;Lyads/kx5;Lyads/h14;J)V
    .locals 8

    .line 2479
    invoke-virtual {p0, p1, p2}, Lyads/mq2;->a(Lyads/kx5;Lyads/h14;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2480
    invoke-virtual {p2}, Lyads/b14;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lyads/dw4;->e:Lyads/dw4;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyads/mq2;->x:Lyads/bw4;

    iget-object p1, p1, Lyads/bw4;->n:Lyads/dw4;

    .line 2481
    :goto_0
    iget-object p2, p0, Lyads/mq2;->o:Lyads/ml0;

    invoke-virtual {p2}, Lyads/ml0;->getPlaybackParameters()Lyads/dw4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lyads/dw4;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 2482
    iget-object p0, p0, Lyads/mq2;->o:Lyads/ml0;

    invoke-virtual {p0, p1}, Lyads/ml0;->a(Lyads/dw4;)V

    return-void

    .line 2483
    :cond_1
    iget-object v0, p2, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v1, p0, Lyads/mq2;->m:Lyads/hx5;

    invoke-virtual {p1, v0, v1}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v0

    iget v0, v0, Lyads/hx5;->d:I

    .line 2484
    iget-object v1, p0, Lyads/mq2;->l:Lyads/jx5;

    const-wide/16 v2, 0x0

    .line 2485
    invoke-virtual {p1, v0, v1, v2, v3}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    .line 2486
    iget-object v0, p0, Lyads/mq2;->u:Lyads/jl0;

    iget-object v1, p0, Lyads/mq2;->l:Lyads/jx5;

    iget-object v1, v1, Lyads/jx5;->l:Lyads/j04;

    sget v4, Lyads/u56;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2487
    iget-wide v4, v1, Lyads/j04;->b:J

    invoke-static {v4, v5}, Lyads/u56;->a(J)J

    move-result-wide v4

    iput-wide v4, v0, Lyads/jl0;->c:J

    .line 2488
    iget-wide v4, v1, Lyads/j04;->c:J

    invoke-static {v4, v5}, Lyads/u56;->a(J)J

    move-result-wide v4

    iput-wide v4, v0, Lyads/jl0;->f:J

    .line 2489
    iget-wide v4, v1, Lyads/j04;->d:J

    invoke-static {v4, v5}, Lyads/u56;->a(J)J

    move-result-wide v4

    iput-wide v4, v0, Lyads/jl0;->g:J

    .line 2490
    iget v4, v1, Lyads/j04;->e:F

    const v5, -0x800001

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const v4, 0x3f7851ec    # 0.97f

    .line 2491
    :goto_1
    iput v4, v0, Lyads/jl0;->j:F

    .line 2492
    iget v1, v1, Lyads/j04;->f:F

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const v1, 0x3f83d70a    # 1.03f

    .line 2493
    :goto_2
    iput v1, v0, Lyads/jl0;->i:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v4, :cond_4

    cmpl-float v1, v1, v5

    if-nez v1, :cond_4

    .line 2494
    iput-wide v6, v0, Lyads/jl0;->c:J

    .line 2495
    :cond_4
    invoke-virtual {v0}, Lyads/jl0;->a()V

    cmp-long v0, p5, v6

    if-eqz v0, :cond_5

    .line 2496
    iget-object p3, p0, Lyads/mq2;->u:Lyads/jl0;

    iget-object p2, p2, Lyads/b14;->a:Ljava/lang/Object;

    .line 2497
    invoke-virtual {p0, p1, p2, p5, p6}, Lyads/mq2;->a(Lyads/kx5;Ljava/lang/Object;J)J

    move-result-wide p0

    .line 2498
    iput-wide p0, p3, Lyads/jl0;->d:J

    .line 2499
    invoke-virtual {p3}, Lyads/jl0;->a()V

    return-void

    .line 2500
    :cond_5
    iget-object p1, p0, Lyads/mq2;->l:Lyads/jx5;

    iget-object p1, p1, Lyads/jx5;->b:Ljava/lang/Object;

    .line 2501
    invoke-virtual {p3}, Lyads/kx5;->c()Z

    move-result p2

    if-nez p2, :cond_6

    .line 2502
    iget-object p2, p4, Lyads/b14;->a:Ljava/lang/Object;

    iget-object p4, p0, Lyads/mq2;->m:Lyads/hx5;

    invoke-virtual {p3, p2, p4}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object p2

    iget p2, p2, Lyads/hx5;->d:I

    .line 2503
    iget-object p4, p0, Lyads/mq2;->l:Lyads/jx5;

    .line 2504
    invoke-virtual {p3, p2, p4, v2, v3}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object p2

    .line 2505
    iget-object p2, p2, Lyads/jx5;->b:Ljava/lang/Object;

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    .line 2506
    :goto_3
    invoke-static {p2, p1}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 2507
    iget-object p0, p0, Lyads/mq2;->u:Lyads/jl0;

    .line 2508
    iput-wide v6, p0, Lyads/jl0;->d:J

    .line 2509
    invoke-virtual {p0}, Lyads/jl0;->a()V

    :cond_7
    return-void
.end method

.method public final a(Lyads/kx5;Lyads/kx5;)V
    .locals 0

    .line 2320
    invoke-virtual {p1}, Lyads/kx5;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lyads/kx5;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2321
    :cond_0
    iget-object p1, p0, Lyads/mq2;->p:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 2322
    iget-object p0, p0, Lyads/mq2;->p:Ljava/util/ArrayList;

    if-gez p1, :cond_1

    .line 2323
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    .line 2324
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lyads/fq2;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 2325
    throw p0
.end method

.method public final a(Lyads/kx5;Z)V
    .locals 37

    move-object/from16 v1, p0

    .line 2347
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v3, v1, Lyads/mq2;->K:Lyads/lq2;

    iget-object v9, v1, Lyads/mq2;->s:Lyads/d14;

    iget v4, v1, Lyads/mq2;->E:I

    iget-boolean v5, v1, Lyads/mq2;->F:Z

    iget-object v2, v1, Lyads/mq2;->l:Lyads/jx5;

    iget-object v8, v1, Lyads/mq2;->m:Lyads/hx5;

    .line 2348
    invoke-virtual/range {p1 .. p1}, Lyads/kx5;->c()Z

    move-result v6

    const/4 v12, 0x4

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v6, :cond_0

    .line 2349
    new-instance v18, Lyads/kq2;

    .line 2350
    sget-object v19, Lyads/bw4;->s:Lyads/h14;

    const/16 v25, 0x1

    const/16 v26, 0x0

    const-wide/16 v20, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    invoke-direct/range {v18 .. v26}, Lyads/kq2;-><init>(Lyads/h14;JJZZZ)V

    move-object/from16 v2, p1

    move-object/from16 v8, v18

    goto/16 :goto_17

    .line 2351
    :cond_0
    iget-object v14, v0, Lyads/bw4;->b:Lyads/h14;

    .line 2352
    iget-object v6, v14, Lyads/b14;->a:Ljava/lang/Object;

    .line 2353
    iget-object v7, v0, Lyads/bw4;->a:Lyads/kx5;

    .line 2354
    invoke-virtual {v7}, Lyads/kx5;->c()Z

    move-result v19

    if-nez v19, :cond_2

    iget-object v13, v14, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v7, v13, v8}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v7

    iget-boolean v7, v7, Lyads/hx5;->g:Z

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v13, 0x1

    .line 2355
    :goto_1
    iget-object v7, v0, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v7}, Lyads/b14;->a()Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v13, :cond_3

    goto :goto_2

    .line 2356
    :cond_3
    iget-wide v10, v0, Lyads/bw4;->r:J

    goto :goto_3

    .line 2357
    :cond_4
    :goto_2
    iget-wide v10, v0, Lyads/bw4;->c:J

    :goto_3
    if-eqz v3, :cond_8

    move-object v7, v6

    move v6, v5

    move v5, v4

    const/4 v4, 0x1

    move-object v15, v7

    move-object v7, v2

    move-object/from16 v2, p1

    .line 2358
    invoke-static/range {v2 .. v8}, Lyads/mq2;->a(Lyads/kx5;Lyads/lq2;ZIZLyads/jx5;Lyads/hx5;)Landroid/util/Pair;

    move-result-object v4

    if-nez v4, :cond_5

    .line 2359
    invoke-virtual {v2, v6}, Lyads/kx5;->a(Z)I

    move-result v3

    move v5, v3

    move-object v3, v7

    move-wide/from16 v23, v10

    move-object v6, v15

    const/4 v15, -0x1

    const/16 v34, 0x0

    const/16 v35, 0x1

    :goto_4
    const/16 v36, 0x0

    goto/16 :goto_b

    .line 2360
    :cond_5
    iget-wide v5, v3, Lyads/lq2;->c:J

    cmp-long v3, v5, v16

    .line 2361
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v3, :cond_6

    .line 2362
    invoke-virtual {v2, v6, v8}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v3

    iget v3, v3, Lyads/hx5;->d:I

    move-wide/from16 v23, v10

    move-object v6, v15

    const/4 v5, 0x0

    move v15, v3

    goto :goto_5

    .line 2363
    :cond_6
    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide/from16 v23, v3

    const/4 v5, 0x1

    const/4 v15, -0x1

    .line 2364
    :goto_5
    iget v3, v0, Lyads/bw4;->e:I

    move/from16 v36, v5

    if-ne v3, v12, :cond_7

    move-object v3, v7

    move v5, v15

    const/4 v15, -0x1

    const/16 v34, 0x1

    :goto_6
    const/16 v35, 0x0

    goto/16 :goto_b

    :cond_7
    move-object v3, v7

    move v5, v15

    const/4 v15, -0x1

    const/16 v34, 0x0

    goto :goto_6

    :cond_8
    move-object v7, v2

    move-object v15, v6

    move-object/from16 v2, p1

    move v6, v5

    move v5, v4

    .line 2365
    iget-object v3, v0, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v3}, Lyads/kx5;->c()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2366
    invoke-virtual {v2, v6}, Lyads/kx5;->a(Z)I

    move-result v3

    move v5, v3

    move-object v3, v7

    :goto_7
    move-wide/from16 v23, v10

    move-object v6, v15

    const/4 v15, -0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    goto :goto_4

    .line 2367
    :cond_9
    invoke-virtual {v2, v15}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    move-object v3, v7

    .line 2368
    iget-object v7, v0, Lyads/bw4;->a:Lyads/kx5;

    move-object v4, v8

    move-object v8, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v15

    .line 2369
    invoke-static/range {v2 .. v8}, Lyads/mq2;->a(Lyads/jx5;Lyads/hx5;IZLjava/lang/Object;Lyads/kx5;Lyads/kx5;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v3

    move-object v3, v2

    move-object v2, v8

    move-object v8, v15

    move-object v15, v6

    move v6, v5

    if-nez v4, :cond_a

    .line 2370
    invoke-virtual {v2, v6}, Lyads/kx5;->a(Z)I

    move-result v4

    const/4 v7, 0x1

    goto :goto_a

    .line 2371
    :cond_a
    invoke-virtual {v2, v4, v8}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v4

    iget v4, v4, Lyads/hx5;->d:I

    :goto_8
    const/4 v7, 0x0

    goto :goto_a

    :cond_b
    move-object v3, v7

    cmp-long v4, v10, v16

    if-nez v4, :cond_c

    .line 2372
    invoke-virtual {v2, v15, v8}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v4

    iget v4, v4, Lyads/hx5;->d:I

    move v5, v4

    goto :goto_7

    :cond_c
    if-eqz v13, :cond_e

    .line 2373
    iget-object v4, v0, Lyads/bw4;->a:Lyads/kx5;

    iget-object v5, v14, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v4, v5, v8}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    .line 2374
    iget-object v4, v0, Lyads/bw4;->a:Lyads/kx5;

    iget v5, v8, Lyads/hx5;->d:I

    const-wide/16 v6, 0x0

    .line 2375
    invoke-virtual {v4, v5, v3, v6, v7}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object v4

    .line 2376
    iget v4, v4, Lyads/jx5;->p:I

    iget-object v5, v0, Lyads/bw4;->a:Lyads/kx5;

    iget-object v6, v14, Lyads/b14;->a:Ljava/lang/Object;

    .line 2377
    invoke-virtual {v5, v6}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_d

    .line 2378
    iget-wide v4, v8, Lyads/hx5;->f:J

    add-long v6, v10, v4

    .line 2379
    invoke-virtual {v2, v15, v8}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v4

    iget v5, v4, Lyads/hx5;->d:I

    move-object v4, v8

    .line 2380
    invoke-virtual/range {v2 .. v7}, Lyads/kx5;->a(Lyads/jx5;Lyads/hx5;IJ)Landroid/util/Pair;

    move-result-object v5

    .line 2381
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2382
    iget-object v2, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_9

    :cond_d
    move-wide v4, v10

    move-object v6, v15

    :goto_9
    move-wide/from16 v23, v4

    const/4 v5, -0x1

    const/4 v15, -0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    goto :goto_b

    :cond_e
    const/4 v4, -0x1

    goto :goto_8

    :goto_a
    move v5, v4

    move/from16 v35, v7

    move-wide/from16 v23, v10

    move-object v6, v15

    const/4 v15, -0x1

    const/16 v34, 0x0

    goto/16 :goto_4

    :goto_b
    if-eq v5, v15, :cond_f

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v2, p1

    move-object v4, v8

    .line 2383
    invoke-virtual/range {v2 .. v7}, Lyads/kx5;->a(Lyads/jx5;Lyads/hx5;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 2384
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2385
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide/from16 v32, v16

    goto :goto_c

    :cond_f
    move-object/from16 v2, p1

    move-wide/from16 v3, v23

    move-wide/from16 v32, v3

    .line 2386
    :goto_c
    invoke-virtual {v9, v2, v6, v3, v4}, Lyads/d14;->a(Lyads/kx5;Ljava/lang/Object;J)Lyads/h14;

    move-result-object v5

    .line 2387
    iget v7, v5, Lyads/b14;->e:I

    if-eq v7, v15, :cond_11

    iget v9, v14, Lyads/b14;->e:I

    if-eq v9, v15, :cond_10

    if-lt v7, v9, :cond_10

    goto :goto_d

    :cond_10
    const/4 v7, 0x0

    goto :goto_e

    :cond_11
    :goto_d
    const/4 v7, 0x1

    .line 2388
    :goto_e
    iget-object v9, v14, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 2389
    invoke-virtual {v14}, Lyads/b14;->a()Z

    move-result v9

    if-nez v9, :cond_12

    .line 2390
    invoke-virtual {v5}, Lyads/b14;->a()Z

    move-result v9

    if-nez v9, :cond_12

    if-eqz v7, :cond_12

    const/4 v7, 0x1

    goto :goto_f

    :cond_12
    const/4 v7, 0x0

    .line 2391
    :goto_f
    invoke-virtual {v2, v6, v8}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v6

    if-nez v13, :cond_17

    cmp-long v9, v10, v32

    if-nez v9, :cond_17

    .line 2392
    iget-object v9, v14, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v10, v5, Lyads/b14;->a:Ljava/lang/Object;

    .line 2393
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    goto :goto_13

    .line 2394
    :cond_13
    invoke-virtual {v14}, Lyads/b14;->a()Z

    move-result v9

    if-eqz v9, :cond_16

    iget v9, v14, Lyads/b14;->b:I

    .line 2395
    iget-object v10, v6, Lyads/hx5;->h:Lyads/a6;

    .line 2396
    invoke-virtual {v10, v9}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v9

    iget-boolean v9, v9, Lyads/z5;->h:Z

    if-eqz v9, :cond_16

    .line 2397
    iget v9, v14, Lyads/b14;->b:I

    iget v10, v14, Lyads/b14;->c:I

    .line 2398
    iget-object v11, v6, Lyads/hx5;->h:Lyads/a6;

    invoke-virtual {v11, v9}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v9

    .line 2399
    iget v11, v9, Lyads/z5;->c:I

    const/4 v15, -0x1

    if-eq v11, v15, :cond_14

    .line 2400
    iget-object v9, v9, Lyads/z5;->e:[I

    aget v9, v9, v10

    goto :goto_10

    :cond_14
    const/4 v9, 0x0

    :goto_10
    if-eq v9, v12, :cond_17

    .line 2401
    iget v9, v14, Lyads/b14;->b:I

    iget v10, v14, Lyads/b14;->c:I

    .line 2402
    iget-object v6, v6, Lyads/hx5;->h:Lyads/a6;

    invoke-virtual {v6, v9}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v6

    .line 2403
    iget v9, v6, Lyads/z5;->c:I

    if-eq v9, v15, :cond_15

    .line 2404
    iget-object v6, v6, Lyads/z5;->e:[I

    aget v6, v6, v10

    goto :goto_11

    :cond_15
    const/4 v6, 0x0

    :goto_11
    const/4 v9, 0x2

    if-eq v6, v9, :cond_17

    goto :goto_12

    .line 2405
    :cond_16
    invoke-virtual {v5}, Lyads/b14;->a()Z

    move-result v9

    if-eqz v9, :cond_17

    iget v9, v5, Lyads/b14;->b:I

    .line 2406
    iget-object v6, v6, Lyads/hx5;->h:Lyads/a6;

    .line 2407
    invoke-virtual {v6, v9}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v6

    iget-boolean v6, v6, Lyads/z5;->h:Z

    if-eqz v6, :cond_17

    :goto_12
    const/4 v6, 0x1

    goto :goto_14

    :cond_17
    :goto_13
    const/4 v6, 0x0

    :goto_14
    if-nez v7, :cond_18

    if-eqz v6, :cond_19

    :cond_18
    move-object v5, v14

    .line 2408
    :cond_19
    invoke-virtual {v5}, Lyads/b14;->a()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2409
    invoke-virtual {v5, v14}, Lyads/b14;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2410
    iget-wide v6, v0, Lyads/bw4;->r:J

    :goto_15
    move-wide/from16 v30, v6

    goto :goto_16

    .line 2411
    :cond_1a
    iget-object v0, v5, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v2, v0, v8}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    .line 2412
    iget v0, v5, Lyads/b14;->c:I

    iget v3, v5, Lyads/b14;->b:I

    invoke-virtual {v8, v3}, Lyads/hx5;->a(I)I

    move-result v3

    if-ne v0, v3, :cond_1b

    .line 2413
    iget-object v0, v8, Lyads/hx5;->h:Lyads/a6;

    iget-wide v6, v0, Lyads/a6;->c:J

    goto :goto_15

    :cond_1b
    const-wide/16 v30, 0x0

    goto :goto_16

    :cond_1c
    move-wide/from16 v30, v3

    .line 2414
    :goto_16
    new-instance v28, Lyads/kq2;

    move-object/from16 v29, v5

    invoke-direct/range {v28 .. v36}, Lyads/kq2;-><init>(Lyads/h14;JJZZZ)V

    move-object/from16 v8, v28

    .line 2415
    :goto_17
    iget-object v9, v8, Lyads/kq2;->a:Lyads/h14;

    .line 2416
    iget-wide v10, v8, Lyads/kq2;->c:J

    .line 2417
    iget-boolean v6, v8, Lyads/kq2;->d:Z

    .line 2418
    iget-wide v13, v8, Lyads/kq2;->b:J

    .line 2419
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v0, v0, Lyads/bw4;->b:Lyads/h14;

    .line 2420
    invoke-virtual {v0, v9}, Lyads/b14;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v3, v0, Lyads/bw4;->r:J

    cmp-long v0, v13, v3

    if-eqz v0, :cond_1d

    goto :goto_18

    :cond_1d
    const/4 v15, 0x0

    goto :goto_19

    :cond_1e
    :goto_18
    const/4 v15, 0x1

    :goto_19
    const/4 v3, 0x0

    const/16 v18, 0x3

    .line 2421
    :try_start_0
    iget-boolean v0, v8, Lyads/kq2;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    if-eqz v0, :cond_20

    .line 2422
    :try_start_1
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget v0, v0, Lyads/bw4;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1f

    .line 2423
    :try_start_2
    invoke-virtual {v1, v12}, Lyads/mq2;->b(I)V

    :cond_1f
    const/4 v5, 0x0

    goto :goto_1c

    :catchall_0
    move-exception v0

    :goto_1a
    move-object v12, v2

    move/from16 v27, v4

    :goto_1b
    move-object v2, v9

    move-wide v9, v10

    move-wide/from16 v24, v13

    goto/16 :goto_2b

    .line 2424
    :goto_1c
    invoke-virtual {v1, v5, v5, v5, v4}, Lyads/mq2;->a(ZZZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1d

    :catchall_1
    move-exception v0

    const/4 v4, 0x1

    goto :goto_1a

    :cond_20
    const/4 v4, 0x1

    :goto_1d
    if-nez v15, :cond_22

    .line 2425
    :try_start_3
    iget-object v2, v1, Lyads/mq2;->s:Lyads/d14;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move/from16 v27, v4

    :try_start_4
    iget-wide v4, v1, Lyads/mq2;->L:J

    .line 2426
    invoke-virtual {v1}, Lyads/mq2;->b()J

    move-result-wide v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v12, v3

    move-object/from16 v3, p1

    .line 2427
    :try_start_5
    invoke-virtual/range {v2 .. v7}, Lyads/d14;->a(Lyads/kx5;JJ)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v7, v3

    if-nez v0, :cond_21

    const/4 v5, 0x0

    .line 2428
    :try_start_6
    invoke-virtual {v1, v5}, Lyads/mq2;->b(Z)V

    :cond_21
    move-object v2, v9

    move-wide/from16 v24, v13

    goto/16 :goto_26

    :catchall_2
    move-exception v0

    :goto_1e
    move-object v12, v7

    goto :goto_1b

    :catchall_3
    move-exception v0

    move-object v7, v3

    goto :goto_1e

    :catchall_4
    move-exception v0

    move-object/from16 v7, p1

    move-object v12, v3

    goto :goto_1e

    :catchall_5
    move-exception v0

    move-object/from16 v7, p1

    move-object v12, v3

    move/from16 v27, v4

    goto :goto_1e

    :cond_22
    move-object v7, v2

    move-object v12, v3

    move/from16 v27, v4

    .line 2429
    invoke-virtual {v7}, Lyads/kx5;->c()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v0, :cond_21

    .line 2430
    :try_start_7
    iget-object v0, v1, Lyads/mq2;->s:Lyads/d14;

    .line 2431
    iget-object v0, v0, Lyads/d14;->h:Lyads/a14;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    :goto_1f
    if-eqz v0, :cond_25

    .line 2432
    :try_start_8
    iget-object v2, v0, Lyads/a14;->f:Lyads/c14;

    iget-object v2, v2, Lyads/c14;->a:Lyads/h14;

    invoke-virtual {v2, v9}, Lyads/b14;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2433
    iget-object v2, v1, Lyads/mq2;->s:Lyads/d14;

    iget-object v3, v0, Lyads/a14;->f:Lyads/c14;

    invoke-virtual {v2, v7, v3}, Lyads/d14;->a(Lyads/kx5;Lyads/c14;)Lyads/c14;

    move-result-object v2

    iput-object v2, v0, Lyads/a14;->f:Lyads/c14;

    .line 2434
    iget-object v3, v0, Lyads/a14;->a:Ljava/lang/Object;

    instance-of v4, v3, Lyads/t00;

    if-eqz v4, :cond_24

    .line 2435
    iget-wide v4, v2, Lyads/c14;->d:J

    cmp-long v2, v4, v16

    if-nez v2, :cond_23

    const-wide/high16 v4, -0x8000000000000000L

    .line 2436
    :cond_23
    check-cast v3, Lyads/t00;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    move-wide/from16 v24, v13

    const-wide/16 v12, 0x0

    .line 2437
    :try_start_9
    iput-wide v12, v3, Lyads/t00;->f:J

    .line 2438
    iput-wide v4, v3, Lyads/t00;->g:J

    goto :goto_22

    :catchall_6
    move-exception v0

    :goto_20
    move-object v12, v7

    move-object v2, v9

    :goto_21
    move-wide v9, v10

    goto/16 :goto_2b

    :catchall_7
    move-exception v0

    move-wide/from16 v24, v13

    goto :goto_20

    :cond_24
    move-wide/from16 v24, v13

    const-wide/16 v12, 0x0

    .line 2439
    :goto_22
    iget-object v0, v0, Lyads/a14;->l:Lyads/a14;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-wide/from16 v13, v24

    const/4 v12, 0x0

    goto :goto_1f

    :cond_25
    move-wide/from16 v24, v13

    .line 2440
    :try_start_a
    iget-object v0, v1, Lyads/mq2;->s:Lyads/d14;

    .line 2441
    iget-object v2, v0, Lyads/d14;->h:Lyads/a14;

    .line 2442
    iget-object v0, v0, Lyads/d14;->i:Lyads/a14;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    if-eq v2, v0, :cond_26

    move/from16 v5, v27

    :goto_23
    move-object v2, v9

    move-wide/from16 v3, v24

    goto :goto_24

    :cond_26
    const/4 v5, 0x0

    goto :goto_23

    .line 2443
    :goto_24
    :try_start_b
    invoke-virtual/range {v1 .. v6}, Lyads/mq2;->a(Lyads/h14;JZZ)J

    move-result-wide v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-wide/from16 v24, v3

    goto :goto_26

    :catchall_8
    move-exception v0

    move-wide/from16 v24, v3

    :goto_25
    move-object v12, v7

    goto :goto_21

    :catchall_9
    move-exception v0

    move-object v2, v9

    goto :goto_25

    :catchall_a
    move-exception v0

    move-object v2, v9

    move-wide/from16 v24, v13

    goto :goto_25

    .line 2444
    :goto_26
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v4, v0, Lyads/bw4;->a:Lyads/kx5;

    iget-object v5, v0, Lyads/bw4;->b:Lyads/h14;

    .line 2445
    iget-boolean v0, v8, Lyads/kq2;->f:Z

    move-object v3, v2

    move-object v2, v7

    if-eqz v0, :cond_27

    move-wide/from16 v6, v24

    goto :goto_27

    :cond_27
    move-wide/from16 v6, v16

    .line 2446
    :goto_27
    invoke-virtual/range {v1 .. v7}, Lyads/mq2;->a(Lyads/kx5;Lyads/h14;Lyads/kx5;Lyads/h14;J)V

    move-object v12, v2

    move-object v2, v3

    if-nez v15, :cond_28

    .line 2447
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v3, v0, Lyads/bw4;->c:J

    cmp-long v0, v10, v3

    if-eqz v0, :cond_2b

    .line 2448
    :cond_28
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v3, v0, Lyads/bw4;->b:Lyads/h14;

    iget-object v3, v3, Lyads/b14;->a:Ljava/lang/Object;

    .line 2449
    iget-object v0, v0, Lyads/bw4;->a:Lyads/kx5;

    if-eqz v15, :cond_29

    if-eqz p2, :cond_29

    .line 2450
    invoke-virtual {v0}, Lyads/kx5;->c()Z

    move-result v4

    if-nez v4, :cond_29

    iget-object v4, v1, Lyads/mq2;->m:Lyads/hx5;

    .line 2451
    invoke-virtual {v0, v3, v4}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v0

    iget-boolean v0, v0, Lyads/hx5;->g:Z

    if-nez v0, :cond_29

    move/from16 v9, v27

    goto :goto_28

    :cond_29
    const/4 v9, 0x0

    .line 2452
    :goto_28
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v7, v0, Lyads/bw4;->d:J

    .line 2453
    invoke-virtual {v12, v3}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v15, -0x1

    move-wide v5, v10

    if-ne v0, v15, :cond_2a

    const/4 v10, 0x4

    :goto_29
    move-wide/from16 v3, v24

    goto :goto_2a

    :cond_2a
    move/from16 v10, v18

    goto :goto_29

    .line 2454
    :goto_2a
    invoke-virtual/range {v1 .. v10}, Lyads/mq2;->a(Lyads/h14;JJJZI)Lyads/bw4;

    move-result-object v0

    iput-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    .line 2455
    :cond_2b
    invoke-virtual {v1}, Lyads/mq2;->k()V

    .line 2456
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v0, v0, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v1, v12, v0}, Lyads/mq2;->a(Lyads/kx5;Lyads/kx5;)V

    .line 2457
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    invoke-virtual {v0, v12}, Lyads/bw4;->a(Lyads/kx5;)Lyads/bw4;

    move-result-object v0

    iput-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    .line 2458
    invoke-virtual {v12}, Lyads/kx5;->c()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v14, 0x0

    .line 2459
    iput-object v14, v1, Lyads/mq2;->K:Lyads/lq2;

    :cond_2c
    const/4 v5, 0x0

    .line 2460
    invoke-virtual {v1, v5}, Lyads/mq2;->a(Z)V

    return-void

    :catchall_b
    move-exception v0

    move-object v12, v2

    move-object v2, v9

    move-wide v9, v10

    move-wide/from16 v24, v13

    const/16 v27, 0x1

    .line 2461
    :goto_2b
    iget-object v3, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v4, v3, Lyads/bw4;->a:Lyads/kx5;

    iget-object v5, v3, Lyads/bw4;->b:Lyads/h14;

    .line 2462
    iget-boolean v3, v8, Lyads/kq2;->f:Z

    if-eqz v3, :cond_2d

    move-wide/from16 v6, v24

    :goto_2c
    move-object v3, v2

    move-object v2, v12

    goto :goto_2d

    :cond_2d
    move-wide/from16 v6, v16

    goto :goto_2c

    .line 2463
    :goto_2d
    invoke-virtual/range {v1 .. v7}, Lyads/mq2;->a(Lyads/kx5;Lyads/h14;Lyads/kx5;Lyads/h14;J)V

    move-object v12, v2

    move-object v2, v3

    if-nez v15, :cond_2e

    .line 2464
    iget-object v3, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v3, v3, Lyads/bw4;->c:J

    cmp-long v3, v9, v3

    if-eqz v3, :cond_31

    .line 2465
    :cond_2e
    iget-object v3, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v4, v3, Lyads/bw4;->b:Lyads/h14;

    iget-object v4, v4, Lyads/b14;->a:Ljava/lang/Object;

    .line 2466
    iget-object v3, v3, Lyads/bw4;->a:Lyads/kx5;

    if-eqz v15, :cond_2f

    if-eqz p2, :cond_2f

    .line 2467
    invoke-virtual {v3}, Lyads/kx5;->c()Z

    move-result v5

    if-nez v5, :cond_2f

    iget-object v5, v1, Lyads/mq2;->m:Lyads/hx5;

    .line 2468
    invoke-virtual {v3, v4, v5}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v3

    iget-boolean v3, v3, Lyads/hx5;->g:Z

    if-nez v3, :cond_2f

    move/from16 v7, v27

    goto :goto_2e

    :cond_2f
    const/4 v7, 0x0

    .line 2469
    :goto_2e
    iget-object v3, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v5, v3, Lyads/bw4;->d:J

    .line 2470
    invoke-virtual {v12, v4}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v3

    const/4 v15, -0x1

    if-ne v3, v15, :cond_30

    move-wide v3, v9

    const/4 v10, 0x4

    :goto_2f
    move v9, v7

    move-wide v7, v5

    move-wide v5, v3

    move-wide/from16 v3, v24

    goto :goto_30

    :cond_30
    move-wide v3, v9

    move/from16 v10, v18

    goto :goto_2f

    .line 2471
    :goto_30
    invoke-virtual/range {v1 .. v10}, Lyads/mq2;->a(Lyads/h14;JJJZI)Lyads/bw4;

    move-result-object v2

    iput-object v2, v1, Lyads/mq2;->x:Lyads/bw4;

    .line 2472
    :cond_31
    invoke-virtual {v1}, Lyads/mq2;->k()V

    .line 2473
    iget-object v2, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v2, v2, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v1, v12, v2}, Lyads/mq2;->a(Lyads/kx5;Lyads/kx5;)V

    .line 2474
    iget-object v2, v1, Lyads/mq2;->x:Lyads/bw4;

    invoke-virtual {v2, v12}, Lyads/bw4;->a(Lyads/kx5;)Lyads/bw4;

    move-result-object v2

    iput-object v2, v1, Lyads/mq2;->x:Lyads/bw4;

    .line 2475
    invoke-virtual {v12}, Lyads/kx5;->c()Z

    move-result v2

    if-nez v2, :cond_32

    const/4 v14, 0x0

    .line 2476
    iput-object v14, v1, Lyads/mq2;->K:Lyads/lq2;

    :cond_32
    const/4 v5, 0x0

    .line 2477
    invoke-virtual {v1, v5}, Lyads/mq2;->a(Z)V

    .line 2478
    throw v0
.end method

.method public final a(Lyads/lq2;)V
    .locals 18

    move-object/from16 v1, p0

    .line 2136
    iget-object v0, v1, Lyads/mq2;->y:Lyads/iq2;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lyads/iq2;->a(I)V

    .line 2137
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v2, v0, Lyads/bw4;->a:Lyads/kx5;

    iget v5, v1, Lyads/mq2;->E:I

    iget-boolean v6, v1, Lyads/mq2;->F:Z

    iget-object v7, v1, Lyads/mq2;->l:Lyads/jx5;

    iget-object v8, v1, Lyads/mq2;->m:Lyads/hx5;

    const/4 v4, 0x1

    move-object/from16 v3, p1

    .line 2138
    invoke-static/range {v2 .. v8}, Lyads/mq2;->a(Lyads/kx5;Lyads/lq2;ZIZLyads/jx5;Lyads/hx5;)Landroid/util/Pair;

    move-result-object v0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 2139
    iget-object v2, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v2, v2, Lyads/bw4;->a:Lyads/kx5;

    .line 2140
    invoke-virtual {v1, v2}, Lyads/mq2;->a(Lyads/kx5;)Landroid/util/Pair;

    move-result-object v2

    .line 2141
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lyads/h14;

    .line 2142
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 2143
    iget-object v2, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v2, v2, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v2}, Lyads/kx5;->c()Z

    move-result v2

    xor-int/2addr v2, v9

    move-wide v5, v6

    const-wide/16 v15, 0x0

    goto :goto_4

    .line 2144
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2145
    iget-object v10, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 2146
    iget-wide v13, v3, Lyads/lq2;->c:J

    cmp-long v10, v13, v6

    if-nez v10, :cond_1

    move-wide v13, v6

    goto :goto_0

    :cond_1
    move-wide v13, v11

    .line 2147
    :goto_0
    iget-object v10, v1, Lyads/mq2;->s:Lyads/d14;

    iget-object v15, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v15, v15, Lyads/bw4;->a:Lyads/kx5;

    .line 2148
    invoke-virtual {v10, v15, v2, v11, v12}, Lyads/d14;->a(Lyads/kx5;Ljava/lang/Object;J)Lyads/h14;

    move-result-object v10

    .line 2149
    invoke-virtual {v10}, Lyads/b14;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2150
    iget-object v2, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v2, v2, Lyads/bw4;->a:Lyads/kx5;

    iget-object v6, v10, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v7, v1, Lyads/mq2;->m:Lyads/hx5;

    invoke-virtual {v2, v6, v7}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    .line 2151
    iget-object v2, v1, Lyads/mq2;->m:Lyads/hx5;

    iget v6, v10, Lyads/b14;->b:I

    invoke-virtual {v2, v6}, Lyads/hx5;->a(I)I

    move-result v2

    iget v6, v10, Lyads/b14;->c:I

    if-ne v2, v6, :cond_2

    .line 2152
    iget-object v2, v1, Lyads/mq2;->m:Lyads/hx5;

    .line 2153
    iget-object v2, v2, Lyads/hx5;->h:Lyads/a6;

    .line 2154
    iget-wide v6, v2, Lyads/a6;->c:J

    move-wide v11, v6

    :goto_1
    const-wide/16 v15, 0x0

    goto :goto_2

    :cond_2
    const-wide/16 v11, 0x0

    goto :goto_1

    :cond_3
    const-wide/16 v15, 0x0

    .line 2155
    iget-wide v4, v3, Lyads/lq2;->c:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    :goto_2
    move v2, v9

    :goto_3
    move-wide v5, v13

    goto :goto_4

    :cond_4
    move v2, v8

    goto :goto_3

    .line 2156
    :goto_4
    :try_start_0
    iget-object v4, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v4, v4, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v4}, Lyads/kx5;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2157
    iput-object v3, v1, Lyads/mq2;->K:Lyads/lq2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move v9, v2

    :goto_5
    move-object v2, v10

    :goto_6
    move-wide v3, v11

    goto/16 :goto_12

    .line 2158
    :cond_5
    iget-object v3, v1, Lyads/mq2;->x:Lyads/bw4;

    const/4 v4, 0x4

    if-nez v0, :cond_7

    .line 2159
    :try_start_1
    iget v0, v3, Lyads/bw4;->e:I

    if-eq v0, v9, :cond_6

    .line 2160
    invoke-virtual {v1, v4}, Lyads/mq2;->b(I)V

    .line 2161
    :cond_6
    invoke-virtual {v1, v8, v9, v8, v9}, Lyads/mq2;->a(ZZZZ)V

    :goto_7
    move v9, v2

    move-object v2, v10

    move-wide v3, v11

    goto/16 :goto_f

    .line 2162
    :cond_7
    iget-object v0, v3, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v10, v0}, Lyads/b14;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_b

    .line 2163
    :try_start_2
    iget-object v0, v1, Lyads/mq2;->s:Lyads/d14;

    .line 2164
    iget-object v0, v0, Lyads/d14;->h:Lyads/a14;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_8

    .line 2165
    :try_start_3
    iget-boolean v3, v0, Lyads/a14;->d:Z

    if-eqz v3, :cond_8

    cmp-long v3, v11, v15

    if-eqz v3, :cond_8

    .line 2166
    iget-object v0, v0, Lyads/a14;->a:Ljava/lang/Object;

    iget-object v3, v1, Lyads/mq2;->w:Lyads/th5;

    .line 2167
    invoke-interface {v0, v11, v12, v3}, Lyads/z04;->a(JLyads/th5;)J

    move-result-wide v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    :cond_8
    move-wide v13, v11

    .line 2168
    :goto_8
    :try_start_4
    invoke-static {v13, v14}, Lyads/u56;->b(J)J

    move-result-wide v15

    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v8, v0, Lyads/bw4;->r:J

    invoke-static {v8, v9}, Lyads/u56;->b(J)J

    move-result-wide v8

    cmp-long v0, v15, v8

    if-nez v0, :cond_9

    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget v3, v0, Lyads/bw4;->e:I

    const/4 v8, 0x2

    if-eq v3, v8, :cond_a

    const/4 v8, 0x3

    if-ne v3, v8, :cond_9

    goto :goto_9

    :cond_9
    move v9, v2

    move-wide v15, v5

    move-object v2, v10

    goto :goto_a

    .line 2169
    :cond_a
    :goto_9
    iget-wide v3, v0, Lyads/bw4;->r:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v9, v2

    move-object v2, v10

    const/4 v10, 0x2

    move-wide v7, v3

    .line 2170
    invoke-virtual/range {v1 .. v10}, Lyads/mq2;->a(Lyads/h14;JJJZI)Lyads/bw4;

    move-result-object v0

    iput-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    return-void

    :catchall_1
    move-exception v0

    move v9, v2

    move-wide v15, v5

    goto :goto_5

    :cond_b
    move v9, v2

    move-wide v15, v5

    move-object v2, v10

    move-wide v13, v11

    .line 2171
    :goto_a
    :try_start_5
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget v0, v0, Lyads/bw4;->e:I

    if-ne v0, v4, :cond_c

    const/4 v6, 0x1

    goto :goto_b

    :cond_c
    const/4 v6, 0x0

    .line 2172
    :goto_b
    iget-object v0, v1, Lyads/mq2;->s:Lyads/d14;

    .line 2173
    iget-object v3, v0, Lyads/d14;->h:Lyads/a14;

    .line 2174
    iget-object v0, v0, Lyads/d14;->i:Lyads/a14;

    if-eq v3, v0, :cond_d

    const/4 v5, 0x1

    :goto_c
    move-wide v3, v13

    goto :goto_d

    :cond_d
    const/4 v5, 0x0

    goto :goto_c

    .line 2175
    :goto_d
    invoke-virtual/range {v1 .. v6}, Lyads/mq2;->a(Lyads/h14;JZZ)J

    move-result-wide v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    cmp-long v0, v11, v13

    if-eqz v0, :cond_e

    const/16 v17, 0x1

    goto :goto_e

    :cond_e
    const/16 v17, 0x0

    :goto_e
    or-int v8, v9, v17

    .line 2176
    :try_start_6
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v3, v2

    :try_start_7
    iget-object v2, v0, Lyads/bw4;->a:Lyads/kx5;

    iget-object v5, v0, Lyads/bw4;->b:Lyads/h14;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v4, v2

    move-wide v6, v15

    :try_start_8
    invoke-virtual/range {v1 .. v7}, Lyads/mq2;->a(Lyads/kx5;Lyads/h14;Lyads/kx5;Lyads/h14;J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v2, v3

    move-wide v5, v6

    move v9, v8

    move-wide v3, v13

    :goto_f
    const/4 v10, 0x2

    move-wide v7, v3

    move-object/from16 v1, p0

    .line 2177
    invoke-virtual/range {v1 .. v10}, Lyads/mq2;->a(Lyads/h14;JJJZI)Lyads/bw4;

    move-result-object v0

    iput-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    return-void

    :catchall_2
    move-exception v0

    move-object v2, v3

    move-wide v5, v6

    :goto_10
    move v9, v8

    move-wide v3, v13

    goto :goto_12

    :catchall_3
    move-exception v0

    move-object v2, v3

    :goto_11
    move-wide v5, v15

    goto :goto_10

    :catchall_4
    move-exception v0

    goto :goto_11

    :catchall_5
    move-exception v0

    move-wide v5, v15

    goto/16 :goto_6

    :goto_12
    const/4 v10, 0x2

    move-wide v7, v3

    invoke-virtual/range {v1 .. v10}, Lyads/mq2;->a(Lyads/h14;JJJZI)Lyads/bw4;

    move-result-object v2

    iput-object v2, v1, Lyads/mq2;->x:Lyads/bw4;

    .line 2178
    throw v0
.end method

.method public final a(Lyads/q06;)V
    .locals 5

    .line 2653
    iget-object v0, p0, Lyads/mq2;->g:Lyads/kl0;

    iget-object p0, p0, Lyads/mq2;->b:[Lyads/gs;

    iget-object p1, p1, Lyads/q06;->c:[Lyads/er2;

    .line 2654
    iget v1, v0, Lyads/kl0;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    move v2, v1

    .line 2655
    :goto_0
    array-length v3, p0

    const/high16 v4, 0xc80000

    if-ge v1, v3, :cond_1

    .line 2656
    aget-object v3, p1, v1

    if-eqz v3, :cond_0

    .line 2657
    aget-object v3, p0, v1

    .line 2658
    iget v3, v3, Lyads/gs;->b:I

    packed-switch v3, :pswitch_data_0

    .line 2659
    invoke-static {}, Lmi2;->b()V

    return-void

    :pswitch_0
    const/high16 v4, 0x20000

    goto :goto_1

    :pswitch_1
    const/high16 v4, 0x7d00000

    goto :goto_1

    :pswitch_2
    const/high16 v4, 0x89a0000

    :goto_1
    :pswitch_3
    add-int/2addr v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2660
    :cond_1
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2661
    :cond_2
    iput v1, v0, Lyads/kl0;->i:I

    .line 2662
    iget-object p0, v0, Lyads/kl0;->a:Lyads/aj0;

    invoke-virtual {p0, v1}, Lyads/aj0;->a(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lyads/ui5;)V
    .locals 1

    .line 2119
    check-cast p1, Lyads/z04;

    .line 2120
    iget-object p0, p0, Lyads/mq2;->i:Lyads/gu5;

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lyads/gu5;->a(ILjava/lang/Object;)Lyads/fu5;

    move-result-object p0

    invoke-virtual {p0}, Lyads/fu5;->b()V

    return-void
.end method

.method public final declared-synchronized a(Lyads/ut5;J)V
    .locals 5

    monitor-enter p0

    .line 2031
    :try_start_0
    iget-object v0, p0, Lyads/mq2;->q:Lyads/du5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2032
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    .line 2033
    :goto_0
    invoke-interface {p1}, Lyads/ut5;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_0

    .line 2034
    :try_start_1
    iget-object v3, p0, Lyads/mq2;->q:Lyads/du5;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2035
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    const/4 p2, 0x1

    move v2, p2

    .line 2036
    :goto_1
    :try_start_2
    iget-object p2, p0, Lyads/mq2;->q:Lyads/du5;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2037
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 2038
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final a(Lyads/z04;)V
    .locals 1

    .line 2030
    iget-object p0, p0, Lyads/mq2;->i:Lyads/gu5;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lyads/gu5;->a(ILjava/lang/Object;)Lyads/fu5;

    move-result-object p0

    invoke-virtual {p0}, Lyads/fu5;->b()V

    return-void
.end method

.method public final a(Z)V
    .locals 8

    .line 2629
    iget-object v0, p0, Lyads/mq2;->s:Lyads/d14;

    .line 2630
    iget-object v0, v0, Lyads/d14;->j:Lyads/a14;

    if-nez v0, :cond_0

    .line 2631
    iget-object v1, p0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v1, v1, Lyads/bw4;->b:Lyads/h14;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lyads/a14;->f:Lyads/c14;

    iget-object v1, v1, Lyads/c14;->a:Lyads/h14;

    .line 2632
    :goto_0
    iget-object v2, p0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v2, v2, Lyads/bw4;->k:Lyads/h14;

    .line 2633
    invoke-virtual {v2, v1}, Lyads/b14;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2634
    iget-object v3, p0, Lyads/mq2;->x:Lyads/bw4;

    invoke-virtual {v3, v1}, Lyads/bw4;->a(Lyads/h14;)Lyads/bw4;

    move-result-object v1

    iput-object v1, p0, Lyads/mq2;->x:Lyads/bw4;

    .line 2635
    :cond_1
    iget-object v1, p0, Lyads/mq2;->x:Lyads/bw4;

    if-nez v0, :cond_2

    .line 2636
    iget-wide v3, v1, Lyads/bw4;->r:J

    goto :goto_2

    .line 2637
    :cond_2
    iget-boolean v3, v0, Lyads/a14;->d:Z

    if-nez v3, :cond_3

    .line 2638
    iget-object v3, v0, Lyads/a14;->f:Lyads/c14;

    iget-wide v3, v3, Lyads/c14;->b:J

    goto :goto_2

    .line 2639
    :cond_3
    iget-boolean v3, v0, Lyads/a14;->e:Z

    const-wide/high16 v4, -0x8000000000000000L

    if-eqz v3, :cond_4

    iget-object v3, v0, Lyads/a14;->a:Ljava/lang/Object;

    invoke-interface {v3}, Lyads/ui5;->getBufferedPositionUs()J

    move-result-wide v6

    goto :goto_1

    :cond_4
    move-wide v6, v4

    :goto_1
    cmp-long v3, v6, v4

    if-nez v3, :cond_5

    .line 2640
    iget-object v3, v0, Lyads/a14;->f:Lyads/c14;

    iget-wide v3, v3, Lyads/c14;->e:J

    goto :goto_2

    :cond_5
    move-wide v3, v6

    .line 2641
    :goto_2
    iput-wide v3, v1, Lyads/bw4;->p:J

    .line 2642
    iget-object v1, p0, Lyads/mq2;->x:Lyads/bw4;

    .line 2643
    iget-wide v3, v1, Lyads/bw4;->p:J

    invoke-virtual {p0, v3, v4}, Lyads/mq2;->a(J)J

    move-result-wide v3

    .line 2644
    iput-wide v3, v1, Lyads/bw4;->q:J

    if-eqz v2, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    if-eqz v0, :cond_7

    .line 2645
    iget-boolean p1, v0, Lyads/a14;->d:Z

    if-eqz p1, :cond_7

    .line 2646
    iget-object p1, v0, Lyads/a14;->n:Lyads/q06;

    .line 2647
    invoke-virtual {p0, p1}, Lyads/mq2;->a(Lyads/q06;)V

    :cond_7
    return-void
.end method

.method public final a(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 5

    .line 2217
    iget-boolean v0, p0, Lyads/mq2;->G:Z

    if-eq v0, p1, :cond_2

    .line 2218
    iput-boolean p1, p0, Lyads/mq2;->G:Z

    if-nez p1, :cond_2

    .line 2219
    iget-object p1, p0, Lyads/mq2;->b:[Lyads/gs;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 2220
    invoke-static {v2}, Lyads/mq2;->b(Lyads/gs;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lyads/mq2;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2221
    iget v3, v2, Lyads/gs;->g:I

    if-nez v3, :cond_0

    .line 2222
    iget-object v3, v2, Lyads/gs;->c:Lyads/a03;

    const/4 v4, 0x0

    .line 2223
    iput-object v4, v3, Lyads/a03;->a:Lyads/eo2;

    .line 2224
    iput-object v4, v3, Lyads/a03;->b:Lyads/vz2;

    .line 2225
    invoke-virtual {v2}, Lyads/gs;->h()V

    goto :goto_1

    .line 2226
    :cond_0
    invoke-static {}, Lud;->g()V

    return-void

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 2227
    monitor-enter p0

    const/4 p1, 0x1

    .line 2228
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2229
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2230
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public final a(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 2231
    iget-boolean p1, p0, Lyads/mq2;->G:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    invoke-virtual {p0, p1, v0, v1, v0}, Lyads/mq2;->a(ZZZZ)V

    .line 2232
    iget-object p1, p0, Lyads/mq2;->y:Lyads/iq2;

    invoke-virtual {p1, p2}, Lyads/iq2;->a(I)V

    .line 2233
    iget-object p1, p0, Lyads/mq2;->g:Lyads/kl0;

    .line 2234
    invoke-virtual {p1, v1}, Lyads/kl0;->a(Z)V

    .line 2235
    invoke-virtual {p0, v1}, Lyads/mq2;->b(I)V

    return-void
.end method

.method public final a(ZZZZ)V
    .locals 28

    move-object/from16 v1, p0

    .line 2236
    iget-object v0, v1, Lyads/mq2;->i:Lyads/gu5;

    const/4 v2, 0x2

    .line 2237
    iget-object v0, v0, Lyads/gu5;->a:Landroid/os/Handler;

    .line 2238
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x0

    .line 2239
    iput-object v2, v1, Lyads/mq2;->O:Lyads/up2;

    const/4 v3, 0x0

    .line 2240
    iput-boolean v3, v1, Lyads/mq2;->C:Z

    .line 2241
    iget-object v0, v1, Lyads/mq2;->o:Lyads/ml0;

    .line 2242
    iput-boolean v3, v0, Lyads/ml0;->g:Z

    .line 2243
    iget-object v0, v0, Lyads/ml0;->b:Lyads/eq5;

    .line 2244
    iget-boolean v4, v0, Lyads/eq5;->c:Z

    if-eqz v4, :cond_0

    .line 2245
    invoke-virtual {v0}, Lyads/eq5;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lyads/eq5;->a(J)V

    .line 2246
    iput-boolean v3, v0, Lyads/eq5;->c:Z

    :cond_0
    const-wide v4, 0xe8d4a51000L

    .line 2247
    iput-wide v4, v1, Lyads/mq2;->L:J

    .line 2248
    iget-object v4, v1, Lyads/mq2;->b:[Lyads/gs;

    array-length v5, v4

    move v6, v3

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v5, :cond_1

    aget-object v0, v4, v6

    .line 2249
    :try_start_0
    invoke-virtual {v1, v0}, Lyads/mq2;->a(Lyads/gs;)V
    :try_end_0
    .catch Lyads/up2; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2250
    :goto_1
    const-string v8, "Disable failed."

    .line 2251
    invoke-static {v8, v0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    .line 2252
    iget-object v4, v1, Lyads/mq2;->b:[Lyads/gs;

    array-length v5, v4

    move v6, v3

    :goto_3
    if-ge v6, v5, :cond_4

    aget-object v0, v4, v6

    .line 2253
    iget-object v8, v1, Lyads/mq2;->c:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2254
    :try_start_1
    iget v8, v0, Lyads/gs;->g:I

    if-nez v8, :cond_2

    .line 2255
    iget-object v8, v0, Lyads/gs;->c:Lyads/a03;

    .line 2256
    iput-object v2, v8, Lyads/a03;->a:Lyads/eo2;

    .line 2257
    iput-object v2, v8, Lyads/a03;->b:Lyads/vz2;

    .line 2258
    invoke-virtual {v0}, Lyads/gs;->h()V

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    .line 2259
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2260
    :goto_4
    const-string v8, "Reset failed."

    .line 2261
    invoke-static {v8, v0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2262
    :cond_4
    iput v3, v1, Lyads/mq2;->J:I

    .line 2263
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v4, v0, Lyads/bw4;->b:Lyads/h14;

    .line 2264
    iget-wide v5, v0, Lyads/bw4;->r:J

    .line 2265
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v0, v0, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v0}, Lyads/b14;->a()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v7, v1, Lyads/mq2;->m:Lyads/hx5;

    .line 2266
    iget-object v8, v0, Lyads/bw4;->b:Lyads/h14;

    .line 2267
    iget-object v0, v0, Lyads/bw4;->a:Lyads/kx5;

    .line 2268
    invoke-virtual {v0}, Lyads/kx5;->c()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v8, v8, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v0, v8, v7}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v0

    iget-boolean v0, v0, Lyads/hx5;->g:Z

    if-eqz v0, :cond_5

    goto :goto_6

    .line 2269
    :cond_5
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v7, v0, Lyads/bw4;->r:J

    goto :goto_7

    .line 2270
    :cond_6
    :goto_6
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v7, v0, Lyads/bw4;->c:J

    :goto_7
    if-eqz p2, :cond_7

    .line 2271
    iput-object v2, v1, Lyads/mq2;->K:Lyads/lq2;

    .line 2272
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v0, v0, Lyads/bw4;->a:Lyads/kx5;

    .line 2273
    invoke-virtual {v1, v0}, Lyads/mq2;->a(Lyads/kx5;)Landroid/util/Pair;

    move-result-object v0

    .line 2274
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lyads/h14;

    .line 2275
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2276
    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v0, v0, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v4, v0}, Lyads/b14;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_8
    move-wide v9, v5

    move-object v6, v4

    goto :goto_9

    :cond_7
    move v0, v3

    goto :goto_8

    .line 2277
    :goto_9
    iget-object v4, v1, Lyads/mq2;->s:Lyads/d14;

    invoke-virtual {v4}, Lyads/d14;->b()V

    .line 2278
    iput-boolean v3, v1, Lyads/mq2;->D:Z

    .line 2279
    new-instance v4, Lyads/bw4;

    iget-object v5, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-object v11, v5, Lyads/bw4;->a:Lyads/kx5;

    move-object v12, v11

    iget v11, v5, Lyads/bw4;->e:I

    if-eqz p4, :cond_8

    goto :goto_a

    .line 2280
    :cond_8
    iget-object v2, v5, Lyads/bw4;->f:Lyads/up2;

    :goto_a
    if-eqz v0, :cond_9

    .line 2281
    sget-object v13, Lyads/g06;->e:Lyads/g06;

    :goto_b
    move-object v14, v13

    goto :goto_c

    :cond_9
    iget-object v13, v5, Lyads/bw4;->h:Lyads/g06;

    goto :goto_b

    :goto_c
    if-eqz v0, :cond_a

    .line 2282
    iget-object v13, v1, Lyads/mq2;->f:Lyads/q06;

    :goto_d
    move-object v15, v13

    goto :goto_e

    :cond_a
    iget-object v13, v5, Lyads/bw4;->i:Lyads/q06;

    goto :goto_d

    :goto_e
    if-eqz v0, :cond_b

    .line 2283
    sget-object v0, Lyads/oe3;->c:Lyads/le3;

    .line 2284
    sget-object v0, Lyads/k55;->f:Lyads/k55;

    :goto_f
    move-object/from16 v16, v0

    goto :goto_10

    .line 2285
    :cond_b
    iget-object v0, v5, Lyads/bw4;->j:Ljava/util/List;

    goto :goto_f

    :goto_10
    iget-boolean v0, v5, Lyads/bw4;->l:Z

    iget v13, v5, Lyads/bw4;->m:I

    iget-object v5, v5, Lyads/bw4;->n:Lyads/dw4;

    const-wide/16 v23, 0x0

    const/16 v27, 0x0

    move/from16 v19, v13

    const/4 v13, 0x0

    move-object/from16 v17, v6

    move-wide/from16 v21, v9

    move-wide/from16 v25, v9

    move/from16 v18, v0

    move-object/from16 v20, v5

    move-object v5, v12

    move-object v12, v2

    invoke-direct/range {v4 .. v27}, Lyads/bw4;-><init>(Lyads/kx5;Lyads/h14;JJILyads/up2;ZLyads/g06;Lyads/q06;Ljava/util/List;Lyads/h14;ZILyads/dw4;JJJZ)V

    iput-object v4, v1, Lyads/mq2;->x:Lyads/bw4;

    if-eqz p3, :cond_d

    .line 2286
    iget-object v1, v1, Lyads/mq2;->t:Lyads/q14;

    .line 2287
    iget-object v0, v1, Lyads/q14;->h:Ljava/util/HashMap;

    .line 2288
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lyads/o14;

    .line 2289
    :try_start_2
    iget-object v0, v4, Lyads/o14;->a:Lyads/cs;

    iget-object v5, v4, Lyads/o14;->b:Lyads/i14;

    invoke-virtual {v0, v5}, Lyads/cs;->c(Lyads/i14;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_12

    :catch_3
    move-exception v0

    .line 2290
    const-string v5, "Failed to release child source."

    .line 2291
    invoke-static {v5, v0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "MediaSourceList"

    invoke-static {v5, v0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    :goto_12
    iget-object v0, v4, Lyads/o14;->a:Lyads/cs;

    iget-object v5, v4, Lyads/o14;->c:Lyads/n14;

    invoke-virtual {v0, v5}, Lyads/cs;->a(Lyads/l14;)V

    .line 2293
    iget-object v0, v4, Lyads/o14;->a:Lyads/cs;

    iget-object v4, v4, Lyads/o14;->c:Lyads/n14;

    invoke-virtual {v0, v4}, Lyads/cs;->a(Lyads/ul2;)V

    goto :goto_11

    .line 2294
    :cond_c
    iget-object v0, v1, Lyads/q14;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2295
    iget-object v0, v1, Lyads/q14;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2296
    iput-boolean v3, v1, Lyads/q14;->k:Z

    :cond_d
    return-void
.end method

.method public final a([Z)V
    .locals 21

    move-object/from16 v0, p0

    .line 2565
    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    .line 2566
    iget-object v1, v1, Lyads/d14;->i:Lyads/a14;

    .line 2567
    iget-object v2, v1, Lyads/a14;->n:Lyads/q06;

    const/4 v4, 0x0

    .line 2568
    :goto_0
    iget-object v5, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 2569
    invoke-virtual {v2, v4}, Lyads/q06;->a(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lyads/mq2;->c:Ljava/util/Set;

    iget-object v6, v0, Lyads/mq2;->b:[Lyads/gs;

    aget-object v6, v6, v4

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2570
    iget-object v5, v0, Lyads/mq2;->b:[Lyads/gs;

    aget-object v5, v5, v4

    .line 2571
    iget v6, v5, Lyads/gs;->g:I

    if-nez v6, :cond_0

    .line 2572
    iget-object v6, v5, Lyads/gs;->c:Lyads/a03;

    const/4 v7, 0x0

    .line 2573
    iput-object v7, v6, Lyads/a03;->a:Lyads/eo2;

    .line 2574
    iput-object v7, v6, Lyads/a03;->b:Lyads/vz2;

    .line 2575
    invoke-virtual {v5}, Lyads/gs;->h()V

    goto :goto_1

    .line 2576
    :cond_0
    invoke-static {}, Lud;->g()V

    return-void

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 2577
    :goto_2
    iget-object v5, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v5, v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_11

    .line 2578
    invoke-virtual {v2, v4}, Lyads/q06;->a(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2579
    aget-boolean v5, p1, v4

    .line 2580
    iget-object v7, v0, Lyads/mq2;->b:[Lyads/gs;

    aget-object v8, v7, v4

    .line 2581
    invoke-static {v8}, Lyads/mq2;->b(Lyads/gs;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move/from16 v16, v4

    const/4 v15, 0x0

    goto/16 :goto_9

    .line 2582
    :cond_4
    iget-object v7, v0, Lyads/mq2;->s:Lyads/d14;

    .line 2583
    iget-object v9, v7, Lyads/d14;->i:Lyads/a14;

    .line 2584
    iget-object v7, v7, Lyads/d14;->h:Lyads/a14;

    if-ne v9, v7, :cond_5

    move v7, v6

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 2585
    :goto_3
    iget-object v10, v9, Lyads/a14;->n:Lyads/q06;

    .line 2586
    iget-object v11, v10, Lyads/q06;->b:[Lyads/n65;

    aget-object v11, v11, v4

    .line 2587
    iget-object v10, v10, Lyads/q06;->c:[Lyads/er2;

    aget-object v10, v10, v4

    if-eqz v10, :cond_6

    .line 2588
    invoke-interface {v10}, Lyads/er2;->length()I

    move-result v12

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    .line 2589
    :goto_4
    new-array v13, v12, [Lyads/vz2;

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v12, :cond_7

    .line 2590
    invoke-interface {v10, v14}, Lyads/er2;->a(I)Lyads/vz2;

    move-result-object v15

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 2591
    :cond_7
    invoke-virtual {v0}, Lyads/mq2;->l()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v0, Lyads/mq2;->x:Lyads/bw4;

    iget v10, v10, Lyads/bw4;->e:I

    const/4 v12, 0x3

    if-ne v10, v12, :cond_8

    move v14, v6

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    :goto_6
    if-nez v5, :cond_9

    if-eqz v14, :cond_9

    move v5, v6

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    .line 2592
    :goto_7
    iget v10, v0, Lyads/mq2;->J:I

    add-int/2addr v10, v6

    iput v10, v0, Lyads/mq2;->J:I

    .line 2593
    iget-object v10, v0, Lyads/mq2;->c:Ljava/util/Set;

    invoke-interface {v10, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2594
    iget-object v10, v9, Lyads/a14;->c:[Lyads/mc5;

    aget-object v10, v10, v4

    move/from16 v16, v4

    iget-wide v3, v0, Lyads/mq2;->L:J

    .line 2595
    iget-object v12, v9, Lyads/a14;->f:Lyads/c14;

    move/from16 v17, v7

    iget-wide v6, v12, Lyads/c14;->b:J

    move-wide/from16 v18, v6

    iget-wide v6, v9, Lyads/a14;->o:J

    move/from16 v20, v14

    add-long v14, v18, v6

    .line 2596
    iget v9, v8, Lyads/gs;->g:I

    if-nez v9, :cond_f

    .line 2597
    iput-object v11, v8, Lyads/gs;->d:Lyads/n65;

    const/4 v9, 0x1

    .line 2598
    iput v9, v8, Lyads/gs;->g:I

    move/from16 v9, v17

    .line 2599
    invoke-virtual {v8, v9}, Lyads/gs;->a(Z)V

    .line 2600
    iget-boolean v9, v8, Lyads/gs;->l:Z

    if-nez v9, :cond_e

    .line 2601
    iput-object v10, v8, Lyads/gs;->h:Lyads/mc5;

    .line 2602
    iget-wide v9, v8, Lyads/gs;->k:J

    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v9, v9, v11

    if-nez v9, :cond_a

    .line 2603
    iput-wide v14, v8, Lyads/gs;->k:J

    .line 2604
    :cond_a
    iput-object v13, v8, Lyads/gs;->i:[Lyads/vz2;

    .line 2605
    iput-wide v6, v8, Lyads/gs;->j:J

    move-object v9, v13

    move-wide v10, v14

    move-wide v12, v6

    .line 2606
    invoke-virtual/range {v8 .. v13}, Lyads/gs;->a([Lyads/vz2;JJ)V

    const/4 v15, 0x0

    .line 2607
    iput-boolean v15, v8, Lyads/gs;->l:Z

    .line 2608
    iput-wide v3, v8, Lyads/gs;->k:J

    .line 2609
    invoke-virtual {v8, v3, v4, v5}, Lyads/gs;->a(JZ)V

    .line 2610
    new-instance v3, Lyads/gq2;

    invoke-direct {v3, v0}, Lyads/gq2;-><init>(Lyads/mq2;)V

    const/16 v4, 0xb

    invoke-interface {v8, v4, v3}, Lyads/tw4;->a(ILjava/lang/Object;)V

    .line 2611
    iget-object v3, v0, Lyads/mq2;->o:Lyads/ml0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2612
    invoke-virtual {v8}, Lyads/gs;->b()Lyads/my3;

    move-result-object v4

    const/4 v5, 0x2

    if-eqz v4, :cond_c

    .line 2613
    iget-object v6, v3, Lyads/ml0;->e:Lyads/my3;

    if-eq v4, v6, :cond_c

    if-nez v6, :cond_b

    .line 2614
    iput-object v4, v3, Lyads/ml0;->e:Lyads/my3;

    .line 2615
    iput-object v8, v3, Lyads/ml0;->d:Lyads/gs;

    .line 2616
    iget-object v3, v3, Lyads/ml0;->b:Lyads/eq5;

    .line 2617
    iget-object v3, v3, Lyads/eq5;->f:Lyads/dw4;

    .line 2618
    check-cast v4, Lyads/sy3;

    invoke-virtual {v4, v3}, Lyads/sy3;->a(Lyads/dw4;)V

    goto :goto_8

    .line 2619
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multiple renderer media clocks enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2620
    new-instance v1, Lyads/up2;

    const/16 v2, 0x3e8

    invoke-direct {v1, v5, v0, v2}, Lyads/up2;-><init>(ILjava/lang/Exception;I)V

    .line 2621
    throw v1

    :cond_c
    :goto_8
    if-eqz v20, :cond_10

    .line 2622
    iget v3, v8, Lyads/gs;->g:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_d

    .line 2623
    iput v5, v8, Lyads/gs;->g:I

    .line 2624
    invoke-virtual {v8}, Lyads/gs;->i()V

    goto :goto_9

    .line 2625
    :cond_d
    invoke-static {}, Lud;->g()V

    return-void

    .line 2626
    :cond_e
    invoke-static {}, Lud;->g()V

    return-void

    .line 2627
    :cond_f
    invoke-static {}, Lud;->g()V

    return-void

    :cond_10
    :goto_9
    add-int/lit8 v4, v16, 0x1

    goto/16 :goto_2

    :cond_11
    move v9, v6

    .line 2628
    iput-boolean v9, v1, Lyads/a14;->g:Z

    return-void
.end method

.method public final a(Lyads/kx5;Lyads/h14;)Z
    .locals 4

    .line 2131
    invoke-virtual {p2}, Lyads/b14;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lyads/kx5;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2132
    :cond_0
    iget-object p2, p2, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v0, p0, Lyads/mq2;->m:Lyads/hx5;

    invoke-virtual {p1, p2, v0}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object p2

    iget p2, p2, Lyads/hx5;->d:I

    .line 2133
    iget-object v0, p0, Lyads/mq2;->l:Lyads/jx5;

    const-wide/16 v2, 0x0

    .line 2134
    invoke-virtual {p1, p2, v0, v2, v3}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    .line 2135
    iget-object p1, p0, Lyads/mq2;->l:Lyads/jx5;

    invoke-virtual {p1}, Lyads/jx5;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lyads/mq2;->l:Lyads/jx5;

    iget-boolean p1, p0, Lyads/jx5;->j:Z

    if-eqz p1, :cond_1

    iget-wide p0, p0, Lyads/jx5;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final b()J
    .locals 9

    .line 96
    iget-object v0, p0, Lyads/mq2;->s:Lyads/d14;

    .line 97
    iget-object v0, v0, Lyads/d14;->i:Lyads/a14;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 98
    :cond_0
    iget-wide v1, v0, Lyads/a14;->o:J

    .line 99
    iget-boolean v3, v0, Lyads/a14;->d:Z

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    const/4 v3, 0x0

    .line 100
    :goto_0
    iget-object v4, p0, Lyads/mq2;->b:[Lyads/gs;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 101
    aget-object v4, v4, v3

    invoke-static {v4}, Lyads/mq2;->b(Lyads/gs;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lyads/mq2;->b:[Lyads/gs;

    aget-object v4, v4, v3

    .line 102
    iget-object v5, v4, Lyads/gs;->h:Lyads/mc5;

    .line 103
    iget-object v6, v0, Lyads/a14;->c:[Lyads/mc5;

    aget-object v6, v6, v3

    if-eq v5, v6, :cond_2

    goto :goto_1

    .line 104
    :cond_2
    iget-wide v4, v4, Lyads/gs;->k:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    return-wide v6

    .line 105
    :cond_3
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-wide v1
.end method

.method public final b(I)V
    .locals 3

    .line 80
    iget-object v0, p0, Lyads/mq2;->x:Lyads/bw4;

    iget v1, v0, Lyads/bw4;->e:I

    if-eq v1, p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 81
    iput-wide v1, p0, Lyads/mq2;->P:J

    .line 82
    :cond_0
    invoke-virtual {v0, p1}, Lyads/bw4;->a(I)Lyads/bw4;

    move-result-object p1

    iput-object p1, p0, Lyads/mq2;->x:Lyads/bw4;

    :cond_1
    return-void
.end method

.method public final b(J)V
    .locals 5

    iget-object v0, p0, Lyads/mq2;->s:Lyads/d14;

    iget-object v0, v0, Lyads/d14;->h:Lyads/a14;

    if-nez v0, :cond_0

    const-wide v0, 0xe8d4a51000L

    :goto_0
    add-long/2addr p1, v0

    goto :goto_1

    :cond_0
    iget-wide v0, v0, Lyads/a14;->o:J

    goto :goto_0

    :goto_1
    iput-wide p1, p0, Lyads/mq2;->L:J

    iget-object v0, p0, Lyads/mq2;->o:Lyads/ml0;

    iget-object v0, v0, Lyads/ml0;->b:Lyads/eq5;

    invoke-virtual {v0, p1, p2}, Lyads/eq5;->a(J)V

    iget-object p1, p0, Lyads/mq2;->b:[Lyads/gs;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_2

    aget-object v2, p1, v1

    invoke-static {v2}, Lyads/mq2;->b(Lyads/gs;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lyads/mq2;->L:J

    iput-boolean v0, v2, Lyads/gs;->l:Z

    iput-wide v3, v2, Lyads/gs;->k:J

    invoke-virtual {v2, v3, v4, v0}, Lyads/gs;->a(JZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lyads/mq2;->s:Lyads/d14;

    iget-object p0, p0, Lyads/d14;->h:Lyads/a14;

    :goto_3
    if-eqz p0, :cond_5

    iget-object p1, p0, Lyads/a14;->n:Lyads/q06;

    iget-object p1, p1, Lyads/q06;->c:[Lyads/er2;

    array-length p2, p1

    move v1, v0

    :goto_4
    if-ge v1, p2, :cond_4

    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lyads/er2;->h()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lyads/a14;->l:Lyads/a14;

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final b(Lyads/uw4;)V
    .locals 1

    .line 92
    :try_start_0
    invoke-static {p1}, Lyads/mq2;->a(Lyads/uw4;)V
    :try_end_0
    .catch Lyads/up2; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 93
    const-string p1, "Unexpected error delivering message on external thread."

    .line 94
    invoke-static {p1, p0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExoPlayerImplInternal"

    invoke-static {v0, p1}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Lyads/z04;)V
    .locals 6

    .line 106
    iget-object v0, p0, Lyads/mq2;->s:Lyads/d14;

    .line 107
    iget-object v0, v0, Lyads/d14;->j:Lyads/a14;

    if-eqz v0, :cond_2

    .line 108
    iget-object v1, v0, Lyads/a14;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_2

    .line 109
    iget-wide v2, p0, Lyads/mq2;->L:J

    .line 110
    iget-object p1, v0, Lyads/a14;->l:Lyads/a14;

    if-nez p1, :cond_1

    .line 111
    iget-boolean p1, v0, Lyads/a14;->d:Z

    if-eqz p1, :cond_0

    .line 112
    iget-wide v4, v0, Lyads/a14;->o:J

    sub-long/2addr v2, v4

    .line 113
    invoke-interface {v1, v2, v3}, Lyads/ui5;->reevaluateBuffer(J)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lyads/mq2;->d()V

    return-void

    .line 115
    :cond_1
    invoke-static {}, Lud;->g()V

    :cond_2
    return-void
.end method

.method public final b(Z)V
    .locals 11

    .line 83
    iget-object v0, p0, Lyads/mq2;->s:Lyads/d14;

    .line 84
    iget-object v0, v0, Lyads/d14;->h:Lyads/a14;

    .line 85
    iget-object v0, v0, Lyads/a14;->f:Lyads/c14;

    iget-object v2, v0, Lyads/c14;->a:Lyads/h14;

    .line 86
    iget-object v0, p0, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v3, v0, Lyads/bw4;->r:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    .line 87
    invoke-virtual/range {v1 .. v6}, Lyads/mq2;->a(Lyads/h14;JZZ)J

    move-result-wide v3

    .line 88
    iget-object p0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v5, p0, Lyads/bw4;->r:J

    cmp-long p0, v3, v5

    if-eqz p0, :cond_0

    .line 89
    iget-object p0, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v5, p0, Lyads/bw4;->c:J

    iget-wide v7, p0, Lyads/bw4;->d:J

    const/4 v10, 0x5

    move v9, p1

    .line 90
    invoke-virtual/range {v1 .. v10}, Lyads/mq2;->a(Lyads/h14;JJJZI)Lyads/bw4;

    move-result-object p0

    iput-object p0, v1, Lyads/mq2;->x:Lyads/bw4;

    :cond_0
    return-void
.end method

.method public final synthetic c()Ljava/lang/Boolean;
    .locals 0

    .line 208
    iget-boolean p0, p0, Lyads/mq2;->z:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lyads/uw4;)V
    .locals 2

    .line 215
    iget-object v0, p1, Lyads/uw4;->f:Landroid/os/Looper;

    .line 216
    iget-object v1, p0, Lyads/mq2;->k:Landroid/os/Looper;

    if-ne v0, v1, :cond_2

    .line 217
    invoke-static {p1}, Lyads/mq2;->a(Lyads/uw4;)V

    .line 218
    iget-object p1, p0, Lyads/mq2;->x:Lyads/bw4;

    iget p1, p1, Lyads/bw4;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 219
    :cond_1
    :goto_0
    iget-object p0, p0, Lyads/mq2;->i:Lyads/gu5;

    .line 220
    iget-object p0, p0, Lyads/gu5;->a:Landroid/os/Handler;

    .line 221
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 222
    :cond_2
    iget-object p0, p0, Lyads/mq2;->i:Lyads/gu5;

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lyads/gu5;->a(ILjava/lang/Object;)Lyads/fu5;

    move-result-object p0

    invoke-virtual {p0}, Lyads/fu5;->b()V

    return-void
.end method

.method public final c(Lyads/z04;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v2, v1, Lyads/d14;->j:Lyads/a14;

    if-eqz v2, :cond_5

    iget-object v1, v2, Lyads/a14;->a:Ljava/lang/Object;

    move-object/from16 v3, p1

    if-ne v1, v3, :cond_5

    iget-object v1, v0, Lyads/mq2;->o:Lyads/ml0;

    invoke-virtual {v1}, Lyads/ml0;->getPlaybackParameters()Lyads/dw4;

    move-result-object v1

    iget v1, v1, Lyads/dw4;->b:F

    iget-object v3, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v3, v3, Lyads/bw4;->a:Lyads/kx5;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lyads/a14;->d:Z

    iget-object v4, v2, Lyads/a14;->a:Ljava/lang/Object;

    invoke-interface {v4}, Lyads/z04;->getTrackGroups()Lyads/g06;

    move-result-object v4

    iput-object v4, v2, Lyads/a14;->m:Lyads/g06;

    iget-object v5, v2, Lyads/a14;->j:Lyads/p06;

    iget-object v6, v2, Lyads/a14;->i:[Lyads/gs;

    iget-object v7, v2, Lyads/a14;->f:Lyads/c14;

    iget-object v7, v7, Lyads/c14;->a:Lyads/h14;

    invoke-virtual {v5, v6, v4, v7, v3}, Lyads/p06;->a([Lyads/gs;Lyads/g06;Lyads/h14;Lyads/kx5;)Lyads/q06;

    move-result-object v3

    iget-object v4, v3, Lyads/q06;->c:[Lyads/er2;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    if-eqz v7, :cond_0

    invoke-interface {v7, v1}, Lyads/er2;->a(F)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lyads/a14;->f:Lyads/c14;

    iget-wide v4, v1, Lyads/c14;->b:J

    iget-wide v6, v1, Lyads/c14;->e:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v8

    if-eqz v1, :cond_2

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    const-wide/16 v4, 0x1

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_2
    iget-object v1, v2, Lyads/a14;->i:[Lyads/gs;

    array-length v1, v1

    new-array v7, v1, [Z

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lyads/a14;->a(Lyads/q06;JZ[Z)J

    move-result-wide v10

    iget-wide v3, v2, Lyads/a14;->o:J

    iget-object v1, v2, Lyads/a14;->f:Lyads/c14;

    iget-wide v5, v1, Lyads/c14;->b:J

    sub-long v7, v5, v10

    add-long/2addr v7, v3

    iput-wide v7, v2, Lyads/a14;->o:J

    cmp-long v3, v10, v5

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v8, Lyads/c14;

    iget-object v9, v1, Lyads/c14;->a:Lyads/h14;

    iget-wide v12, v1, Lyads/c14;->c:J

    iget-wide v14, v1, Lyads/c14;->d:J

    iget-wide v3, v1, Lyads/c14;->e:J

    iget-boolean v5, v1, Lyads/c14;->f:Z

    iget-boolean v6, v1, Lyads/c14;->g:Z

    iget-boolean v7, v1, Lyads/c14;->h:Z

    iget-boolean v1, v1, Lyads/c14;->i:Z

    move/from16 v21, v1

    move-wide/from16 v16, v3

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-direct/range {v8 .. v21}, Lyads/c14;-><init>(Lyads/h14;JJJJZZZZ)V

    move-object v1, v8

    :goto_1
    iput-object v1, v2, Lyads/a14;->f:Lyads/c14;

    iget-object v1, v2, Lyads/a14;->n:Lyads/q06;

    invoke-virtual {v0, v1}, Lyads/mq2;->a(Lyads/q06;)V

    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v1, v1, Lyads/d14;->h:Lyads/a14;

    if-ne v2, v1, :cond_4

    iget-object v1, v2, Lyads/a14;->f:Lyads/c14;

    iget-wide v3, v1, Lyads/c14;->b:J

    invoke-virtual {v0, v3, v4}, Lyads/mq2;->b(J)V

    iget-object v1, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v1, v1

    new-array v1, v1, [Z

    invoke-virtual {v0, v1}, Lyads/mq2;->a([Z)V

    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v3, v1, Lyads/bw4;->b:Lyads/h14;

    iget-object v2, v2, Lyads/a14;->f:Lyads/c14;

    iget-wide v4, v2, Lyads/c14;->b:J

    iget-wide v1, v1, Lyads/bw4;->c:J

    const/4 v8, 0x0

    const/4 v9, 0x5

    move-wide v6, v4

    move-wide/from16 v22, v1

    move-object v1, v3

    move-wide v2, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v9}, Lyads/mq2;->a(Lyads/h14;JJJZI)Lyads/bw4;

    move-result-object v1

    iput-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    :cond_4
    invoke-virtual {v0}, Lyads/mq2;->d()V

    :cond_5
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lyads/mq2;->I:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iput-boolean p1, p0, Lyads/mq2;->I:Z

    if-nez p1, :cond_1

    .line 211
    iget-object p1, p0, Lyads/mq2;->x:Lyads/bw4;

    iget-boolean p1, p1, Lyads/bw4;->o:Z

    if-eqz p1, :cond_1

    .line 212
    iget-object p0, p0, Lyads/mq2;->i:Lyads/gu5;

    const/4 p1, 0x2

    .line 213
    iget-object p0, p0, Lyads/gu5;->a:Landroid/os/Handler;

    .line 214
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 12

    iget-object v0, p0, Lyads/mq2;->s:Lyads/d14;

    iget-object v0, v0, Lyads/d14;->j:Lyads/a14;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v2, v0, Lyads/a14;->d:Z

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    move-wide v5, v3

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lyads/a14;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lyads/ui5;->getNextLoadPositionUs()J

    move-result-wide v5

    :goto_0
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v0, v5, v7

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v0, p0, Lyads/mq2;->s:Lyads/d14;

    iget-object v0, v0, Lyads/d14;->j:Lyads/a14;

    iget-boolean v2, v0, Lyads/a14;->d:Z

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lyads/a14;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lyads/ui5;->getNextLoadPositionUs()J

    move-result-wide v3

    :goto_1
    invoke-virtual {p0, v3, v4}, Lyads/mq2;->a(J)J

    move-result-wide v2

    iget-object v0, p0, Lyads/mq2;->s:Lyads/d14;

    iget-object v0, v0, Lyads/d14;->h:Lyads/a14;

    iget-object v0, p0, Lyads/mq2;->g:Lyads/kl0;

    iget-object v4, p0, Lyads/mq2;->o:Lyads/ml0;

    invoke-virtual {v4}, Lyads/ml0;->getPlaybackParameters()Lyads/dw4;

    move-result-object v4

    iget v4, v4, Lyads/dw4;->b:F

    iget-object v5, v0, Lyads/kl0;->a:Lyads/aj0;

    monitor-enter v5

    :try_start_0
    iget v6, v5, Lyads/aj0;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v7, 0x10000

    mul-int/2addr v6, v7

    monitor-exit v5

    iget v5, v0, Lyads/kl0;->i:I

    const/4 v7, 0x1

    if-lt v6, v5, :cond_4

    move v5, v7

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    iget-wide v8, v0, Lyads/kl0;->b:J

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_6

    sget v10, Lyads/u56;->a:I

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    long-to-double v8, v8

    float-to-double v10, v4

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    :goto_3
    iget-wide v10, v0, Lyads/kl0;->c:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :cond_6
    const-wide/32 v10, 0x7a120

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    cmp-long v4, v2, v8

    if-gez v4, :cond_9

    iget-boolean v4, v0, Lyads/kl0;->g:Z

    if-nez v4, :cond_7

    if-nez v5, :cond_8

    :cond_7
    move v1, v7

    :cond_8
    iput-boolean v1, v0, Lyads/kl0;->j:Z

    if-nez v1, :cond_b

    cmp-long v1, v2, v10

    if-gez v1, :cond_b

    const-string v1, "DefaultLoadControl"

    const-string v2, "Target buffer size reached with less than 500ms of buffered media data."

    invoke-static {v1, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    iget-wide v6, v0, Lyads/kl0;->c:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_a

    if-eqz v5, :cond_b

    :cond_a
    iput-boolean v1, v0, Lyads/kl0;->j:Z

    :cond_b
    :goto_4
    iget-boolean v1, v0, Lyads/kl0;->j:Z

    :goto_5
    iput-boolean v1, p0, Lyads/mq2;->D:Z

    if-eqz v1, :cond_d

    iget-object v0, p0, Lyads/mq2;->s:Lyads/d14;

    iget-object v0, v0, Lyads/d14;->j:Lyads/a14;

    iget-wide v1, p0, Lyads/mq2;->L:J

    iget-object v3, v0, Lyads/a14;->l:Lyads/a14;

    if-nez v3, :cond_c

    iget-wide v3, v0, Lyads/a14;->o:J

    sub-long/2addr v1, v3

    iget-object v0, v0, Lyads/a14;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lyads/ui5;->c(J)Z

    goto :goto_6

    :cond_c
    invoke-static {}, Lud;->g()V

    return-void

    :cond_d
    :goto_6
    invoke-virtual {p0}, Lyads/mq2;->n()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v5

    throw p0
.end method

.method public final d(Lyads/uw4;)V
    .locals 3

    .line 194
    iget-object v0, p1, Lyads/uw4;->f:Landroid/os/Looper;

    .line 195
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const-string p0, "TAG"

    const-string v0, "Trying to send message on a dead thread."

    invoke-static {p0, v0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 197
    invoke-virtual {p1, p0}, Lyads/uw4;->a(Z)V

    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lyads/mq2;->q:Lyads/du5;

    .line 199
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    new-instance v1, Lyads/gu5;

    new-instance v1, Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 201
    new-instance v0, Lyg4;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p0, p1}, Lyg4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 202
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 187
    iput-boolean p1, p0, Lyads/mq2;->A:Z

    .line 188
    invoke-virtual {p0}, Lyads/mq2;->k()V

    .line 189
    iget-boolean p1, p0, Lyads/mq2;->B:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyads/mq2;->s:Lyads/d14;

    .line 190
    iget-object v0, p1, Lyads/d14;->i:Lyads/a14;

    .line 191
    iget-object p1, p1, Lyads/d14;->h:Lyads/a14;

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    .line 192
    invoke-virtual {p0, p1}, Lyads/mq2;->b(Z)V

    const/4 p1, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lyads/mq2;->a(Z)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 25
    iget-object v0, p0, Lyads/mq2;->t:Lyads/q14;

    .line 26
    invoke-virtual {v0}, Lyads/q14;->a()Lyads/kx5;

    move-result-object v0

    const/4 v1, 0x1

    .line 27
    invoke-virtual {p0, v0, v1}, Lyads/mq2;->a(Lyads/kx5;Z)V

    return-void
.end method

.method public final e(Z)V
    .locals 2

    iput-boolean p1, p0, Lyads/mq2;->F:Z

    iget-object v0, p0, Lyads/mq2;->s:Lyads/d14;

    iget-object v1, p0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v1, v1, Lyads/bw4;->a:Lyads/kx5;

    iput-boolean p1, v0, Lyads/d14;->g:Z

    invoke-virtual {v0, v1}, Lyads/d14;->a(Lyads/kx5;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lyads/mq2;->b(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lyads/mq2;->a(Z)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object p0, p0, Lyads/mq2;->y:Lyads/iq2;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lyads/iq2;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final g()V
    .locals 6

    iget-object v0, p0, Lyads/mq2;->y:Lyads/iq2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyads/iq2;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Lyads/mq2;->a(ZZZZ)V

    iget-object v2, p0, Lyads/mq2;->g:Lyads/kl0;

    invoke-virtual {v2, v0}, Lyads/kl0;->a(Z)V

    iget-object v2, p0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v2, v2, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v2}, Lyads/kx5;->c()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lyads/mq2;->b(I)V

    iget-object v2, p0, Lyads/mq2;->t:Lyads/q14;

    iget-object v4, p0, Lyads/mq2;->h:Lyads/vn;

    check-cast v4, Lyads/zj0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v5, v2, Lyads/q14;->k:Z

    if-nez v5, :cond_2

    iput-object v4, v2, Lyads/q14;->l:Lyads/p16;

    :goto_1
    iget-object v4, v2, Lyads/q14;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, v2, Lyads/q14;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/p14;

    invoke-virtual {v2, v4}, Lyads/q14;->a(Lyads/p14;)V

    iget-object v5, v2, Lyads/q14;->i:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v1, v2, Lyads/q14;->k:Z

    iget-object p0, p0, Lyads/mq2;->i:Lyads/gu5;

    iget-object p0, p0, Lyads/gu5;->a:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final declared-synchronized h()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lyads/mq2;->z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/mq2;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyads/mq2;->i:Lyads/gu5;

    iget-object v0, v0, Lyads/gu5;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v0, Lp2a;

    invoke-direct {v0, p0}, Lp2a;-><init>(Lyads/mq2;)V

    iget-wide v1, p0, Lyads/mq2;->v:J

    invoke-virtual {p0, v0, v1, v2}, Lyads/mq2;->a(Lyads/ut5;J)V

    iget-boolean v0, p0, Lyads/mq2;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Playback error"

    const-string v3, "ExoPlayerImplInternal"

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget v7, v0, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    return v5

    :pswitch_0
    invoke-virtual {v1, v6}, Lyads/mq2;->b(Z)V

    :goto_0
    move v2, v5

    goto/16 :goto_e

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_9

    :catch_4
    move-exception v0

    goto/16 :goto_a

    :catch_5
    move-exception v0

    goto/16 :goto_c

    :catch_6
    move-exception v0

    goto/16 :goto_d

    :pswitch_1
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-ne v0, v6, :cond_0

    move v0, v6

    goto :goto_1

    :cond_0
    move v0, v5

    :goto_1
    invoke-virtual {v1, v0}, Lyads/mq2;->c(Z)V

    goto :goto_0

    :pswitch_2
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_2

    :cond_1
    move v0, v5

    :goto_2
    invoke-virtual {v1, v0}, Lyads/mq2;->d(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1}, Lyads/mq2;->e()V

    goto :goto_0

    :pswitch_4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lyads/ik5;

    invoke-virtual {v1, v0}, Lyads/mq2;->a(Lyads/ik5;)V

    goto :goto_0

    :pswitch_5
    iget v7, v0, Landroid/os/Message;->arg1:I

    iget v8, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lyads/ik5;

    invoke-virtual {v1, v7, v8, v0}, Lyads/mq2;->a(IILyads/ik5;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lyads/fq2;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lyads/mq2;->f()V

    const/4 v0, 0x0

    throw v0

    :pswitch_7
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lyads/hq2;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v7, v0}, Lyads/mq2;->a(Lyads/hq2;I)V

    goto :goto_0

    :pswitch_8
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lyads/hq2;

    invoke-virtual {v1, v0}, Lyads/mq2;->a(Lyads/hq2;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lyads/dw4;

    iget v7, v0, Lyads/dw4;->b:F

    invoke-virtual {v1, v0, v7, v6, v5}, Lyads/mq2;->a(Lyads/dw4;FZZ)V

    goto :goto_0

    :pswitch_a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lyads/uw4;

    invoke-virtual {v1, v0}, Lyads/mq2;->d(Lyads/uw4;)V

    goto :goto_0

    :pswitch_b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lyads/uw4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lyads/mq2;->c(Lyads/uw4;)V

    goto :goto_0

    :pswitch_c
    iget v7, v0, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_2

    move v7, v6

    goto :goto_3

    :cond_2
    move v7, v5

    :goto_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v7, v0}, Lyads/mq2;->a(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_0

    :pswitch_d
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v0, v6

    goto :goto_4

    :cond_3
    move v0, v5

    :goto_4
    invoke-virtual {v1, v0}, Lyads/mq2;->e(Z)V

    goto/16 :goto_0

    :pswitch_e
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Lyads/mq2;->a(I)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {v1}, Lyads/mq2;->j()V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lyads/z04;

    invoke-virtual {v1, v0}, Lyads/mq2;->b(Lyads/z04;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lyads/z04;

    invoke-virtual {v1, v0}, Lyads/mq2;->c(Lyads/z04;)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {v1}, Lyads/mq2;->i()V

    return v6

    :pswitch_13
    invoke-virtual {v1, v5, v6}, Lyads/mq2;->a(ZZ)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lyads/th5;

    iput-object v0, v1, Lyads/mq2;->w:Lyads/th5;

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lyads/dw4;

    invoke-virtual {v1, v0}, Lyads/mq2;->a(Lyads/dw4;)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lyads/lq2;

    invoke-virtual {v1, v0}, Lyads/mq2;->a(Lyads/lq2;)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {v1}, Lyads/mq2;->a()V

    goto/16 :goto_0

    :pswitch_18
    iget v7, v0, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_5

    :cond_4
    move v7, v5

    :goto_5
    iget v0, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v6, v7, v6}, Lyads/mq2;->a(IIZZ)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {v1}, Lyads/mq2;->g()V
    :try_end_0
    .catch Lyads/up2; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lyads/rl2; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lyads/xs4; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lyads/xc0; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lyads/vs; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :goto_6
    instance-of v7, v0, Ljava/lang/IllegalStateException;

    if-nez v7, :cond_5

    instance-of v7, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v7, :cond_6

    :cond_5
    const/16 v4, 0x3ec

    :cond_6
    new-instance v7, Lyads/up2;

    const/4 v8, 0x2

    invoke-direct {v7, v8, v0, v4}, Lyads/up2;-><init>(ILjava/lang/Exception;I)V

    invoke-static {v2, v7}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v5}, Lyads/mq2;->a(ZZ)V

    iget-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    invoke-virtual {v0, v7}, Lyads/bw4;->a(Lyads/up2;)Lyads/bw4;

    move-result-object v0

    iput-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    goto/16 :goto_0

    :goto_7
    const/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2}, Lyads/mq2;->a(Ljava/io/IOException;I)V

    goto/16 :goto_0

    :goto_8
    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Lyads/mq2;->a(Ljava/io/IOException;I)V

    goto/16 :goto_0

    :goto_9
    iget v2, v0, Lyads/xc0;->b:I

    invoke-virtual {v1, v0, v2}, Lyads/mq2;->a(Ljava/io/IOException;I)V

    goto/16 :goto_0

    :goto_a
    iget v2, v0, Lyads/xs4;->c:I

    if-ne v2, v6, :cond_8

    iget-boolean v2, v0, Lyads/xs4;->b:Z

    if-eqz v2, :cond_7

    const/16 v4, 0xbb9

    goto :goto_b

    :cond_7
    const/16 v4, 0xbbb

    goto :goto_b

    :cond_8
    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    iget-boolean v2, v0, Lyads/xs4;->b:Z

    if-eqz v2, :cond_9

    const/16 v4, 0xbba

    goto :goto_b

    :cond_9
    const/16 v4, 0xbbc

    :cond_a
    :goto_b
    invoke-virtual {v1, v0, v4}, Lyads/mq2;->a(Ljava/io/IOException;I)V

    goto/16 :goto_0

    :goto_c
    iget v2, v0, Lyads/rl2;->b:I

    invoke-virtual {v1, v0, v2}, Lyads/mq2;->a(Ljava/io/IOException;I)V

    goto/16 :goto_0

    :goto_d
    iget v4, v0, Lyads/up2;->d:I

    if-ne v4, v6, :cond_b

    iget-object v4, v1, Lyads/mq2;->s:Lyads/d14;

    iget-object v4, v4, Lyads/d14;->i:Lyads/a14;

    if-eqz v4, :cond_b

    iget-object v4, v4, Lyads/a14;->f:Lyads/c14;

    iget-object v4, v4, Lyads/c14;->a:Lyads/h14;

    new-instance v7, Lyads/up2;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    sget v9, Lyads/u56;->a:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    iget v10, v0, Lyads/zv4;->b:I

    iget v11, v0, Lyads/up2;->d:I

    iget-object v12, v0, Lyads/up2;->e:Ljava/lang/String;

    iget v13, v0, Lyads/up2;->f:I

    iget-object v14, v0, Lyads/up2;->g:Lyads/vz2;

    iget v15, v0, Lyads/up2;->h:I

    iget-wide v5, v0, Lyads/zv4;->c:J

    iget-boolean v0, v0, Lyads/up2;->j:Z

    move/from16 v19, v0

    move-object/from16 v16, v4

    move-wide/from16 v17, v5

    invoke-direct/range {v7 .. v19}, Lyads/up2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILyads/vz2;ILyads/b14;JZ)V

    move-object v0, v7

    :cond_b
    iget-boolean v4, v0, Lyads/up2;->j:Z

    if-eqz v4, :cond_c

    iget-object v4, v1, Lyads/mq2;->O:Lyads/up2;

    if-nez v4, :cond_c

    const-string v2, "Recoverable renderer error"

    invoke-static {v2, v0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Lyads/mq2;->O:Lyads/up2;

    iget-object v2, v1, Lyads/mq2;->i:Lyads/gu5;

    const/16 v3, 0x19

    invoke-virtual {v2, v3, v0}, Lyads/gu5;->a(ILjava/lang/Object;)Lyads/fu5;

    move-result-object v0

    iget-object v2, v2, Lyads/gu5;->a:Landroid/os/Handler;

    iget-object v3, v0, Lyads/fu5;->a:Landroid/os/Message;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lyads/fu5;->a()V

    const/4 v2, 0x0

    goto :goto_e

    :cond_c
    iget-object v4, v1, Lyads/mq2;->O:Lyads/up2;

    if-eqz v4, :cond_d

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    iget-object v0, v1, Lyads/mq2;->O:Lyads/up2;

    :cond_d
    invoke-static {v2, v0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lyads/mq2;->a(ZZ)V

    iget-object v3, v1, Lyads/mq2;->x:Lyads/bw4;

    invoke-virtual {v3, v0}, Lyads/bw4;->a(Lyads/up2;)Lyads/bw4;

    move-result-object v0

    iput-object v0, v1, Lyads/mq2;->x:Lyads/bw4;

    :goto_e
    iget-object v0, v1, Lyads/mq2;->y:Lyads/iq2;

    iget-object v3, v1, Lyads/mq2;->x:Lyads/bw4;

    iget-boolean v4, v0, Lyads/iq2;->a:Z

    iget-object v5, v0, Lyads/iq2;->b:Lyads/bw4;

    if-eq v5, v3, :cond_e

    const/4 v5, 0x1

    goto :goto_f

    :cond_e
    move v5, v2

    :goto_f
    or-int v2, v4, v5

    iput-boolean v2, v0, Lyads/iq2;->a:Z

    iput-object v3, v0, Lyads/iq2;->b:Lyads/bw4;

    if-eqz v2, :cond_f

    iget-object v2, v1, Lyads/mq2;->r:Lyads/jq2;

    check-cast v2, Lx52;

    invoke-virtual {v2, v0}, Lx52;->a(Lyads/iq2;)V

    new-instance v0, Lyads/iq2;

    iget-object v2, v1, Lyads/mq2;->x:Lyads/bw4;

    invoke-direct {v0, v2}, Lyads/iq2;-><init>(Lyads/bw4;)V

    iput-object v0, v1, Lyads/mq2;->y:Lyads/iq2;

    :cond_f
    const/16 v20, 0x1

    return v20

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1, v0}, Lyads/mq2;->a(ZZZZ)V

    iget-object v0, p0, Lyads/mq2;->g:Lyads/kl0;

    invoke-virtual {v0, v1}, Lyads/kl0;->a(Z)V

    invoke-virtual {p0, v1}, Lyads/mq2;->b(I)V

    iget-object v0, p0, Lyads/mq2;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    monitor-enter p0

    :try_start_0
    iput-boolean v1, p0, Lyads/mq2;->z:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/mq2;->o:Lyads/ml0;

    invoke-virtual {v1}, Lyads/ml0;->getPlaybackParameters()Lyads/dw4;

    move-result-object v1

    iget v1, v1, Lyads/dw4;->b:F

    iget-object v2, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v3, v2, Lyads/d14;->h:Lyads/a14;

    iget-object v2, v2, Lyads/d14;->i:Lyads/a14;

    const/4 v10, 0x1

    move-object v4, v3

    move v3, v10

    :goto_0
    if-eqz v4, :cond_e

    iget-boolean v5, v4, Lyads/a14;->d:Z

    if-nez v5, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v5, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v5, v5, Lyads/bw4;->a:Lyads/kx5;

    iget-object v6, v4, Lyads/a14;->j:Lyads/p06;

    iget-object v7, v4, Lyads/a14;->i:[Lyads/gs;

    iget-object v8, v4, Lyads/a14;->m:Lyads/g06;

    iget-object v9, v4, Lyads/a14;->f:Lyads/c14;

    iget-object v9, v9, Lyads/c14;->a:Lyads/h14;

    invoke-virtual {v6, v7, v8, v9, v5}, Lyads/p06;->a([Lyads/gs;Lyads/g06;Lyads/h14;Lyads/kx5;)Lyads/q06;

    move-result-object v5

    iget-object v6, v5, Lyads/q06;->c:[Lyads/er2;

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v7, :cond_2

    aget-object v11, v6, v9

    if-eqz v11, :cond_1

    invoke-interface {v11, v1}, Lyads/er2;->a(F)V

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, v4, Lyads/a14;->n:Lyads/q06;

    if-eqz v6, :cond_6

    iget-object v7, v6, Lyads/q06;->c:[Lyads/er2;

    array-length v7, v7

    iget-object v9, v5, Lyads/q06;->c:[Lyads/er2;

    array-length v9, v9

    if-eq v7, v9, :cond_3

    goto :goto_3

    :cond_3
    move v7, v8

    :goto_2
    iget-object v9, v5, Lyads/q06;->c:[Lyads/er2;

    array-length v9, v9

    if-ge v7, v9, :cond_4

    iget-object v9, v5, Lyads/q06;->b:[Lyads/n65;

    aget-object v9, v9, v7

    iget-object v11, v6, Lyads/q06;->b:[Lyads/n65;

    aget-object v11, v11, v7

    invoke-static {v9, v11}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v5, Lyads/q06;->c:[Lyads/er2;

    aget-object v9, v9, v7

    iget-object v11, v6, Lyads/q06;->c:[Lyads/er2;

    aget-object v11, v11, v7

    invoke-static {v9, v11}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    if-ne v4, v2, :cond_5

    move v3, v8

    :cond_5
    iget-object v4, v4, Lyads/a14;->l:Lyads/a14;

    goto :goto_0

    :cond_6
    :goto_3
    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    const/4 v2, 0x4

    if-eqz v3, :cond_c

    iget-object v11, v1, Lyads/d14;->h:Lyads/a14;

    invoke-virtual {v1, v11}, Lyads/d14;->a(Lyads/a14;)Z

    move-result v15

    iget-object v1, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v1, v1

    new-array v1, v1, [Z

    iget-object v3, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v13, v3, Lyads/bw4;->r:J

    move-object/from16 v16, v1

    move-object v12, v5

    invoke-virtual/range {v11 .. v16}, Lyads/a14;->a(Lyads/q06;JZ[Z)J

    move-result-wide v3

    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget v5, v1, Lyads/bw4;->e:I

    if-eq v5, v2, :cond_7

    iget-wide v5, v1, Lyads/bw4;->r:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    move v1, v8

    move v8, v10

    goto :goto_4

    :cond_7
    move v1, v8

    :goto_4
    iget-object v5, v0, Lyads/mq2;->x:Lyads/bw4;

    move v6, v1

    iget-object v1, v5, Lyads/bw4;->b:Lyads/h14;

    iget-wide v12, v5, Lyads/bw4;->c:J

    iget-wide v14, v5, Lyads/bw4;->d:J

    const/4 v9, 0x5

    move-wide/from16 v17, v12

    move v13, v2

    move-wide v2, v3

    move-wide/from16 v4, v17

    move v12, v6

    move-wide v6, v14

    invoke-virtual/range {v0 .. v9}, Lyads/mq2;->a(Lyads/h14;JJJZI)Lyads/bw4;

    move-result-object v1

    iput-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    if-eqz v8, :cond_8

    invoke-virtual {v0, v2, v3}, Lyads/mq2;->b(J)V

    :cond_8
    iget-object v1, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v1, v1

    new-array v1, v1, [Z

    move v8, v12

    :goto_5
    iget-object v2, v0, Lyads/mq2;->b:[Lyads/gs;

    array-length v3, v2

    if-ge v8, v3, :cond_b

    aget-object v2, v2, v8

    invoke-static {v2}, Lyads/mq2;->b(Lyads/gs;)Z

    move-result v3

    aput-boolean v3, v1, v8

    iget-object v4, v11, Lyads/a14;->c:[Lyads/mc5;

    aget-object v4, v4, v8

    if-eqz v3, :cond_a

    iget-object v3, v2, Lyads/gs;->h:Lyads/mc5;

    if-eq v4, v3, :cond_9

    invoke-virtual {v0, v2}, Lyads/mq2;->a(Lyads/gs;)V

    goto :goto_6

    :cond_9
    aget-boolean v3, v16, v8

    if-eqz v3, :cond_a

    iget-wide v3, v0, Lyads/mq2;->L:J

    iput-boolean v12, v2, Lyads/gs;->l:Z

    iput-wide v3, v2, Lyads/gs;->k:J

    invoke-virtual {v2, v3, v4, v12}, Lyads/gs;->a(JZ)V

    :cond_a
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {v0, v1}, Lyads/mq2;->a([Z)V

    goto :goto_7

    :cond_c
    move v13, v2

    invoke-virtual {v1, v4}, Lyads/d14;->a(Lyads/a14;)Z

    iget-boolean v1, v4, Lyads/a14;->d:Z

    if-eqz v1, :cond_d

    iget-object v1, v4, Lyads/a14;->f:Lyads/c14;

    iget-wide v1, v1, Lyads/c14;->b:J

    iget-wide v6, v0, Lyads/mq2;->L:J

    iget-wide v8, v4, Lyads/a14;->o:J

    sub-long/2addr v6, v8

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-object v1, v4, Lyads/a14;->i:[Lyads/gs;

    array-length v1, v1

    new-array v9, v1, [Z

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lyads/a14;->a(Lyads/q06;JZ[Z)J

    :cond_d
    :goto_7
    invoke-virtual {v0, v10}, Lyads/mq2;->a(Z)V

    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget v1, v1, Lyads/bw4;->e:I

    if-eq v1, v13, :cond_e

    invoke-virtual {v0}, Lyads/mq2;->d()V

    invoke-virtual {v0}, Lyads/mq2;->o()V

    iget-object v0, v0, Lyads/mq2;->i:Lyads/gu5;

    const/4 v1, 0x2

    iget-object v0, v0, Lyads/gu5;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_e
    :goto_8
    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lyads/mq2;->s:Lyads/d14;

    iget-object v0, v0, Lyads/d14;->h:Lyads/a14;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lyads/a14;->f:Lyads/c14;

    iget-boolean v0, v0, Lyads/c14;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lyads/mq2;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lyads/mq2;->B:Z

    return-void
.end method

.method public final l()Z
    .locals 1

    iget-object p0, p0, Lyads/mq2;->x:Lyads/bw4;

    iget-boolean v0, p0, Lyads/bw4;->l:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lyads/bw4;->m:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m()V
    .locals 5

    iget-object v0, p0, Lyads/mq2;->o:Lyads/ml0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lyads/ml0;->g:Z

    iget-object v0, v0, Lyads/ml0;->b:Lyads/eq5;

    iget-boolean v2, v0, Lyads/eq5;->c:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lyads/eq5;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lyads/eq5;->a(J)V

    iput-boolean v1, v0, Lyads/eq5;->c:Z

    :cond_0
    iget-object p0, p0, Lyads/mq2;->b:[Lyads/gs;

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    invoke-static {v2}, Lyads/mq2;->b(Lyads/gs;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lyads/gs;->g:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    iput v3, v2, Lyads/gs;->g:I

    invoke-virtual {v2}, Lyads/gs;->j()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lud;->g()V

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final n()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v1, v1, Lyads/d14;->j:Lyads/a14;

    iget-boolean v2, v0, Lyads/mq2;->D:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lyads/a14;->a:Ljava/lang/Object;

    invoke-interface {v1}, Lyads/ui5;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v11, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :goto_2
    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-boolean v2, v1, Lyads/bw4;->g:Z

    if-eq v11, v2, :cond_2

    new-instance v2, Lyads/bw4;

    iget-object v3, v1, Lyads/bw4;->a:Lyads/kx5;

    iget-object v4, v1, Lyads/bw4;->b:Lyads/h14;

    iget-wide v5, v1, Lyads/bw4;->c:J

    iget-wide v7, v1, Lyads/bw4;->d:J

    iget v9, v1, Lyads/bw4;->e:I

    iget-object v10, v1, Lyads/bw4;->f:Lyads/up2;

    iget-object v12, v1, Lyads/bw4;->h:Lyads/g06;

    iget-object v13, v1, Lyads/bw4;->i:Lyads/q06;

    iget-object v14, v1, Lyads/bw4;->j:Ljava/util/List;

    iget-object v15, v1, Lyads/bw4;->k:Lyads/h14;

    move-object/from16 v16, v2

    iget-boolean v2, v1, Lyads/bw4;->l:Z

    move/from16 v17, v2

    iget v2, v1, Lyads/bw4;->m:I

    move/from16 v18, v2

    iget-object v2, v1, Lyads/bw4;->n:Lyads/dw4;

    move-object/from16 v20, v2

    move-object/from16 v19, v3

    iget-wide v2, v1, Lyads/bw4;->p:J

    move-wide/from16 v21, v2

    iget-wide v2, v1, Lyads/bw4;->q:J

    move-wide/from16 v23, v2

    iget-wide v2, v1, Lyads/bw4;->r:J

    iget-boolean v1, v1, Lyads/bw4;->o:Z

    move/from16 v25, v1

    move-wide/from16 v26, v2

    move-object/from16 v2, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v3, v19

    move-object/from16 v18, v20

    move-wide/from16 v19, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v26

    invoke-direct/range {v2 .. v25}, Lyads/bw4;-><init>(Lyads/kx5;Lyads/h14;JJILyads/up2;ZLyads/g06;Lyads/q06;Ljava/util/List;Lyads/h14;ZILyads/dw4;JJJZ)V

    iput-object v2, v0, Lyads/mq2;->x:Lyads/bw4;

    :cond_2
    return-void
.end method

.method public final o()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v1, v1, Lyads/d14;->h:Lyads/a14;

    if-nez v1, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-boolean v2, v1, Lyads/a14;->d:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    iget-object v2, v1, Lyads/a14;->a:Ljava/lang/Object;

    invoke-interface {v2}, Lyads/z04;->readDiscontinuity()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v10

    :goto_0
    cmp-long v4, v2, v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v0, v2, v3}, Lyads/mq2;->b(J)V

    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v4, v1, Lyads/bw4;->r:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_10

    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v4, v1, Lyads/bw4;->b:Lyads/h14;

    iget-wide v5, v1, Lyads/bw4;->c:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v1, v4

    move-wide v4, v5

    move-wide v6, v2

    invoke-virtual/range {v0 .. v9}, Lyads/mq2;->a(Lyads/h14;JJJZI)Lyads/bw4;

    move-result-object v1

    iput-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    goto/16 :goto_7

    :cond_2
    iget-object v2, v0, Lyads/mq2;->o:Lyads/ml0;

    iget-object v3, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v3, v3, Lyads/d14;->i:Lyads/a14;

    if-eq v1, v3, :cond_3

    move v3, v13

    goto :goto_1

    :cond_3
    move v3, v12

    :goto_1
    iget-object v4, v2, Lyads/ml0;->d:Lyads/gs;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lyads/gs;->e()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v2, Lyads/ml0;->d:Lyads/gs;

    invoke-virtual {v4}, Lyads/gs;->f()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v3, :cond_7

    iget-object v3, v2, Lyads/ml0;->d:Lyads/gs;

    invoke-virtual {v3}, Lyads/gs;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, v2, Lyads/ml0;->e:Lyads/my3;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Lyads/my3;->a()J

    move-result-wide v4

    iget-boolean v6, v2, Lyads/ml0;->f:Z

    if-eqz v6, :cond_6

    iget-object v6, v2, Lyads/ml0;->b:Lyads/eq5;

    invoke-virtual {v6}, Lyads/eq5;->a()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_5

    iget-object v3, v2, Lyads/ml0;->b:Lyads/eq5;

    iget-boolean v4, v3, Lyads/eq5;->c:Z

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lyads/eq5;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lyads/eq5;->a(J)V

    iput-boolean v12, v3, Lyads/eq5;->c:Z

    goto :goto_3

    :cond_5
    iput-boolean v12, v2, Lyads/ml0;->f:Z

    iget-boolean v6, v2, Lyads/ml0;->g:Z

    if-eqz v6, :cond_6

    iget-object v6, v2, Lyads/ml0;->b:Lyads/eq5;

    iget-boolean v7, v6, Lyads/eq5;->c:Z

    if-nez v7, :cond_6

    iget-object v7, v6, Lyads/eq5;->b:Lyads/du5;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v6, Lyads/eq5;->e:J

    iput-boolean v13, v6, Lyads/eq5;->c:Z

    :cond_6
    iget-object v6, v2, Lyads/ml0;->b:Lyads/eq5;

    invoke-virtual {v6, v4, v5}, Lyads/eq5;->a(J)V

    invoke-interface {v3}, Lyads/my3;->getPlaybackParameters()Lyads/dw4;

    move-result-object v3

    iget-object v4, v2, Lyads/ml0;->b:Lyads/eq5;

    iget-object v4, v4, Lyads/eq5;->f:Lyads/dw4;

    invoke-virtual {v3, v4}, Lyads/dw4;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v2, Lyads/ml0;->b:Lyads/eq5;

    invoke-virtual {v4, v3}, Lyads/eq5;->a(Lyads/dw4;)V

    iget-object v4, v2, Lyads/ml0;->c:Lyads/mq2;

    iget-object v4, v4, Lyads/mq2;->i:Lyads/gu5;

    const/16 v5, 0x10

    invoke-virtual {v4, v5, v3}, Lyads/gu5;->a(ILjava/lang/Object;)Lyads/fu5;

    move-result-object v3

    invoke-virtual {v3}, Lyads/fu5;->b()V

    goto :goto_3

    :cond_7
    :goto_2
    iput-boolean v13, v2, Lyads/ml0;->f:Z

    iget-boolean v3, v2, Lyads/ml0;->g:Z

    if-eqz v3, :cond_8

    iget-object v3, v2, Lyads/ml0;->b:Lyads/eq5;

    iget-boolean v4, v3, Lyads/eq5;->c:Z

    if-nez v4, :cond_8

    iget-object v4, v3, Lyads/eq5;->b:Lyads/du5;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lyads/eq5;->e:J

    iput-boolean v13, v3, Lyads/eq5;->c:Z

    :cond_8
    :goto_3
    invoke-virtual {v2}, Lyads/ml0;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lyads/mq2;->L:J

    iget-wide v4, v1, Lyads/a14;->o:J

    sub-long/2addr v2, v4

    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v4, v1, Lyads/bw4;->r:J

    iget-object v1, v0, Lyads/mq2;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v1, v1, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v1}, Lyads/b14;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    iget-boolean v1, v0, Lyads/mq2;->N:Z

    if-eqz v1, :cond_a

    iput-boolean v12, v0, Lyads/mq2;->N:Z

    :cond_a
    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v4, v1, Lyads/bw4;->a:Lyads/kx5;

    iget-object v1, v1, Lyads/bw4;->b:Lyads/h14;

    iget-object v1, v1, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Lyads/kx5;->a(Ljava/lang/Object;)I

    iget v1, v0, Lyads/mq2;->M:I

    iget-object v4, v0, Lyads/mq2;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_c

    iget-object v4, v0, Lyads/mq2;->p:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_c
    :goto_4
    iget-object v4, v0, Lyads/mq2;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    iget-object v4, v0, Lyads/mq2;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_d

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_e
    :goto_5
    iput v1, v0, Lyads/mq2;->M:I

    :cond_f
    :goto_6
    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iput-wide v2, v1, Lyads/bw4;->r:J

    :cond_10
    :goto_7
    iget-object v1, v0, Lyads/mq2;->s:Lyads/d14;

    iget-object v1, v1, Lyads/d14;->j:Lyads/a14;

    iget-object v2, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-boolean v3, v1, Lyads/a14;->d:Z

    if-nez v3, :cond_11

    iget-object v1, v1, Lyads/a14;->f:Lyads/c14;

    iget-wide v3, v1, Lyads/c14;->b:J

    goto :goto_9

    :cond_11
    iget-boolean v3, v1, Lyads/a14;->e:Z

    const-wide/high16 v4, -0x8000000000000000L

    if-eqz v3, :cond_12

    iget-object v3, v1, Lyads/a14;->a:Ljava/lang/Object;

    invoke-interface {v3}, Lyads/ui5;->getBufferedPositionUs()J

    move-result-wide v6

    goto :goto_8

    :cond_12
    move-wide v6, v4

    :goto_8
    cmp-long v3, v6, v4

    if-nez v3, :cond_13

    iget-object v1, v1, Lyads/a14;->f:Lyads/c14;

    iget-wide v3, v1, Lyads/c14;->e:J

    goto :goto_9

    :cond_13
    move-wide v3, v6

    :goto_9
    iput-wide v3, v2, Lyads/bw4;->p:J

    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v2, v1, Lyads/bw4;->p:J

    invoke-virtual {v0, v2, v3}, Lyads/mq2;->a(J)J

    move-result-wide v2

    iput-wide v2, v1, Lyads/bw4;->q:J

    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-boolean v2, v1, Lyads/bw4;->l:Z

    if-eqz v2, :cond_1c

    iget v2, v1, Lyads/bw4;->e:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    iget-object v2, v1, Lyads/bw4;->a:Lyads/kx5;

    iget-object v1, v1, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v0, v2, v1}, Lyads/mq2;->a(Lyads/kx5;Lyads/h14;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v2, v1, Lyads/bw4;->n:Lyads/dw4;

    iget v2, v2, Lyads/dw4;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1c

    iget-object v2, v0, Lyads/mq2;->u:Lyads/jl0;

    iget-object v5, v1, Lyads/bw4;->a:Lyads/kx5;

    iget-object v6, v1, Lyads/bw4;->b:Lyads/h14;

    iget-object v6, v6, Lyads/b14;->a:Ljava/lang/Object;

    iget-wide v7, v1, Lyads/bw4;->r:J

    invoke-virtual {v0, v5, v6, v7, v8}, Lyads/mq2;->a(Lyads/kx5;Ljava/lang/Object;J)J

    move-result-wide v5

    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-wide v7, v1, Lyads/bw4;->p:J

    invoke-virtual {v0, v7, v8}, Lyads/mq2;->a(J)J

    move-result-wide v7

    iget-wide v14, v2, Lyads/jl0;->c:J

    cmp-long v1, v14, v10

    if-nez v1, :cond_14

    goto/16 :goto_d

    :cond_14
    sub-long v7, v5, v7

    iget-wide v14, v2, Lyads/jl0;->m:J

    cmp-long v1, v14, v10

    if-nez v1, :cond_15

    iput-wide v7, v2, Lyads/jl0;->m:J

    const-wide/16 v7, 0x0

    iput-wide v7, v2, Lyads/jl0;->n:J

    move-wide/from16 v16, v10

    goto :goto_a

    :cond_15
    long-to-float v1, v14

    const v9, 0x3f7fbe77    # 0.999f

    mul-float/2addr v1, v9

    long-to-float v14, v7

    const v15, 0x3a831200    # 9.999871E-4f

    mul-float/2addr v14, v15

    add-float/2addr v14, v1

    move v1, v9

    move-wide/from16 v16, v10

    float-to-long v9, v14

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v2, Lyads/jl0;->m:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    iget-wide v9, v2, Lyads/jl0;->n:J

    long-to-float v9, v9

    mul-float/2addr v9, v1

    long-to-float v1, v7

    mul-float/2addr v1, v15

    add-float/2addr v1, v9

    float-to-long v7, v1

    iput-wide v7, v2, Lyads/jl0;->n:J

    :goto_a
    iget-wide v7, v2, Lyads/jl0;->l:J

    cmp-long v1, v7, v16

    const-wide/16 v7, 0x3e8

    if-eqz v1, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v14, v2, Lyads/jl0;->l:J

    sub-long/2addr v9, v14

    cmp-long v1, v9, v7

    if-gez v1, :cond_16

    iget v4, v2, Lyads/jl0;->k:F

    goto/16 :goto_d

    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v2, Lyads/jl0;->l:J

    iget-wide v9, v2, Lyads/jl0;->m:J

    iget-wide v14, v2, Lyads/jl0;->n:J

    const-wide/16 v18, 0x3

    mul-long v14, v14, v18

    add-long/2addr v14, v9

    iget-wide v9, v2, Lyads/jl0;->h:J

    cmp-long v1, v9, v14

    if-lez v1, :cond_19

    invoke-static {v7, v8}, Lyads/u56;->a(J)J

    move-result-wide v7

    iget v1, v2, Lyads/jl0;->k:F

    sub-float/2addr v1, v4

    long-to-float v7, v7

    mul-float/2addr v1, v7

    float-to-long v10, v1

    iget v1, v2, Lyads/jl0;->i:F

    sub-float/2addr v1, v4

    mul-float/2addr v1, v7

    float-to-long v7, v1

    add-long/2addr v10, v7

    iget-wide v7, v2, Lyads/jl0;->e:J

    move-wide/from16 v16, v10

    const v1, 0x33d6bf95    # 1.0E-7f

    iget-wide v9, v2, Lyads/jl0;->h:J

    sub-long v9, v9, v16

    new-array v11, v3, [J

    aput-wide v14, v11, v12

    aput-wide v7, v11, v13

    const/4 v7, 0x2

    aput-wide v9, v11, v7

    aget-wide v7, v11, v12

    :goto_b
    if-ge v13, v3, :cond_18

    aget-wide v9, v11, v13

    cmp-long v14, v9, v7

    if-lez v14, :cond_17

    move-wide v7, v9

    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_18
    iput-wide v7, v2, Lyads/jl0;->h:J

    goto :goto_c

    :cond_19
    const v1, 0x33d6bf95    # 1.0E-7f

    iget v3, v2, Lyads/jl0;->k:F

    sub-float/2addr v3, v4

    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v1

    float-to-long v7, v3

    sub-long v7, v5, v7

    iget-wide v9, v2, Lyads/jl0;->h:J

    sget v3, Lyads/u56;->a:I

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v2, Lyads/jl0;->h:J

    iget-wide v9, v2, Lyads/jl0;->g:J

    cmp-long v3, v9, v16

    if-eqz v3, :cond_1a

    cmp-long v3, v7, v9

    if-lez v3, :cond_1a

    iput-wide v9, v2, Lyads/jl0;->h:J

    move-wide v7, v9

    :cond_1a
    :goto_c
    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    iget-wide v9, v2, Lyads/jl0;->a:J

    cmp-long v3, v7, v9

    if-gez v3, :cond_1b

    iput v4, v2, Lyads/jl0;->k:F

    goto :goto_d

    :cond_1b
    long-to-float v3, v5

    mul-float/2addr v3, v1

    add-float/2addr v3, v4

    iget v1, v2, Lyads/jl0;->j:F

    iget v4, v2, Lyads/jl0;->i:F

    sget v5, Lyads/u56;->a:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v2, Lyads/jl0;->k:F

    :goto_d
    iget-object v1, v0, Lyads/mq2;->o:Lyads/ml0;

    invoke-virtual {v1}, Lyads/ml0;->getPlaybackParameters()Lyads/dw4;

    move-result-object v1

    iget v1, v1, Lyads/dw4;->b:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lyads/mq2;->o:Lyads/ml0;

    iget-object v2, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v2, v2, Lyads/bw4;->n:Lyads/dw4;

    new-instance v3, Lyads/dw4;

    iget v2, v2, Lyads/dw4;->c:F

    invoke-direct {v3, v4, v2}, Lyads/dw4;-><init>(FF)V

    invoke-virtual {v1, v3}, Lyads/ml0;->a(Lyads/dw4;)V

    iget-object v1, v0, Lyads/mq2;->x:Lyads/bw4;

    iget-object v1, v1, Lyads/bw4;->n:Lyads/dw4;

    iget-object v2, v0, Lyads/mq2;->o:Lyads/ml0;

    invoke-virtual {v2}, Lyads/ml0;->getPlaybackParameters()Lyads/dw4;

    move-result-object v2

    iget v2, v2, Lyads/dw4;->b:F

    invoke-virtual {v0, v1, v2, v12, v12}, Lyads/mq2;->a(Lyads/dw4;FZZ)V

    :cond_1c
    :goto_e
    return-void
.end method
