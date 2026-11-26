.class public final Lyads/eq2;
.super Lyads/fs;
.source "SourceFile"

# interfaces
.implements Lyads/kw4;


# instance fields
.field public final A:J

.field public B:I

.field public C:I

.field public D:Z

.field public E:I

.field public final F:Lyads/th5;

.field public G:Lyads/ik5;

.field public H:Lyads/hw4;

.field public I:Lyads/t04;

.field public J:Landroid/media/AudioTrack;

.field public K:Landroid/view/Surface;

.field public L:Landroid/view/Surface;

.field public M:Landroid/view/SurfaceHolder;

.field public N:Lyads/bp5;

.field public O:Z

.field public P:Landroid/view/TextureView;

.field public final Q:I

.field public R:I

.field public S:I

.field public final T:I

.field public final U:Lyads/am;

.field public V:F

.field public W:Z

.field public final X:Z

.field public Y:Z

.field public Z:Lyads/yn0;

.field public a0:Lyads/t04;

.field public final b:Lyads/q06;

.field public b0:Lyads/bw4;

.field public final c:Lyads/hw4;

.field public c0:I

.field public final d:Lyads/m50;

.field public d0:J

.field public final e:Landroid/content/Context;

.field public final f:Lyads/eq2;

.field public final g:[Lyads/gs;

.field public final h:Lyads/p06;

.field public final i:Lyads/gu5;

.field public final j:Lyads/mq2;

.field public final k:Lyads/wt3;

.field public final l:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final m:Lyads/hx5;

.field public final n:Ljava/util/ArrayList;

.field public final o:Z

.field public final p:Lyads/ge;

.field public final q:Landroid/os/Looper;

.field public final r:Lyads/vn;

.field public final s:Lyads/du5;

.field public final t:Lyads/bq2;

.field public final u:Lyads/cq2;

.field public final v:Lyads/dm;

.field public final w:Lyads/jm;

.field public final x:Lyads/is5;

.field public final y:Lyads/fj6;

.field public final z:Lyads/wk6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.exoplayer"

    invoke-static {v0}, Lyads/nq2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lyads/wp2;)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, " [ExoPlayerLib/2.18.1] ["

    const-string v3, "Init "

    invoke-direct {v1}, Lyads/fs;-><init>()V

    new-instance v4, Lyads/m50;

    invoke-direct {v4}, Lyads/m50;-><init>()V

    iput-object v4, v1, Lyads/eq2;->d:Lyads/m50;

    :try_start_0
    const-string v4, "ExoPlayerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lyads/u56;->e:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lyads/sv3;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lyads/wp2;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lyads/eq2;->e:Landroid/content/Context;

    iget-object v2, v0, Lyads/wp2;->h:Lyads/v13;

    iget-object v3, v0, Lyads/wp2;->b:Lyads/du5;

    invoke-interface {v2, v3}, Lyads/v13;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/ge;

    iput-object v2, v1, Lyads/eq2;->p:Lyads/ge;

    iget-object v2, v0, Lyads/wp2;->j:Lyads/am;

    iput-object v2, v1, Lyads/eq2;->U:Lyads/am;

    iget v2, v0, Lyads/wp2;->k:I

    iput v2, v1, Lyads/eq2;->Q:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lyads/eq2;->W:Z

    iget-wide v3, v0, Lyads/wp2;->p:J

    iput-wide v3, v1, Lyads/eq2;->A:J

    new-instance v7, Lyads/bq2;

    invoke-direct {v7, v1}, Lyads/bq2;-><init>(Lyads/eq2;)V

    iput-object v7, v1, Lyads/eq2;->t:Lyads/bq2;

    new-instance v3, Lyads/cq2;

    invoke-direct {v3}, Lyads/cq2;-><init>()V

    iput-object v3, v1, Lyads/eq2;->u:Lyads/cq2;

    new-instance v6, Landroid/os/Handler;

    iget-object v3, v0, Lyads/wp2;->i:Landroid/os/Looper;

    invoke-direct {v6, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, v0, Lyads/wp2;->c:Lyads/ut5;

    invoke-interface {v3}, Lyads/ut5;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lyads/zl0;

    move-object v8, v7

    move-object v9, v7

    move-object v10, v7

    invoke-virtual/range {v5 .. v10}, Lyads/zl0;->a(Landroid/os/Handler;Lyads/bq2;Lyads/bq2;Lyads/bq2;Lyads/bq2;)[Lyads/gs;

    move-result-object v3

    iput-object v3, v1, Lyads/eq2;->g:[Lyads/gs;

    array-length v4, v3

    if-lez v4, :cond_e

    iget-object v4, v0, Lyads/wp2;->e:Lyads/ut5;

    invoke-interface {v4}, Lyads/ut5;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/p06;

    iput-object v4, v1, Lyads/eq2;->h:Lyads/p06;

    iget-object v4, v0, Lyads/wp2;->d:Lyads/ut5;

    invoke-interface {v4}, Lyads/ut5;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/g14;

    iget-object v4, v0, Lyads/wp2;->g:Lyads/ut5;

    invoke-interface {v4}, Lyads/ut5;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/vn;

    iput-object v4, v1, Lyads/eq2;->r:Lyads/vn;

    iget-boolean v4, v0, Lyads/wp2;->l:Z

    iput-boolean v4, v1, Lyads/eq2;->o:Z

    iget-object v4, v0, Lyads/wp2;->m:Lyads/th5;

    iput-object v4, v1, Lyads/eq2;->F:Lyads/th5;

    iget-object v4, v0, Lyads/wp2;->i:Landroid/os/Looper;

    iput-object v4, v1, Lyads/eq2;->q:Landroid/os/Looper;

    iget-object v5, v0, Lyads/wp2;->b:Lyads/du5;

    iput-object v5, v1, Lyads/eq2;->s:Lyads/du5;

    iput-object v1, v1, Lyads/eq2;->f:Lyads/eq2;

    new-instance v7, Lyads/wt3;

    new-instance v8, Lfh1;

    const/4 v9, 0x5

    invoke-direct {v8, v1, v9}, Lfh1;-><init>(Ljava/lang/Object;I)V

    new-instance v10, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v10}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {v7, v10, v4, v5, v8}, Lyads/wt3;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lyads/x00;Lyads/ut3;)V

    iput-object v7, v1, Lyads/eq2;->k:Lyads/wt3;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v4, v1, Lyads/eq2;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lyads/eq2;->n:Ljava/util/ArrayList;

    new-instance v4, Lyads/ik5;

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-direct {v4, v5}, Lyads/ik5;-><init>(Ljava/util/Random;)V

    iput-object v4, v1, Lyads/eq2;->G:Lyads/ik5;

    new-instance v4, Lyads/q06;

    array-length v5, v3

    new-array v5, v5, [Lyads/n65;

    array-length v3, v3

    new-array v3, v3, [Lyads/er2;

    sget-object v7, Lyads/m16;->c:Lyads/m16;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v3, v7, v8}, Lyads/q06;-><init>([Lyads/n65;[Lyads/er2;Lyads/m16;Lyads/sw3;)V

    iput-object v4, v1, Lyads/eq2;->b:Lyads/q06;

    new-instance v3, Lyads/hx5;

    invoke-direct {v3}, Lyads/hx5;-><init>()V

    iput-object v3, v1, Lyads/eq2;->m:Lyads/hx5;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    const/16 v4, 0x15

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    move v7, v2

    :goto_0
    const/4 v10, 0x1

    if-ge v7, v4, :cond_0

    aget v11, v5, v7

    invoke-virtual {v3, v11, v10}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    iget-object v5, v1, Lyads/eq2;->h:Lyads/p06;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x1d

    invoke-virtual {v3, v5, v10}, Landroid/util/SparseBooleanArray;->append(IZ)V

    new-instance v5, Lyads/hw4;

    new-instance v7, Lyads/my2;

    invoke-direct {v7, v3}, Lyads/my2;-><init>(Landroid/util/SparseBooleanArray;)V

    invoke-direct {v5, v7}, Lyads/hw4;-><init>(Lyads/my2;)V

    iput-object v5, v1, Lyads/eq2;->c:Lyads/hw4;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move v5, v2

    :goto_1
    iget-object v11, v7, Lyads/my2;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v5, v11, :cond_1

    invoke-virtual {v7, v5}, Lyads/my2;->a(I)I

    move-result v11

    invoke-virtual {v3, v11, v10}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    invoke-virtual {v3, v5, v10}, Landroid/util/SparseBooleanArray;->append(IZ)V

    const/16 v7, 0xa

    invoke-virtual {v3, v7, v10}, Landroid/util/SparseBooleanArray;->append(IZ)V

    new-instance v11, Lyads/hw4;

    new-instance v12, Lyads/my2;

    invoke-direct {v12, v3}, Lyads/my2;-><init>(Landroid/util/SparseBooleanArray;)V

    invoke-direct {v11, v12}, Lyads/hw4;-><init>(Lyads/my2;)V

    iput-object v11, v1, Lyads/eq2;->H:Lyads/hw4;

    iget-object v3, v1, Lyads/eq2;->s:Lyads/du5;

    iget-object v11, v1, Lyads/eq2;->q:Landroid/os/Looper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lyads/gu5;

    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12, v11, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v3, v12}, Lyads/gu5;-><init>(Landroid/os/Handler;)V

    iput-object v3, v1, Lyads/eq2;->i:Lyads/gu5;

    new-instance v3, Lx52;

    invoke-direct {v3, v1, v9}, Lx52;-><init>(Ljava/lang/Object;I)V

    iget-object v11, v1, Lyads/eq2;->b:Lyads/q06;

    move-object/from16 v22, v11

    new-instance v11, Lyads/bw4;

    sget-object v12, Lyads/kx5;->b:Lyads/gx5;

    sget-object v13, Lyads/bw4;->s:Lyads/h14;

    sget-object v21, Lyads/g06;->e:Lyads/g06;

    sget-object v23, Lyads/k55;->f:Lyads/k55;

    sget-object v27, Lyads/dw4;->e:Lyads/dw4;

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    move-object/from16 v24, v13

    invoke-direct/range {v11 .. v34}, Lyads/bw4;-><init>(Lyads/kx5;Lyads/h14;JJILyads/up2;ZLyads/g06;Lyads/q06;Ljava/util/List;Lyads/h14;ZILyads/dw4;JJJZ)V

    iput-object v11, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v11, v1, Lyads/eq2;->p:Lyads/ge;

    iget-object v12, v1, Lyads/eq2;->f:Lyads/eq2;

    iget-object v13, v1, Lyads/eq2;->q:Landroid/os/Looper;

    check-cast v11, Lyads/cj0;

    invoke-virtual {v11, v12, v13}, Lyads/cj0;->a(Lyads/eq2;Landroid/os/Looper;)V

    sget v11, Lyads/u56;->a:I

    const/16 v12, 0x1f

    if-ge v11, v12, :cond_2

    new-instance v12, Lyads/rw4;

    invoke-direct {v12}, Lyads/rw4;-><init>()V

    :goto_2
    move-object/from16 v27, v12

    goto :goto_3

    :cond_2
    iget-object v12, v1, Lyads/eq2;->e:Landroid/content/Context;

    iget-boolean v13, v0, Lyads/wp2;->q:Z

    invoke-static {v12, v1, v13}, Lyads/aq2;->a(Landroid/content/Context;Lyads/eq2;Z)Lyads/rw4;

    move-result-object v12

    goto :goto_2

    :goto_3
    new-instance v13, Lyads/mq2;

    iget-object v14, v1, Lyads/eq2;->g:[Lyads/gs;

    iget-object v15, v1, Lyads/eq2;->h:Lyads/p06;

    iget-object v12, v1, Lyads/eq2;->b:Lyads/q06;

    iget-object v9, v0, Lyads/wp2;->f:Lyads/ut5;

    invoke-interface {v9}, Lyads/ut5;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Lyads/kl0;

    iget-object v9, v1, Lyads/eq2;->r:Lyads/vn;

    iget-object v5, v1, Lyads/eq2;->p:Lyads/ge;

    iget-object v7, v1, Lyads/eq2;->F:Lyads/th5;

    iget-object v2, v0, Lyads/wp2;->n:Lyads/jl0;

    move-object/from16 v18, v9

    iget-wide v8, v0, Lyads/wp2;->o:J

    iget-object v10, v1, Lyads/eq2;->q:Landroid/os/Looper;

    iget-object v4, v1, Lyads/eq2;->s:Lyads/du5;

    move-object/from16 v21, v2

    move-object/from16 v26, v3

    move-object/from16 v25, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move-object/from16 v16, v12

    invoke-direct/range {v13 .. v27}, Lyads/mq2;-><init>([Lyads/gs;Lyads/p06;Lyads/q06;Lyads/kl0;Lyads/vn;Lyads/ge;Lyads/th5;Lyads/jl0;JLandroid/os/Looper;Lyads/du5;Lyads/jq2;Lyads/rw4;)V

    iput-object v13, v1, Lyads/eq2;->j:Lyads/mq2;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lyads/eq2;->V:F

    sget-object v2, Lyads/t04;->H:Lyads/t04;

    iput-object v2, v1, Lyads/eq2;->I:Lyads/t04;

    iput-object v2, v1, Lyads/eq2;->a0:Lyads/t04;

    const/4 v2, -0x1

    iput v2, v1, Lyads/eq2;->c0:I

    const/16 v2, 0x15

    if-ge v11, v2, :cond_5

    iget-object v2, v1, Lyads/eq2;->J:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lyads/eq2;->J:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    const/4 v2, 0x0

    iput-object v2, v1, Lyads/eq2;->J:Landroid/media/AudioTrack;

    :cond_3
    iget-object v2, v1, Lyads/eq2;->J:Landroid/media/AudioTrack;

    if-nez v2, :cond_4

    new-instance v7, Landroid/media/AudioTrack;

    const/4 v8, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v9, 0xfa0

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x2

    invoke-direct/range {v7 .. v14}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v7, v1, Lyads/eq2;->J:Landroid/media/AudioTrack;

    move-object v2, v7

    :cond_4
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    iput v2, v1, Lyads/eq2;->T:I

    goto :goto_4

    :cond_5
    iget-object v2, v1, Lyads/eq2;->e:Landroid/content/Context;

    invoke-static {v2}, Lyads/u56;->a(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lyads/eq2;->T:I

    :goto_4
    sget v2, Lyads/ub0;->b:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lyads/eq2;->X:Z

    iget-object v2, v1, Lyads/eq2;->p:Lyads/ge;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lyads/eq2;->k:Lyads/wt3;

    iget-boolean v4, v3, Lyads/wt3;->g:Z

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    iget-object v3, v3, Lyads/wt3;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v4, Lyads/vt3;

    invoke-direct {v4, v2}, Lyads/vt3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :goto_5
    iget-object v2, v1, Lyads/eq2;->r:Lyads/vn;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, v1, Lyads/eq2;->q:Landroid/os/Looper;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v4, v1, Lyads/eq2;->p:Lyads/ge;

    check-cast v2, Lyads/zj0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lyads/zj0;->b:Lyads/tn;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lyads/tn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/sn;

    iget-object v8, v7, Lyads/sn;->b:Lyads/un;

    if-ne v8, v4, :cond_7

    const/4 v8, 0x1

    iput-boolean v8, v7, Lyads/sn;->c:Z

    iget-object v8, v2, Lyads/tn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    iget-object v2, v2, Lyads/tn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Lyads/sn;

    invoke-direct {v5, v3, v4}, Lyads/sn;-><init>(Landroid/os/Handler;Lyads/un;)V

    invoke-virtual {v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lyads/eq2;->t:Lyads/bq2;

    iget-object v3, v1, Lyads/eq2;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    new-instance v2, Lyads/dm;

    iget-object v3, v0, Lyads/wp2;->a:Landroid/content/Context;

    iget-object v4, v1, Lyads/eq2;->t:Lyads/bq2;

    invoke-direct {v2, v3, v6, v4}, Lyads/dm;-><init>(Landroid/content/Context;Landroid/os/Handler;Lyads/cm;)V

    iput-object v2, v1, Lyads/eq2;->v:Lyads/dm;

    iget-boolean v3, v2, Lyads/dm;->c:Z

    if-eqz v3, :cond_9

    iget-object v3, v2, Lyads/dm;->a:Landroid/content/Context;

    iget-object v4, v2, Lyads/dm;->b:Lyads/bm;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lyads/dm;->c:Z

    :cond_9
    new-instance v2, Lyads/jm;

    iget-object v3, v0, Lyads/wp2;->a:Landroid/content/Context;

    iget-object v4, v1, Lyads/eq2;->t:Lyads/bq2;

    invoke-direct {v2, v3, v6, v4}, Lyads/jm;-><init>(Landroid/content/Context;Landroid/os/Handler;Lyads/im;)V

    iput-object v2, v1, Lyads/eq2;->w:Lyads/jm;

    const/4 v3, 0x0

    invoke-static {v3, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    iput v3, v2, Lyads/jm;->e:I

    :cond_a
    new-instance v2, Lyads/is5;

    iget-object v3, v0, Lyads/wp2;->a:Landroid/content/Context;

    iget-object v4, v1, Lyads/eq2;->t:Lyads/bq2;

    invoke-direct {v2, v3, v6, v4}, Lyads/is5;-><init>(Landroid/content/Context;Landroid/os/Handler;Lyads/gs5;)V

    iput-object v2, v1, Lyads/eq2;->x:Lyads/is5;

    iget-object v3, v1, Lyads/eq2;->U:Lyads/am;

    iget v3, v3, Lyads/am;->d:I

    const/16 v4, 0xd

    const/16 v5, 0x8

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v3, v4, :cond_b

    packed-switch v3, :pswitch_data_0

    move v3, v6

    goto :goto_7

    :pswitch_0
    move v3, v7

    goto :goto_7

    :pswitch_1
    const/4 v3, 0x5

    goto :goto_7

    :pswitch_2
    const/4 v3, 0x4

    goto :goto_7

    :pswitch_3
    move v3, v5

    goto :goto_7

    :pswitch_4
    const/4 v3, 0x0

    goto :goto_7

    :cond_b
    const/4 v3, 0x1

    :goto_7
    iget v4, v2, Lyads/is5;->g:I

    if-ne v4, v3, :cond_c

    goto :goto_8

    :cond_c
    iput v3, v2, Lyads/is5;->g:I

    invoke-virtual {v2}, Lyads/is5;->c()V

    iget-object v3, v2, Lyads/is5;->c:Lyads/gs5;

    check-cast v3, Lyads/bq2;

    invoke-virtual {v3}, Lyads/bq2;->a()V

    :goto_8
    new-instance v3, Lyads/fj6;

    iget-object v4, v0, Lyads/wp2;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lyads/fj6;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lyads/eq2;->y:Lyads/fj6;

    new-instance v3, Lyads/wk6;

    iget-object v0, v0, Lyads/wp2;->a:Landroid/content/Context;

    invoke-direct {v3, v0}, Lyads/wk6;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lyads/eq2;->z:Lyads/wk6;

    new-instance v0, Lyads/yn0;

    invoke-virtual {v2}, Lyads/is5;->a()I

    move-result v3

    iget-object v4, v2, Lyads/is5;->d:Landroid/media/AudioManager;

    iget v2, v2, Lyads/is5;->g:I

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-direct {v0, v4, v3, v2}, Lyads/yn0;-><init>(III)V

    iput-object v0, v1, Lyads/eq2;->Z:Lyads/yn0;

    iget-object v0, v1, Lyads/eq2;->h:Lyads/p06;

    iget-object v2, v1, Lyads/eq2;->U:Lyads/am;

    check-cast v0, Lyads/um0;

    iget-object v3, v0, Lyads/um0;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v0, Lyads/um0;->h:Lyads/am;

    invoke-virtual {v4, v2}, Lyads/am;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-object v2, v0, Lyads/um0;->h:Lyads/am;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_d

    :try_start_2
    invoke-virtual {v0}, Lyads/um0;->b()V

    :cond_d
    iget v0, v1, Lyads/eq2;->T:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xa

    const/4 v8, 0x1

    invoke-virtual {v1, v8, v2, v0}, Lyads/eq2;->a(IILjava/lang/Object;)V

    iget v0, v1, Lyads/eq2;->T:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v2, v0}, Lyads/eq2;->a(IILjava/lang/Object;)V

    iget-object v0, v1, Lyads/eq2;->U:Lyads/am;

    invoke-virtual {v1, v8, v6, v0}, Lyads/eq2;->a(IILjava/lang/Object;)V

    iget v0, v1, Lyads/eq2;->Q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, v7, v2, v0}, Lyads/eq2;->a(IILjava/lang/Object;)V

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v1, v7, v2, v0}, Lyads/eq2;->a(IILjava/lang/Object;)V

    iget-boolean v0, v1, Lyads/eq2;->W:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    const/4 v8, 0x1

    invoke-virtual {v1, v8, v2, v0}, Lyads/eq2;->a(IILjava/lang/Object;)V

    iget-object v0, v1, Lyads/eq2;->u:Lyads/cq2;

    const/4 v2, 0x7

    invoke-virtual {v1, v7, v2, v0}, Lyads/eq2;->a(IILjava/lang/Object;)V

    iget-object v0, v1, Lyads/eq2;->u:Lyads/cq2;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v5, v0}, Lyads/eq2;->a(IILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lyads/eq2;->d:Lyads/m50;

    invoke-virtual {v0}, Lyads/m50;->d()Z

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_9
    iget-object v1, v1, Lyads/eq2;->d:Lyads/m50;

    invoke-virtual {v1}, Lyads/m50;->d()Z

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
    .end array-data
.end method

.method public static synthetic a(FLyads/iw4;)V
    .locals 0

    .line 1054
    invoke-interface {p1, p0}, Lyads/iw4;->onVolumeChanged(F)V

    return-void
.end method

.method public static synthetic a(IILyads/iw4;)V
    .locals 0

    .line 1215
    invoke-interface {p2, p0, p1}, Lyads/iw4;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method public static synthetic a(ILyads/jw4;Lyads/jw4;Lyads/iw4;)V
    .locals 0

    .line 1109
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1110
    invoke-interface {p3, p1, p2, p0}, Lyads/iw4;->a(Lyads/jw4;Lyads/jw4;I)V

    return-void
.end method

.method public static synthetic a(Lyads/bw4;ILyads/iw4;)V
    .locals 0

    .line 1108
    iget-object p0, p0, Lyads/bw4;->a:Lyads/kx5;

    invoke-interface {p2, p1}, Lyads/iw4;->a(I)V

    return-void
.end method

.method public static synthetic a(Lyads/bw4;Lyads/iw4;)V
    .locals 0

    .line 1112
    iget-object p0, p0, Lyads/bw4;->f:Lyads/up2;

    invoke-interface {p1, p0}, Lyads/iw4;->a(Lyads/zv4;)V

    return-void
.end method

.method public static a(Lyads/iw4;)V
    .locals 4

    .line 1023
    new-instance v0, Lyads/cr2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lyads/cr2;-><init>(I)V

    .line 1024
    new-instance v1, Lyads/up2;

    const/4 v2, 0x2

    const/16 v3, 0x3eb

    invoke-direct {v1, v2, v0, v3}, Lyads/up2;-><init>(ILjava/lang/Exception;I)V

    .line 1025
    invoke-interface {p0, v1}, Lyads/iw4;->b(Lyads/zv4;)V

    return-void
.end method

.method public static synthetic a(Lyads/p04;ILyads/iw4;)V
    .locals 0

    .line 1111
    invoke-interface {p2, p0, p1}, Lyads/iw4;->a(Lyads/p04;I)V

    return-void
.end method

.method public static synthetic a(Lyads/t04;Lyads/iw4;)V
    .locals 0

    .line 1113
    invoke-interface {p1, p0}, Lyads/iw4;->a(Lyads/t04;)V

    return-void
.end method

.method public static b(Lyads/bw4;)J
    .locals 6

    .line 67
    new-instance v0, Lyads/jx5;

    invoke-direct {v0}, Lyads/jx5;-><init>()V

    .line 68
    new-instance v1, Lyads/hx5;

    invoke-direct {v1}, Lyads/hx5;-><init>()V

    .line 69
    iget-object v2, p0, Lyads/bw4;->a:Lyads/kx5;

    iget-object v3, p0, Lyads/bw4;->b:Lyads/h14;

    iget-object v3, v3, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    .line 70
    iget-wide v2, p0, Lyads/bw4;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 71
    iget-object p0, p0, Lyads/bw4;->a:Lyads/kx5;

    iget v1, v1, Lyads/hx5;->d:I

    const-wide/16 v2, 0x0

    .line 72
    invoke-virtual {p0, v1, v0, v2, v3}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object p0

    .line 73
    iget-wide v0, p0, Lyads/jx5;->n:J

    return-wide v0

    .line 74
    :cond_0
    iget-wide v0, v1, Lyads/hx5;->f:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static synthetic b(Lyads/bw4;ILyads/iw4;)V
    .locals 0

    .line 66
    iget-boolean p0, p0, Lyads/bw4;->l:Z

    invoke-interface {p2, p0, p1}, Lyads/iw4;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method public static synthetic b(Lyads/bw4;Lyads/iw4;)V
    .locals 0

    .line 65
    iget-object p0, p0, Lyads/bw4;->f:Lyads/up2;

    invoke-interface {p1, p0}, Lyads/iw4;->b(Lyads/zv4;)V

    return-void
.end method

.method public static synthetic c(Lyads/bw4;Lyads/iw4;)V
    .locals 0

    .line 258
    iget-object p0, p0, Lyads/bw4;->i:Lyads/q06;

    iget-object p0, p0, Lyads/q06;->d:Lyads/m16;

    invoke-interface {p1, p0}, Lyads/iw4;->a(Lyads/m16;)V

    return-void
.end method

.method public static synthetic d(Lyads/bw4;Lyads/iw4;)V
    .locals 1

    .line 95
    iget-boolean v0, p0, Lyads/bw4;->g:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    iget-boolean p0, p0, Lyads/bw4;->g:Z

    invoke-interface {p1, p0}, Lyads/iw4;->onIsLoadingChanged(Z)V

    return-void
.end method

.method public static synthetic e(Lyads/bw4;Lyads/iw4;)V
    .locals 1

    .line 25
    iget-boolean v0, p0, Lyads/bw4;->l:Z

    iget p0, p0, Lyads/bw4;->e:I

    invoke-interface {p1, p0, v0}, Lyads/iw4;->a(IZ)V

    return-void
.end method

.method public static synthetic f(Lyads/bw4;Lyads/iw4;)V
    .locals 0

    .line 25
    iget p0, p0, Lyads/bw4;->e:I

    invoke-interface {p1, p0}, Lyads/iw4;->onPlaybackStateChanged(I)V

    return-void
.end method

.method public static synthetic g(Lyads/bw4;Lyads/iw4;)V
    .locals 0

    .line 12
    iget p0, p0, Lyads/bw4;->m:I

    invoke-interface {p1, p0}, Lyads/iw4;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method public static h(Lyads/bw4;Lyads/iw4;)V
    .locals 2

    .line 30
    iget v0, p0, Lyads/bw4;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lyads/bw4;->l:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lyads/bw4;->m:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    invoke-interface {p1, p0}, Lyads/iw4;->onIsPlayingChanged(Z)V

    return-void
.end method

.method public static synthetic i(Lyads/bw4;Lyads/iw4;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lyads/bw4;->n:Lyads/dw4;

    invoke-interface {p1, p0}, Lyads/iw4;->a(Lyads/dw4;)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/bw4;)J
    .locals 4

    .line 1071
    iget-object v0, p1, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v0}, Lyads/kx5;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    iget-wide p0, p0, Lyads/eq2;->d0:J

    invoke-static {p0, p1}, Lyads/u56;->a(J)J

    move-result-wide p0

    return-wide p0

    .line 1073
    :cond_0
    iget-object v0, p1, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v0}, Lyads/b14;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1074
    iget-wide p0, p1, Lyads/bw4;->r:J

    return-wide p0

    .line 1075
    :cond_1
    iget-object v0, p1, Lyads/bw4;->a:Lyads/kx5;

    iget-object v1, p1, Lyads/bw4;->b:Lyads/h14;

    iget-wide v2, p1, Lyads/bw4;->r:J

    .line 1076
    iget-object p1, v1, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v1, p0, Lyads/eq2;->m:Lyads/hx5;

    invoke-virtual {v0, p1, v1}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    .line 1077
    iget-object p0, p0, Lyads/eq2;->m:Lyads/hx5;

    .line 1078
    iget-wide p0, p0, Lyads/hx5;->f:J

    add-long/2addr v2, p0

    return-wide v2
.end method

.method public final a(Lyads/hx4;IJ)Landroid/util/Pair;
    .locals 6

    .line 1169
    invoke-virtual {p1}, Lyads/kx5;->c()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 1170
    iput p2, p0, Lyads/eq2;->c0:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    move-wide p3, v1

    .line 1171
    :cond_0
    iput-wide p3, p0, Lyads/eq2;->d0:J

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 1172
    iget v0, p1, Lyads/hx4;->e:I

    if-lt p2, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, p2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x0

    .line 1173
    invoke-virtual {p1, p2}, Lyads/f;->a(Z)I

    move-result p2

    .line 1174
    iget-object p3, p0, Lyads/fs;->a:Lyads/jx5;

    .line 1175
    invoke-virtual {p1, p2, p3, v1, v2}, Lyads/f;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object p3

    .line 1176
    iget-wide p3, p3, Lyads/jx5;->n:J

    .line 1177
    invoke-static {p3, p4}, Lyads/u56;->b(J)J

    move-result-wide p3

    goto :goto_0

    .line 1178
    :goto_2
    iget-object v1, p0, Lyads/fs;->a:Lyads/jx5;

    iget-object v2, p0, Lyads/eq2;->m:Lyads/hx5;

    invoke-static {p3, p4}, Lyads/u56;->a(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lyads/kx5;->a(Lyads/jx5;Lyads/hx5;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/bw4;Lyads/hx4;Landroid/util/Pair;)Lyads/bw4;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1114
    invoke-virtual {v1}, Lyads/kx5;->c()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move-object/from16 v3, p1

    goto :goto_0

    .line 1115
    :cond_1
    invoke-static {}, Lmi2;->b()V

    return-object v4

    .line 1116
    :goto_0
    iget-object v5, v3, Lyads/bw4;->a:Lyads/kx5;

    .line 1117
    invoke-virtual/range {p1 .. p2}, Lyads/bw4;->a(Lyads/kx5;)Lyads/bw4;

    move-result-object v6

    .line 1118
    invoke-virtual {v1}, Lyads/kx5;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1119
    sget-object v7, Lyads/bw4;->s:Lyads/h14;

    .line 1120
    iget-wide v1, v0, Lyads/eq2;->d0:J

    invoke-static {v1, v2}, Lyads/u56;->a(J)J

    move-result-wide v8

    .line 1121
    sget-object v16, Lyads/g06;->e:Lyads/g06;

    iget-object v0, v0, Lyads/eq2;->b:Lyads/q06;

    .line 1122
    sget-object v18, Lyads/k55;->f:Lyads/k55;

    const-wide/16 v14, 0x0

    move-wide v10, v8

    move-wide v12, v8

    move-object/from16 v17, v0

    .line 1123
    invoke-virtual/range {v6 .. v18}, Lyads/bw4;->a(Lyads/h14;JJJJLyads/g06;Lyads/q06;Ljava/util/List;)Lyads/bw4;

    move-result-object v0

    .line 1124
    invoke-virtual {v0, v7}, Lyads/bw4;->a(Lyads/h14;)Lyads/bw4;

    move-result-object v0

    .line 1125
    iget-wide v1, v0, Lyads/bw4;->r:J

    iput-wide v1, v0, Lyads/bw4;->p:J

    return-object v0

    .line 1126
    :cond_2
    iget-object v3, v6, Lyads/bw4;->b:Lyads/h14;

    iget-object v3, v3, Lyads/b14;->a:Ljava/lang/Object;

    .line 1127
    sget v7, Lyads/u56;->a:I

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1128
    new-instance v8, Lyads/h14;

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v8, v9}, Lyads/h14;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v8, v6, Lyads/bw4;->b:Lyads/h14;

    .line 1129
    :goto_1
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1130
    invoke-virtual {v0}, Lyads/eq2;->d()J

    move-result-wide v11

    invoke-static {v11, v12}, Lyads/u56;->a(J)J

    move-result-wide v11

    .line 1131
    invoke-virtual {v5}, Lyads/kx5;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1132
    iget-object v2, v0, Lyads/eq2;->m:Lyads/hx5;

    .line 1133
    invoke-virtual {v5, v3, v2}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v2

    .line 1134
    iget-wide v2, v2, Lyads/hx5;->f:J

    sub-long/2addr v11, v2

    :cond_4
    if-eqz v7, :cond_5

    cmp-long v2, v9, v11

    if-gez v2, :cond_6

    :cond_5
    move v1, v7

    move-object v7, v8

    move-wide v8, v9

    goto/16 :goto_5

    :cond_6
    if-nez v2, :cond_a

    .line 1135
    iget-object v2, v6, Lyads/bw4;->k:Lyads/h14;

    iget-object v2, v2, Lyads/b14;->a:Ljava/lang/Object;

    .line 1136
    invoke-virtual {v1, v2}, Lyads/f;->a(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    .line 1137
    iget-object v3, v0, Lyads/eq2;->m:Lyads/hx5;

    const/4 v4, 0x0

    .line 1138
    invoke-virtual {v1, v2, v3, v4}, Lyads/f;->a(ILyads/hx5;Z)Lyads/hx5;

    move-result-object v2

    .line 1139
    iget v2, v2, Lyads/hx5;->d:I

    iget-object v3, v8, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v4, v0, Lyads/eq2;->m:Lyads/hx5;

    .line 1140
    invoke-virtual {v1, v3, v4}, Lyads/f;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v3

    iget v3, v3, Lyads/hx5;->d:I

    if-eq v2, v3, :cond_7

    goto :goto_2

    :cond_7
    return-object v6

    .line 1141
    :cond_8
    :goto_2
    iget-object v2, v8, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v3, v0, Lyads/eq2;->m:Lyads/hx5;

    invoke-virtual {v1, v2, v3}, Lyads/f;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    .line 1142
    invoke-virtual {v8}, Lyads/b14;->a()Z

    move-result v1

    .line 1143
    iget-object v0, v0, Lyads/eq2;->m:Lyads/hx5;

    if-eqz v1, :cond_9

    .line 1144
    iget v1, v8, Lyads/b14;->b:I

    iget v2, v8, Lyads/b14;->c:I

    invoke-virtual {v0, v1, v2}, Lyads/hx5;->a(II)J

    move-result-wide v0

    :goto_3
    move-object v7, v8

    goto :goto_4

    .line 1145
    :cond_9
    iget-wide v0, v0, Lyads/hx5;->e:J

    goto :goto_3

    .line 1146
    :goto_4
    iget-wide v8, v6, Lyads/bw4;->r:J

    iget-wide v10, v6, Lyads/bw4;->r:J

    iget-wide v12, v6, Lyads/bw4;->d:J

    iget-wide v2, v6, Lyads/bw4;->r:J

    sub-long v14, v0, v2

    iget-object v2, v6, Lyads/bw4;->h:Lyads/g06;

    iget-object v3, v6, Lyads/bw4;->i:Lyads/q06;

    iget-object v4, v6, Lyads/bw4;->j:Ljava/util/List;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 1147
    invoke-virtual/range {v6 .. v18}, Lyads/bw4;->a(Lyads/h14;JJJJLyads/g06;Lyads/q06;Ljava/util/List;)Lyads/bw4;

    move-result-object v2

    .line 1148
    invoke-virtual {v2, v7}, Lyads/bw4;->a(Lyads/h14;)Lyads/bw4;

    move-result-object v2

    .line 1149
    iput-wide v0, v2, Lyads/bw4;->p:J

    return-object v2

    :cond_a
    move-object v7, v8

    .line 1150
    invoke-virtual {v7}, Lyads/b14;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1151
    iget-wide v0, v6, Lyads/bw4;->q:J

    sub-long v2, v9, v11

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 1152
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 1153
    iget-wide v0, v6, Lyads/bw4;->p:J

    .line 1154
    iget-object v2, v6, Lyads/bw4;->k:Lyads/h14;

    iget-object v3, v6, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v2, v3}, Lyads/b14;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    add-long v0, v9, v14

    .line 1155
    :cond_b
    iget-object v2, v6, Lyads/bw4;->h:Lyads/g06;

    iget-object v3, v6, Lyads/bw4;->i:Lyads/q06;

    iget-object v4, v6, Lyads/bw4;->j:Ljava/util/List;

    move-wide v8, v9

    move-wide v10, v8

    move-wide v12, v8

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 1156
    invoke-virtual/range {v6 .. v18}, Lyads/bw4;->a(Lyads/h14;JJJJLyads/g06;Lyads/q06;Ljava/util/List;)Lyads/bw4;

    move-result-object v2

    .line 1157
    iput-wide v0, v2, Lyads/bw4;->p:J

    return-object v2

    .line 1158
    :cond_c
    invoke-static {}, Lud;->g()V

    return-object v4

    .line 1159
    :goto_5
    invoke-virtual {v7}, Lyads/b14;->a()Z

    move-result v2

    if-nez v2, :cond_10

    if-nez v1, :cond_d

    .line 1160
    sget-object v2, Lyads/g06;->e:Lyads/g06;

    :goto_6
    move-object/from16 v16, v2

    goto :goto_7

    :cond_d
    iget-object v2, v6, Lyads/bw4;->h:Lyads/g06;

    goto :goto_6

    :goto_7
    if-nez v1, :cond_e

    .line 1161
    iget-object v0, v0, Lyads/eq2;->b:Lyads/q06;

    :goto_8
    move-object/from16 v17, v0

    goto :goto_9

    :cond_e
    iget-object v0, v6, Lyads/bw4;->i:Lyads/q06;

    goto :goto_8

    :goto_9
    if-nez v1, :cond_f

    .line 1162
    sget-object v0, Lyads/oe3;->c:Lyads/le3;

    .line 1163
    sget-object v0, Lyads/k55;->f:Lyads/k55;

    :goto_a
    move-object/from16 v18, v0

    goto :goto_b

    .line 1164
    :cond_f
    iget-object v0, v6, Lyads/bw4;->j:Ljava/util/List;

    goto :goto_a

    :goto_b
    const-wide/16 v14, 0x0

    move-wide v10, v8

    move-wide v12, v8

    .line 1165
    invoke-virtual/range {v6 .. v18}, Lyads/bw4;->a(Lyads/h14;JJJJLyads/g06;Lyads/q06;Ljava/util/List;)Lyads/bw4;

    move-result-object v0

    .line 1166
    invoke-virtual {v0, v7}, Lyads/bw4;->a(Lyads/h14;)Lyads/bw4;

    move-result-object v0

    .line 1167
    iput-wide v8, v0, Lyads/bw4;->p:J

    return-object v0

    .line 1168
    :cond_10
    invoke-static {}, Lud;->g()V

    return-object v4
.end method

.method public final a(Lyads/tw4;)Lyads/uw4;
    .locals 8

    .line 1179
    invoke-virtual {p0}, Lyads/eq2;->h()I

    move-result v0

    .line 1180
    new-instance v1, Lyads/uw4;

    iget-object v2, p0, Lyads/eq2;->j:Lyads/mq2;

    iget-object v3, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v4, v3, Lyads/bw4;->a:Lyads/kx5;

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v5, v0

    .line 1181
    iget-object v6, p0, Lyads/eq2;->s:Lyads/du5;

    .line 1182
    iget-object v7, v2, Lyads/mq2;->k:Landroid/os/Looper;

    move-object v3, p1

    .line 1183
    invoke-direct/range {v1 .. v7}, Lyads/uw4;-><init>(Lyads/sw4;Lyads/tw4;Lyads/kx5;ILyads/du5;Landroid/os/Looper;)V

    return-object v1
.end method

.method public final a(F)V
    .locals 3

    .line 1043
    invoke-virtual {p0}, Lyads/eq2;->q()V

    .line 1044
    sget v0, Lyads/u56;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1045
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1046
    iget v0, p0, Lyads/eq2;->V:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1047
    :cond_0
    iput p1, p0, Lyads/eq2;->V:F

    .line 1048
    iget-object v0, p0, Lyads/eq2;->w:Lyads/jm;

    .line 1049
    iget v0, v0, Lyads/jm;->f:F

    mul-float/2addr v0, p1

    .line 1050
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Lyads/eq2;->a(IILjava/lang/Object;)V

    .line 1051
    iget-object p0, p0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v0, Lsu9;

    invoke-direct {v0, p1}, Lsu9;-><init>(F)V

    const/16 p1, 0x16

    .line 1052
    invoke-virtual {p0, p1, v0}, Lyads/wt3;->a(ILyads/tt3;)V

    .line 1053
    invoke-virtual {p0}, Lyads/wt3;->a()V

    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 1209
    iget v0, p0, Lyads/eq2;->R:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lyads/eq2;->S:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1210
    :cond_1
    :goto_0
    iput p1, p0, Lyads/eq2;->R:I

    .line 1211
    iput p2, p0, Lyads/eq2;->S:I

    .line 1212
    iget-object p0, p0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v0, Lru9;

    invoke-direct {v0, p1, p2}, Lru9;-><init>(II)V

    const/16 p1, 0x18

    .line 1213
    invoke-virtual {p0, p1, v0}, Lyads/wt3;->a(ILyads/tt3;)V

    .line 1214
    invoke-virtual {p0}, Lyads/wt3;->a()V

    return-void
.end method

.method public final a(IILjava/lang/Object;)V
    .locals 5

    .line 1227
    iget-object v0, p0, Lyads/eq2;->g:[Lyads/gs;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 1228
    iget v4, v3, Lyads/gs;->b:I

    if-ne v4, p1, :cond_2

    .line 1229
    invoke-virtual {p0, v3}, Lyads/eq2;->a(Lyads/tw4;)Lyads/uw4;

    move-result-object v3

    .line 1230
    iget-boolean v4, v3, Lyads/uw4;->g:Z

    if-nez v4, :cond_1

    .line 1231
    iput p2, v3, Lyads/uw4;->d:I

    if-nez v4, :cond_0

    .line 1232
    iput-object p3, v3, Lyads/uw4;->e:Ljava/lang/Object;

    .line 1233
    invoke-virtual {v3}, Lyads/uw4;->a()Lyads/uw4;

    goto :goto_1

    .line 1234
    :cond_0
    invoke-static {}, Lud;->g()V

    return-void

    .line 1235
    :cond_1
    invoke-static {}, Lud;->g()V

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(IIZ)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    if-eq v1, v3, :cond_1

    move v2, v3

    .line 1216
    :cond_1
    iget-object v1, v0, Lyads/eq2;->b0:Lyads/bw4;

    iget-boolean v5, v1, Lyads/bw4;->l:Z

    if-ne v5, v4, :cond_2

    iget v5, v1, Lyads/bw4;->m:I

    if-ne v5, v2, :cond_2

    return-void

    .line 1217
    :cond_2
    iget v5, v0, Lyads/eq2;->B:I

    add-int/2addr v5, v3

    iput v5, v0, Lyads/eq2;->B:I

    .line 1218
    new-instance v5, Lyads/bw4;

    iget-object v6, v1, Lyads/bw4;->a:Lyads/kx5;

    iget-object v7, v1, Lyads/bw4;->b:Lyads/h14;

    iget-wide v8, v1, Lyads/bw4;->c:J

    iget-wide v10, v1, Lyads/bw4;->d:J

    iget v12, v1, Lyads/bw4;->e:I

    iget-object v13, v1, Lyads/bw4;->f:Lyads/up2;

    iget-boolean v14, v1, Lyads/bw4;->g:Z

    iget-object v15, v1, Lyads/bw4;->h:Lyads/g06;

    iget-object v3, v1, Lyads/bw4;->i:Lyads/q06;

    move/from16 v20, v2

    iget-object v2, v1, Lyads/bw4;->j:Ljava/util/List;

    move-object/from16 v17, v2

    iget-object v2, v1, Lyads/bw4;->k:Lyads/h14;

    move-object/from16 v18, v2

    iget-object v2, v1, Lyads/bw4;->n:Lyads/dw4;

    move-object/from16 v21, v2

    move-object/from16 v16, v3

    iget-wide v2, v1, Lyads/bw4;->p:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lyads/bw4;->q:J

    move-wide/from16 v24, v2

    iget-wide v2, v1, Lyads/bw4;->r:J

    iget-boolean v1, v1, Lyads/bw4;->o:Z

    move/from16 v28, v1

    move-wide/from16 v26, v2

    move/from16 v19, v4

    invoke-direct/range {v5 .. v28}, Lyads/bw4;-><init>(Lyads/kx5;Lyads/h14;JJILyads/up2;ZLyads/g06;Lyads/q06;Ljava/util/List;Lyads/h14;ZILyads/dw4;JJJZ)V

    move-object v1, v5

    move/from16 v2, v19

    move/from16 v3, v20

    .line 1219
    iget-object v4, v0, Lyads/eq2;->j:Lyads/mq2;

    .line 1220
    iget-object v4, v4, Lyads/mq2;->i:Lyads/gu5;

    .line 1221
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1222
    invoke-static {}, Lyads/gu5;->a()Lyads/fu5;

    move-result-object v5

    iget-object v4, v4, Lyads/gu5;->a:Landroid/os/Handler;

    const/4 v6, 0x1

    .line 1223
    invoke-virtual {v4, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1224
    iput-object v2, v5, Lyads/fu5;->a:Landroid/os/Message;

    .line 1225
    invoke-virtual {v5}, Lyads/fu5;->b()V

    const/4 v5, 0x5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    const/4 v4, 0x0

    move/from16 v3, p2

    .line 1226
    invoke-virtual/range {v0 .. v7}, Lyads/eq2;->a(Lyads/bw4;IIZIJ)V

    return-void
.end method

.method public final a(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1184
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1185
    invoke-virtual {p0, v0}, Lyads/eq2;->a(Landroid/view/Surface;)V

    .line 1186
    iput-object v0, p0, Lyads/eq2;->L:Landroid/view/Surface;

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 9

    .line 1187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    iget-object v1, p0, Lyads/eq2;->g:[Lyads/gs;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v4, v2, :cond_3

    aget-object v7, v1, v4

    .line 1189
    iget v8, v7, Lyads/gs;->b:I

    if-ne v8, v5, :cond_2

    .line 1190
    invoke-virtual {p0, v7}, Lyads/eq2;->a(Lyads/tw4;)Lyads/uw4;

    move-result-object v5

    .line 1191
    iget-boolean v7, v5, Lyads/uw4;->g:Z

    if-nez v7, :cond_1

    .line 1192
    iput v6, v5, Lyads/uw4;->d:I

    if-nez v7, :cond_0

    .line 1193
    iput-object p1, v5, Lyads/uw4;->e:Ljava/lang/Object;

    .line 1194
    invoke-virtual {v5}, Lyads/uw4;->a()Lyads/uw4;

    move-result-object v5

    .line 1195
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1196
    :cond_0
    invoke-static {}, Lud;->g()V

    return-void

    .line 1197
    :cond_1
    invoke-static {}, Lud;->g()V

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1198
    :cond_3
    iget-object v1, p0, Lyads/eq2;->K:Landroid/view/Surface;

    if-eqz v1, :cond_5

    if-eq v1, p1, :cond_5

    .line 1199
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/uw4;

    .line 1200
    iget-wide v7, p0, Lyads/eq2;->A:J

    invoke-virtual {v1, v7, v8}, Lyads/uw4;->a(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v3, v6

    goto :goto_3

    .line 1201
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1202
    :cond_4
    :goto_3
    iget-object v0, p0, Lyads/eq2;->K:Landroid/view/Surface;

    iget-object v1, p0, Lyads/eq2;->L:Landroid/view/Surface;

    if-ne v0, v1, :cond_5

    .line 1203
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 1204
    iput-object v0, p0, Lyads/eq2;->L:Landroid/view/Surface;

    .line 1205
    :cond_5
    iput-object p1, p0, Lyads/eq2;->K:Landroid/view/Surface;

    if-eqz v3, :cond_6

    .line 1206
    new-instance p1, Lyads/cr2;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lyads/cr2;-><init>(I)V

    .line 1207
    new-instance v0, Lyads/up2;

    const/16 v1, 0x3eb

    invoke-direct {v0, v5, p1, v1}, Lyads/up2;-><init>(ILjava/lang/Exception;I)V

    .line 1208
    invoke-virtual {p0, v0}, Lyads/eq2;->a(Lyads/up2;)V

    :cond_6
    return-void
.end method

.method public final a(Landroid/view/TextureView;)V
    .locals 4

    .line 1026
    invoke-virtual {p0}, Lyads/eq2;->q()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1027
    invoke-virtual {p0}, Lyads/eq2;->q()V

    .line 1028
    invoke-virtual {p0}, Lyads/eq2;->m()V

    .line 1029
    invoke-virtual {p0, v0}, Lyads/eq2;->a(Landroid/view/Surface;)V

    .line 1030
    invoke-virtual {p0, v1, v1}, Lyads/eq2;->a(II)V

    return-void

    .line 1031
    :cond_0
    invoke-virtual {p0}, Lyads/eq2;->m()V

    .line 1032
    iput-object p1, p0, Lyads/eq2;->P:Landroid/view/TextureView;

    .line 1033
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1034
    const-string v2, "ExoPlayerImpl"

    const-string v3, "Replacing existing SurfaceTextureListener."

    invoke-static {v2, v3}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :cond_1
    iget-object v2, p0, Lyads/eq2;->t:Lyads/bq2;

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1036
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_3

    .line 1037
    invoke-virtual {p0, v0}, Lyads/eq2;->a(Landroid/view/Surface;)V

    .line 1038
    invoke-virtual {p0, v1, v1}, Lyads/eq2;->a(II)V

    return-void

    .line 1039
    :cond_3
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1040
    invoke-virtual {p0, v0}, Lyads/eq2;->a(Landroid/view/Surface;)V

    .line 1041
    iput-object v0, p0, Lyads/eq2;->L:Landroid/view/Surface;

    .line 1042
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lyads/eq2;->a(II)V

    return-void
.end method

.method public final a(Lyads/bw4;IIZIJ)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lyads/eq2;->b0:Lyads/bw4;

    iput-object v1, v0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v6, v5, Lyads/bw4;->a:Lyads/kx5;

    iget-object v7, v1, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v6, v7}, Lyads/kx5;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, v5, Lyads/bw4;->a:Lyads/kx5;

    iget-object v8, v1, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v8}, Lyads/kx5;->c()Z

    move-result v9

    const-wide/16 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Lyads/kx5;->c()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v16, 0x3

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v8}, Lyads/kx5;->c()Z

    move-result v9

    const/16 v16, 0x3

    invoke-virtual {v7}, Lyads/kx5;->c()Z

    move-result v13

    if-eq v9, v13, :cond_1

    new-instance v6, Landroid/util/Pair;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    iget-object v9, v5, Lyads/bw4;->b:Lyads/h14;

    iget-object v9, v9, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v13, v0, Lyads/eq2;->m:Lyads/hx5;

    invoke-virtual {v7, v9, v13}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v9

    iget v9, v9, Lyads/hx5;->d:I

    iget-object v13, v0, Lyads/fs;->a:Lyads/jx5;

    invoke-virtual {v7, v9, v13, v11, v12}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object v7

    iget-object v7, v7, Lyads/jx5;->b:Ljava/lang/Object;

    iget-object v9, v1, Lyads/bw4;->b:Lyads/h14;

    iget-object v9, v9, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v13, v0, Lyads/eq2;->m:Lyads/hx5;

    invoke-virtual {v8, v9, v13}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v9

    iget v9, v9, Lyads/hx5;->d:I

    iget-object v13, v0, Lyads/fs;->a:Lyads/jx5;

    invoke-virtual {v8, v9, v13, v11, v12}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object v8

    iget-object v8, v8, Lyads/jx5;->b:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz p4, :cond_2

    if-nez v2, :cond_2

    move v4, v15

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    if-ne v2, v15, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    move/from16 v4, v16

    :goto_0
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lud;->g()V

    return-void

    :cond_5
    if-eqz p4, :cond_6

    if-nez v2, :cond_6

    iget-object v6, v5, Lyads/bw4;->b:Lyads/h14;

    iget-wide v6, v6, Lyads/b14;->d:J

    iget-object v8, v1, Lyads/bw4;->b:Lyads/h14;

    iget-wide v8, v8, Lyads/b14;->d:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    new-instance v6, Landroid/util/Pair;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v0, Lyads/eq2;->I:Lyads/t04;

    if-eqz v4, :cond_8

    iget-object v9, v1, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v9}, Lyads/kx5;->c()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v1, Lyads/bw4;->a:Lyads/kx5;

    iget-object v13, v1, Lyads/bw4;->b:Lyads/h14;

    iget-object v13, v13, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v8, v0, Lyads/eq2;->m:Lyads/hx5;

    invoke-virtual {v9, v13, v8}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v8

    iget v8, v8, Lyads/hx5;->d:I

    iget-object v9, v1, Lyads/bw4;->a:Lyads/kx5;

    iget-object v13, v0, Lyads/fs;->a:Lyads/jx5;

    invoke-virtual {v9, v8, v13, v11, v12}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object v8

    iget-object v8, v8, Lyads/jx5;->d:Lyads/p04;

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    :goto_2
    sget-object v9, Lyads/t04;->H:Lyads/t04;

    iput-object v9, v0, Lyads/eq2;->a0:Lyads/t04;

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    :goto_3
    if-nez v4, :cond_9

    iget-object v9, v5, Lyads/bw4;->j:Ljava/util/List;

    iget-object v13, v1, Lyads/bw4;->j:Ljava/util/List;

    invoke-interface {v9, v13}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    :cond_9
    iget-object v7, v0, Lyads/eq2;->a0:Lyads/t04;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lyads/s04;

    invoke-direct {v9, v7}, Lyads/s04;-><init>(Lyads/t04;)V

    iget-object v7, v1, Lyads/bw4;->j:Ljava/util/List;

    move v13, v14

    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v13, v10, :cond_b

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/h84;

    move v15, v14

    :goto_5
    iget-object v3, v10, Lyads/h84;->b:[Lyads/g84;

    array-length v11, v3

    if-ge v15, v11, :cond_a

    aget-object v3, v3, v15

    invoke-interface {v3, v9}, Lyads/g84;->a(Lyads/s04;)V

    add-int/lit8 v15, v15, 0x1

    const-wide/16 v11, 0x0

    goto :goto_5

    :cond_a
    add-int/lit8 v13, v13, 0x1

    const/4 v3, -0x1

    const-wide/16 v11, 0x0

    const/4 v15, 0x1

    goto :goto_4

    :cond_b
    new-instance v3, Lyads/t04;

    invoke-direct {v3, v9}, Lyads/t04;-><init>(Lyads/s04;)V

    iput-object v3, v0, Lyads/eq2;->a0:Lyads/t04;

    invoke-virtual {v0}, Lyads/eq2;->c()Lyads/t04;

    move-result-object v7

    :cond_c
    iget-object v3, v0, Lyads/eq2;->I:Lyads/t04;

    invoke-virtual {v7, v3}, Lyads/t04;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-object v7, v0, Lyads/eq2;->I:Lyads/t04;

    iget-boolean v7, v5, Lyads/bw4;->l:Z

    iget-boolean v9, v1, Lyads/bw4;->l:Z

    if-eq v7, v9, :cond_d

    const/4 v7, 0x1

    goto :goto_6

    :cond_d
    move v7, v14

    :goto_6
    iget v9, v5, Lyads/bw4;->e:I

    iget v10, v1, Lyads/bw4;->e:I

    if-eq v9, v10, :cond_e

    const/4 v9, 0x1

    goto :goto_7

    :cond_e
    move v9, v14

    :goto_7
    if-nez v9, :cond_f

    if-eqz v7, :cond_10

    :cond_f
    invoke-virtual {v0}, Lyads/eq2;->p()V

    :cond_10
    iget-boolean v10, v5, Lyads/bw4;->g:Z

    iget-boolean v11, v1, Lyads/bw4;->g:Z

    if-eq v10, v11, :cond_11

    const/4 v10, 0x1

    goto :goto_8

    :cond_11
    move v10, v14

    :goto_8
    iget-object v11, v5, Lyads/bw4;->a:Lyads/kx5;

    iget-object v12, v1, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v11, v12}, Lyads/kx5;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    iget-object v11, v0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v12, Lqu9;

    move/from16 v13, p2

    invoke-direct {v12, v1, v13}, Lqu9;-><init>(Lyads/bw4;I)V

    invoke-virtual {v11, v14, v12}, Lyads/wt3;->a(ILyads/tt3;)V

    :cond_12
    if-eqz p4, :cond_1a

    new-instance v11, Lyads/hx5;

    invoke-direct {v11}, Lyads/hx5;-><init>()V

    iget-object v12, v5, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v12}, Lyads/kx5;->c()Z

    move-result v12

    if-nez v12, :cond_13

    iget-object v12, v5, Lyads/bw4;->b:Lyads/h14;

    iget-object v12, v12, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v13, v5, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v13, v12, v11}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    iget v13, v11, Lyads/hx5;->d:I

    iget-object v15, v5, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v15, v12}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v15

    iget-object v14, v5, Lyads/bw4;->a:Lyads/kx5;

    move/from16 v17, v3

    iget-object v3, v0, Lyads/fs;->a:Lyads/jx5;

    move/from16 v18, v9

    move/from16 v19, v10

    const-wide/16 v9, 0x0

    invoke-virtual {v14, v13, v3, v9, v10}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object v3

    iget-object v3, v3, Lyads/jx5;->b:Ljava/lang/Object;

    iget-object v9, v0, Lyads/fs;->a:Lyads/jx5;

    iget-object v9, v9, Lyads/jx5;->d:Lyads/p04;

    move-object/from16 v21, v3

    move-object/from16 v23, v9

    move-object/from16 v24, v12

    move/from16 v22, v13

    move/from16 v25, v15

    goto :goto_9

    :cond_13
    move/from16 v17, v3

    move/from16 v18, v9

    move/from16 v19, v10

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    :goto_9
    iget-object v3, v5, Lyads/bw4;->b:Lyads/h14;

    if-nez v2, :cond_16

    invoke-virtual {v3}, Lyads/b14;->a()Z

    move-result v3

    iget-object v9, v5, Lyads/bw4;->b:Lyads/h14;

    if-eqz v3, :cond_14

    iget v3, v9, Lyads/b14;->b:I

    iget v9, v9, Lyads/b14;->c:I

    invoke-virtual {v11, v3, v9}, Lyads/hx5;->a(II)J

    move-result-wide v9

    invoke-static {v5}, Lyads/eq2;->b(Lyads/bw4;)J

    move-result-wide v11

    goto :goto_c

    :cond_14
    iget v3, v9, Lyads/b14;->e:I

    const/4 v9, -0x1

    if-eq v3, v9, :cond_15

    iget-object v3, v0, Lyads/eq2;->b0:Lyads/bw4;

    invoke-static {v3}, Lyads/eq2;->b(Lyads/bw4;)J

    move-result-wide v9

    :goto_a
    move-wide v11, v9

    goto :goto_c

    :cond_15
    iget-wide v9, v11, Lyads/hx5;->f:J

    iget-wide v11, v11, Lyads/hx5;->e:J

    :goto_b
    add-long/2addr v9, v11

    goto :goto_a

    :cond_16
    invoke-virtual {v3}, Lyads/b14;->a()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-wide v9, v5, Lyads/bw4;->r:J

    invoke-static {v5}, Lyads/eq2;->b(Lyads/bw4;)J

    move-result-wide v11

    goto :goto_c

    :cond_17
    iget-wide v9, v11, Lyads/hx5;->f:J

    iget-wide v11, v5, Lyads/bw4;->r:J

    goto :goto_b

    :goto_c
    new-instance v20, Lyads/jw4;

    invoke-static {v9, v10}, Lyads/u56;->b(J)J

    move-result-wide v26

    invoke-static {v11, v12}, Lyads/u56;->b(J)J

    move-result-wide v28

    iget-object v3, v5, Lyads/bw4;->b:Lyads/h14;

    iget v9, v3, Lyads/b14;->b:I

    iget v3, v3, Lyads/b14;->c:I

    move/from16 v31, v3

    move/from16 v30, v9

    invoke-direct/range {v20 .. v31}, Lyads/jw4;-><init>(Ljava/lang/Object;ILyads/p04;Ljava/lang/Object;IJJII)V

    move-object/from16 v3, v20

    invoke-virtual {v0}, Lyads/eq2;->g()I

    move-result v9

    iget-object v10, v0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v10, v10, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v10}, Lyads/kx5;->c()Z

    move-result v10

    if-nez v10, :cond_18

    iget-object v10, v0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v11, v10, Lyads/bw4;->b:Lyads/h14;

    iget-object v11, v11, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v10, v10, Lyads/bw4;->a:Lyads/kx5;

    iget-object v12, v0, Lyads/eq2;->m:Lyads/hx5;

    invoke-virtual {v10, v11, v12}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    iget-object v10, v0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v10, v10, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v10, v11}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v10

    iget-object v12, v0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v12, v12, Lyads/bw4;->a:Lyads/kx5;

    iget-object v13, v0, Lyads/fs;->a:Lyads/jx5;

    const-wide/16 v14, 0x0

    invoke-virtual {v12, v9, v13, v14, v15}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object v12

    iget-object v12, v12, Lyads/jx5;->b:Ljava/lang/Object;

    iget-object v13, v0, Lyads/fs;->a:Lyads/jx5;

    iget-object v13, v13, Lyads/jx5;->d:Lyads/p04;

    move/from16 v25, v10

    move-object/from16 v24, v11

    move-object/from16 v21, v12

    move-object/from16 v23, v13

    goto :goto_d

    :cond_18
    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    :goto_d
    invoke-static/range {p6 .. p7}, Lyads/u56;->b(J)J

    move-result-wide v26

    new-instance v20, Lyads/jw4;

    iget-object v10, v0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v10, v10, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v10}, Lyads/b14;->a()Z

    move-result v10

    if-eqz v10, :cond_19

    iget-object v10, v0, Lyads/eq2;->b0:Lyads/bw4;

    invoke-static {v10}, Lyads/eq2;->b(Lyads/bw4;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lyads/u56;->b(J)J

    move-result-wide v10

    move-wide/from16 v28, v10

    goto :goto_e

    :cond_19
    move-wide/from16 v28, v26

    :goto_e
    iget-object v10, v0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v10, v10, Lyads/bw4;->b:Lyads/h14;

    iget v11, v10, Lyads/b14;->b:I

    iget v10, v10, Lyads/b14;->c:I

    move/from16 v22, v9

    move/from16 v31, v10

    move/from16 v30, v11

    invoke-direct/range {v20 .. v31}, Lyads/jw4;-><init>(Ljava/lang/Object;ILyads/p04;Ljava/lang/Object;IJJII)V

    move-object/from16 v9, v20

    iget-object v10, v0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v11, Ltu9;

    invoke-direct {v11, v3, v9, v2}, Ltu9;-><init>(Lyads/jw4;Lyads/jw4;I)V

    const/16 v2, 0xb

    invoke-virtual {v10, v2, v11}, Lyads/wt3;->a(ILyads/tt3;)V

    goto :goto_f

    :cond_1a
    move/from16 v17, v3

    move/from16 v18, v9

    move/from16 v19, v10

    :goto_f
    if-eqz v4, :cond_1b

    iget-object v2, v0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v3, Luu9;

    invoke-direct {v3, v8, v6}, Luu9;-><init>(Lyads/p04;I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lyads/wt3;->a(ILyads/tt3;)V

    :cond_1b
    iget-object v2, v5, Lyads/bw4;->f:Lyads/up2;

    iget-object v3, v1, Lyads/bw4;->f:Lyads/up2;

    const/4 v4, 0x5

    const/4 v6, 0x6

    if-eq v2, v3, :cond_1c

    iget-object v2, v0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v3, Lf90;

    invoke-direct {v3, v1, v6}, Lf90;-><init>(Ljava/lang/Object;I)V

    const/16 v8, 0xa

    invoke-virtual {v2, v8, v3}, Lyads/wt3;->a(ILyads/tt3;)V

    iget-object v2, v1, Lyads/bw4;->f:Lyads/up2;

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v3, La9;

    invoke-direct {v3, v1, v4}, La9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v8, v3}, Lyads/wt3;->a(ILyads/tt3;)V

    :cond_1c
    iget-object v2, v5, Lyads/bw4;->i:Lyads/q06;

    iget-object v3, v1, Lyads/bw4;->i:Lyads/q06;

    if-eq v2, v3, :cond_1d

    iget-object v2, v0, Lyads/eq2;->h:Lyads/p06;

    iget-object v3, v3, Lyads/q06;->e:Lyads/sw3;

    check-cast v2, Lyads/tw3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v3, Lb9;

    const/16 v8, 0x8

    invoke-direct {v3, v1, v8}, Lb9;-><init>(Ljava/lang/Object;I)V

    const/4 v8, 0x2

    invoke-virtual {v2, v8, v3}, Lyads/wt3;->a(ILyads/tt3;)V

    :cond_1d
    if-nez v17, :cond_1e

    iget-object v2, v0, Lyads/eq2;->I:Lyads/t04;

    iget-object v3, v0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v8, Lah1;

    move/from16 v9, v16

    invoke-direct {v8, v2, v9}, Lah1;-><init>(Ljava/lang/Object;I)V

    const/16 v2, 0xe

    invoke-virtual {v3, v2, v8}, Lyads/wt3;->a(ILyads/tt3;)V

    goto :goto_10

    :cond_1e
    move/from16 v9, v16

    :goto_10
    const/4 v2, 0x4

    if-eqz v19, :cond_1f

    iget-object v3, v0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v8, Lbh1;

    invoke-direct {v8, v1, v2}, Lbh1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v9, v8}, Lyads/wt3;->a(ILyads/tt3;)V

    :cond_1f
    if-nez v18, :cond_20

    if-eqz v7, :cond_21

    :cond_20
    iget-object v3, v0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v8, Lch1;

    invoke-direct {v8, v1, v9}, Lch1;-><init>(Ljava/lang/Object;I)V

    const/4 v9, -0x1

    invoke-virtual {v3, v9, v8}, Lyads/wt3;->a(ILyads/tt3;)V

    :cond_21
    if-eqz v18, :cond_22

    iget-object v3, v0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v8, Ldh1;

    invoke-direct {v8, v1, v2}, Ldh1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v2, v8}, Lyads/wt3;->a(ILyads/tt3;)V

    :cond_22
    if-eqz v7, :cond_23

    iget-object v3, v0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v7, Lcg2;

    move/from16 v9, p3

    const/4 v8, 0x1

    invoke-direct {v7, v1, v9, v8}, Lcg2;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v3, v4, v7}, Lyads/wt3;->a(ILyads/tt3;)V

    goto :goto_11

    :cond_23
    const/4 v8, 0x1

    :goto_11
    iget v3, v5, Lyads/bw4;->m:I

    iget v7, v1, Lyads/bw4;->m:I

    if-eq v3, v7, :cond_24

    iget-object v3, v0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v7, Low0;

    invoke-direct {v7, v1, v4}, Low0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v6, v7}, Lyads/wt3;->a(ILyads/tt3;)V

    :cond_24
    iget v3, v5, Lyads/bw4;->e:I

    const/4 v9, 0x3

    if-ne v3, v9, :cond_25

    iget-boolean v3, v5, Lyads/bw4;->l:Z

    if-eqz v3, :cond_25

    iget v3, v5, Lyads/bw4;->m:I

    if-nez v3, :cond_25

    move v4, v8

    goto :goto_12

    :cond_25
    const/4 v4, 0x0

    :goto_12
    iget v3, v1, Lyads/bw4;->e:I

    if-ne v3, v9, :cond_26

    iget-boolean v3, v1, Lyads/bw4;->l:Z

    if-eqz v3, :cond_26

    iget v3, v1, Lyads/bw4;->m:I

    if-nez v3, :cond_26

    move v14, v8

    goto :goto_13

    :cond_26
    const/4 v14, 0x0

    :goto_13
    if-eq v4, v14, :cond_27

    iget-object v3, v0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v4, Lfg2;

    invoke-direct {v4, v1, v6}, Lfg2;-><init>(Ljava/lang/Object;I)V

    const/4 v6, 0x7

    invoke-virtual {v3, v6, v4}, Lyads/wt3;->a(ILyads/tt3;)V

    :cond_27
    iget-object v3, v5, Lyads/bw4;->n:Lyads/dw4;

    iget-object v4, v1, Lyads/bw4;->n:Lyads/dw4;

    invoke-virtual {v3, v4}, Lyads/dw4;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    iget-object v3, v0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v4, Lzi4;

    invoke-direct {v4, v1, v2}, Lzi4;-><init>(Ljava/lang/Object;I)V

    const/16 v2, 0xc

    invoke-virtual {v3, v2, v4}, Lyads/wt3;->a(ILyads/tt3;)V

    :cond_28
    invoke-virtual {v0}, Lyads/eq2;->o()V

    iget-object v2, v0, Lyads/eq2;->k:Lyads/wt3;

    invoke-virtual {v2}, Lyads/wt3;->a()V

    iget-boolean v2, v5, Lyads/bw4;->o:Z

    iget-boolean v1, v1, Lyads/bw4;->o:Z

    if-eq v2, v1, :cond_29

    iget-object v0, v0, Lyads/eq2;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/vp2;

    check-cast v1, Lyads/bq2;

    iget-object v1, v1, Lyads/bq2;->a:Lyads/eq2;

    invoke-virtual {v1}, Lyads/eq2;->p()V

    goto :goto_14

    :cond_29
    return-void
.end method

.method public final a(Lyads/cs;)V
    .locals 11

    .line 970
    invoke-virtual {p0}, Lyads/eq2;->q()V

    .line 971
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 972
    invoke-virtual {p0}, Lyads/eq2;->q()V

    .line 973
    invoke-virtual {p0}, Lyads/eq2;->q()V

    .line 974
    invoke-virtual {p0}, Lyads/eq2;->h()I

    .line 975
    invoke-virtual {p0}, Lyads/eq2;->q()V

    .line 976
    iget-object v2, p0, Lyads/eq2;->b0:Lyads/bw4;

    invoke-virtual {p0, v2}, Lyads/eq2;->a(Lyads/bw4;)J

    sget v2, Lyads/u56;->a:I

    .line 977
    iget v2, p0, Lyads/eq2;->B:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lyads/eq2;->B:I

    .line 978
    iget-object v2, p0, Lyads/eq2;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 979
    iget-object v2, p0, Lyads/eq2;->n:Ljava/util/ArrayList;

    .line 980
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 981
    invoke-virtual {p0, v2}, Lyads/eq2;->b(I)V

    .line 982
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    .line 983
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 984
    new-instance v6, Lyads/p14;

    .line 985
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/cs;

    iget-boolean v8, p0, Lyads/eq2;->o:Z

    invoke-direct {v6, v7, v8}, Lyads/p14;-><init>(Lyads/cs;Z)V

    .line 986
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object v7, p0, Lyads/eq2;->n:Ljava/util/ArrayList;

    new-instance v8, Lyads/dq2;

    iget-object v9, v6, Lyads/p14;->b:Ljava/lang/Object;

    iget-object v6, v6, Lyads/p14;->a:Lyads/hx3;

    .line 988
    iget-object v6, v6, Lyads/hx3;->o:Lyads/fx3;

    .line 989
    invoke-direct {v8, v9, v6}, Lyads/dq2;-><init>(Ljava/lang/Object;Lyads/kx5;)V

    .line 990
    invoke-virtual {v7, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 991
    :cond_1
    iget-object v1, p0, Lyads/eq2;->G:Lyads/ik5;

    .line 992
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 993
    invoke-virtual {v1, v4}, Lyads/ik5;->a(I)Lyads/ik5;

    move-result-object v1

    iput-object v1, p0, Lyads/eq2;->G:Lyads/ik5;

    .line 994
    new-instance v1, Lyads/hx4;

    iget-object v4, p0, Lyads/eq2;->n:Ljava/util/ArrayList;

    iget-object v6, p0, Lyads/eq2;->G:Lyads/ik5;

    invoke-direct {v1, v4, v6}, Lyads/hx4;-><init>(Ljava/util/ArrayList;Lyads/ik5;)V

    .line 995
    invoke-virtual {v1}, Lyads/kx5;->c()Z

    move-result v4

    const/4 v6, -0x1

    if-nez v4, :cond_3

    .line 996
    iget v4, v1, Lyads/hx4;->e:I

    if-ge v6, v4, :cond_2

    goto :goto_1

    .line 997
    :cond_2
    new-instance v0, Lyads/vb3;

    invoke-direct {v0}, Lyads/vb3;-><init>()V

    throw v0

    .line 998
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Lyads/f;->a(Z)I

    move-result v7

    .line 999
    iget-object v4, p0, Lyads/eq2;->b0:Lyads/bw4;

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 1000
    invoke-virtual {p0, v1, v7, v8, v9}, Lyads/eq2;->a(Lyads/hx4;IJ)Landroid/util/Pair;

    move-result-object v10

    .line 1001
    invoke-virtual {p0, v4, v1, v10}, Lyads/eq2;->a(Lyads/bw4;Lyads/hx4;Landroid/util/Pair;)Lyads/bw4;

    move-result-object v4

    .line 1002
    iget v10, v4, Lyads/bw4;->e:I

    if-eq v7, v6, :cond_6

    if-eq v10, v3, :cond_6

    .line 1003
    invoke-virtual {v1}, Lyads/kx5;->c()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1004
    iget v1, v1, Lyads/hx4;->e:I

    if-lt v7, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x2

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v10, 0x4

    .line 1005
    :cond_6
    :goto_3
    invoke-virtual {v4, v10}, Lyads/bw4;->a(I)Lyads/bw4;

    move-result-object v1

    .line 1006
    iget-object v4, p0, Lyads/eq2;->j:Lyads/mq2;

    .line 1007
    invoke-static {v8, v9}, Lyads/u56;->a(J)J

    move-result-wide v8

    iget-object v6, p0, Lyads/eq2;->G:Lyads/ik5;

    .line 1008
    iget-object v10, v4, Lyads/mq2;->i:Lyads/gu5;

    .line 1009
    new-instance v4, Lyads/hq2;

    invoke-direct/range {v4 .. v9}, Lyads/hq2;-><init>(Ljava/util/ArrayList;Lyads/ik5;IJ)V

    const/16 v5, 0x11

    .line 1010
    invoke-virtual {v10, v5, v4}, Lyads/gu5;->a(ILjava/lang/Object;)Lyads/fu5;

    move-result-object v4

    .line 1011
    invoke-virtual {v4}, Lyads/fu5;->b()V

    .line 1012
    iget-object v4, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v4, v4, Lyads/bw4;->b:Lyads/h14;

    iget-object v4, v4, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v5, v1, Lyads/bw4;->b:Lyads/h14;

    iget-object v5, v5, Lyads/b14;->a:Ljava/lang/Object;

    .line 1013
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v4, v4, Lyads/bw4;->a:Lyads/kx5;

    .line 1014
    invoke-virtual {v4}, Lyads/kx5;->c()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v3

    goto :goto_4

    :cond_7
    move v4, v2

    .line 1015
    :goto_4
    invoke-virtual {p0, v1}, Lyads/eq2;->a(Lyads/bw4;)J

    move-result-wide v6

    const/4 v3, 0x1

    const/4 v5, 0x4

    const/4 v2, 0x0

    move-object v0, p0

    .line 1016
    invoke-virtual/range {v0 .. v7}, Lyads/eq2;->a(Lyads/bw4;IIZIJ)V

    return-void
.end method

.method public final a(Lyads/iq2;)V
    .locals 14

    .line 1079
    iget v0, p0, Lyads/eq2;->B:I

    iget v1, p1, Lyads/iq2;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lyads/eq2;->B:I

    .line 1080
    iget-boolean v1, p1, Lyads/iq2;->d:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1081
    iget v1, p1, Lyads/iq2;->e:I

    iput v1, p0, Lyads/eq2;->C:I

    .line 1082
    iput-boolean v2, p0, Lyads/eq2;->D:Z

    .line 1083
    :cond_0
    iget-boolean v1, p1, Lyads/iq2;->f:Z

    if-eqz v1, :cond_1

    .line 1084
    iget v1, p1, Lyads/iq2;->g:I

    iput v1, p0, Lyads/eq2;->E:I

    :cond_1
    if-nez v0, :cond_b

    .line 1085
    iget-object v0, p1, Lyads/iq2;->b:Lyads/bw4;

    iget-object v0, v0, Lyads/bw4;->a:Lyads/kx5;

    .line 1086
    iget-object v1, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v1, v1, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v1}, Lyads/kx5;->c()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lyads/kx5;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    .line 1087
    iput v1, p0, Lyads/eq2;->c0:I

    const-wide/16 v3, 0x0

    .line 1088
    iput-wide v3, p0, Lyads/eq2;->d0:J

    .line 1089
    :cond_2
    invoke-virtual {v0}, Lyads/kx5;->c()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    .line 1090
    move-object v1, v0

    check-cast v1, Lyads/hx4;

    .line 1091
    iget-object v1, v1, Lyads/hx4;->i:[Lyads/kx5;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1092
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lyads/eq2;->n:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_3

    move v4, v3

    .line 1093
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1094
    iget-object v5, p0, Lyads/eq2;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/dq2;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/kx5;

    iput-object v6, v5, Lyads/dq2;->b:Lyads/kx5;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1095
    :cond_3
    invoke-static {}, Lud;->g()V

    return-void

    .line 1096
    :cond_4
    iget-boolean v1, p0, Lyads/eq2;->D:Z

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_a

    .line 1097
    iget-object v1, p1, Lyads/iq2;->b:Lyads/bw4;

    iget-object v1, v1, Lyads/bw4;->b:Lyads/h14;

    iget-object v6, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v6, v6, Lyads/bw4;->b:Lyads/h14;

    .line 1098
    invoke-virtual {v1, v6}, Lyads/b14;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lyads/iq2;->b:Lyads/bw4;

    iget-wide v6, v1, Lyads/bw4;->d:J

    iget-object v1, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-wide v8, v1, Lyads/bw4;->r:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    :cond_6
    :goto_1
    if-eqz v2, :cond_8

    .line 1099
    invoke-virtual {v0}, Lyads/kx5;->c()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p1, Lyads/iq2;->b:Lyads/bw4;

    iget-object v1, v1, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v1}, Lyads/b14;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    .line 1100
    :cond_7
    iget-object v1, p1, Lyads/iq2;->b:Lyads/bw4;

    iget-object v4, v1, Lyads/bw4;->b:Lyads/h14;

    iget-wide v5, v1, Lyads/bw4;->d:J

    .line 1101
    iget-object v1, v4, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v4, p0, Lyads/eq2;->m:Lyads/hx5;

    invoke-virtual {v0, v1, v4}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    .line 1102
    iget-object v0, p0, Lyads/eq2;->m:Lyads/hx5;

    .line 1103
    iget-wide v0, v0, Lyads/hx5;->f:J

    add-long v4, v5, v0

    :cond_8
    :goto_2
    move v10, v2

    :goto_3
    move-wide v12, v4

    goto :goto_5

    .line 1104
    :cond_9
    :goto_4
    iget-object v0, p1, Lyads/iq2;->b:Lyads/bw4;

    iget-wide v4, v0, Lyads/bw4;->d:J

    goto :goto_2

    :cond_a
    move v10, v3

    goto :goto_3

    .line 1105
    :goto_5
    iput-boolean v3, p0, Lyads/eq2;->D:Z

    .line 1106
    iget-object v7, p1, Lyads/iq2;->b:Lyads/bw4;

    iget v9, p0, Lyads/eq2;->E:I

    iget v11, p0, Lyads/eq2;->C:I

    const/4 v8, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v13}, Lyads/eq2;->a(Lyads/bw4;IIZIJ)V

    :cond_b
    return-void
.end method

.method public final synthetic a(Lyads/iw4;Lyads/my2;)V
    .locals 0

    .line 1107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a(Lyads/up2;)V
    .locals 10

    .line 1055
    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v1, v0, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v0, v1}, Lyads/bw4;->a(Lyads/h14;)Lyads/bw4;

    move-result-object v0

    .line 1056
    iget-wide v1, v0, Lyads/bw4;->r:J

    iput-wide v1, v0, Lyads/bw4;->p:J

    const-wide/16 v1, 0x0

    .line 1057
    iput-wide v1, v0, Lyads/bw4;->q:J

    const/4 v1, 0x1

    .line 1058
    invoke-virtual {v0, v1}, Lyads/bw4;->a(I)Lyads/bw4;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1059
    invoke-virtual {v0, p1}, Lyads/bw4;->a(Lyads/up2;)Lyads/bw4;

    move-result-object v0

    :cond_0
    move-object v3, v0

    .line 1060
    iget p1, p0, Lyads/eq2;->B:I

    add-int/2addr p1, v1

    iput p1, p0, Lyads/eq2;->B:I

    .line 1061
    iget-object p1, p0, Lyads/eq2;->j:Lyads/mq2;

    .line 1062
    iget-object p1, p1, Lyads/mq2;->i:Lyads/gu5;

    .line 1063
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1064
    invoke-static {}, Lyads/gu5;->a()Lyads/fu5;

    move-result-object v0

    iget-object p1, p1, Lyads/gu5;->a:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1065
    iput-object p1, v0, Lyads/fu5;->a:Landroid/os/Message;

    .line 1066
    invoke-virtual {v0}, Lyads/fu5;->b()V

    .line 1067
    iget-object p1, v3, Lyads/bw4;->a:Lyads/kx5;

    .line 1068
    invoke-virtual {p1}, Lyads/kx5;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object p1, p1, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {p1}, Lyads/kx5;->c()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    move v6, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1069
    :goto_1
    invoke-virtual {p0, v3}, Lyads/eq2;->a(Lyads/bw4;)J

    move-result-wide v8

    const/4 v5, 0x1

    const/4 v7, 0x4

    const/4 v4, 0x0

    move-object v2, p0

    .line 1070
    invoke-virtual/range {v2 .. v9}, Lyads/eq2;->a(Lyads/bw4;IIZIJ)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 1017
    invoke-virtual {p0}, Lyads/eq2;->q()V

    .line 1018
    iget-object v0, p0, Lyads/eq2;->w:Lyads/jm;

    .line 1019
    invoke-virtual {p0}, Lyads/eq2;->q()V

    .line 1020
    iget-object v1, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget v1, v1, Lyads/bw4;->e:I

    .line 1021
    invoke-virtual {v0, v1, p1}, Lyads/jm;->a(IZ)I

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    .line 1022
    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Lyads/eq2;->a(IIZ)V

    return-void
.end method

.method public final b(I)V
    .locals 6

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lyads/eq2;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyads/eq2;->G:Lyads/ik5;

    iget-object v1, v0, Lyads/ik5;->b:[I

    array-length v1, v1

    sub-int/2addr v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget-object v4, v0, Lyads/ik5;->b:[I

    array-length v5, v4

    if-ge v2, v5, :cond_3

    aget v4, v4, v2

    if-ltz v4, :cond_1

    if-ge v4, p1, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    sub-int v5, v2, v3

    if-ltz v4, :cond_2

    sub-int/2addr v4, p1

    :cond_2
    aput v4, v1, v5

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lyads/ik5;

    new-instance v2, Ljava/util/Random;

    iget-object v0, v0, Lyads/ik5;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v1, v2}, Lyads/ik5;-><init>([ILjava/util/Random;)V

    iput-object p1, p0, Lyads/eq2;->G:Lyads/ik5;

    return-void
.end method

.method public final b(Lyads/iq2;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lyads/eq2;->i:Lyads/gu5;

    new-instance v1, Lzs2;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lzs2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 77
    iget-object p0, v0, Lyads/gu5;->a:Landroid/os/Handler;

    .line 78
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic b(Lyads/iw4;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lyads/eq2;->H:Lyads/hw4;

    invoke-interface {p1, p0}, Lyads/iw4;->a(Lyads/hw4;)V

    return-void
.end method

.method public final c()Lyads/t04;
    .locals 5

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v0, v0, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v0}, Lyads/kx5;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lyads/eq2;->a0:Lyads/t04;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyads/eq2;->g()I

    move-result v1

    iget-object v2, p0, Lyads/fs;->a:Lyads/jx5;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object v0

    iget-object v0, v0, Lyads/jx5;->d:Lyads/p04;

    iget-object p0, p0, Lyads/eq2;->a0:Lyads/t04;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/s04;

    invoke-direct {v1, p0}, Lyads/s04;-><init>(Lyads/t04;)V

    iget-object p0, v0, Lyads/p04;->e:Lyads/t04;

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lyads/t04;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iput-object v0, v1, Lyads/s04;->a:Ljava/lang/CharSequence;

    :cond_2
    iget-object v0, p0, Lyads/t04;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iput-object v0, v1, Lyads/s04;->b:Ljava/lang/CharSequence;

    :cond_3
    iget-object v0, p0, Lyads/t04;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iput-object v0, v1, Lyads/s04;->c:Ljava/lang/CharSequence;

    :cond_4
    iget-object v0, p0, Lyads/t04;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iput-object v0, v1, Lyads/s04;->d:Ljava/lang/CharSequence;

    :cond_5
    iget-object v0, p0, Lyads/t04;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iput-object v0, v1, Lyads/s04;->e:Ljava/lang/CharSequence;

    :cond_6
    iget-object v0, p0, Lyads/t04;->g:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iput-object v0, v1, Lyads/s04;->f:Ljava/lang/CharSequence;

    :cond_7
    iget-object v0, p0, Lyads/t04;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    iput-object v0, v1, Lyads/s04;->g:Ljava/lang/CharSequence;

    :cond_8
    iget-object v0, p0, Lyads/t04;->i:Lyads/z35;

    if-eqz v0, :cond_9

    iput-object v0, v1, Lyads/s04;->h:Lyads/z35;

    :cond_9
    iget-object v0, p0, Lyads/t04;->j:Lyads/z35;

    if-eqz v0, :cond_a

    iput-object v0, v1, Lyads/s04;->i:Lyads/z35;

    :cond_a
    iget-object v0, p0, Lyads/t04;->k:[B

    if-eqz v0, :cond_b

    iget-object v2, p0, Lyads/t04;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v1, Lyads/s04;->j:[B

    iput-object v2, v1, Lyads/s04;->k:Ljava/lang/Integer;

    :cond_b
    iget-object v0, p0, Lyads/t04;->m:Landroid/net/Uri;

    if-eqz v0, :cond_c

    iput-object v0, v1, Lyads/s04;->l:Landroid/net/Uri;

    :cond_c
    iget-object v0, p0, Lyads/t04;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    iput-object v0, v1, Lyads/s04;->m:Ljava/lang/Integer;

    :cond_d
    iget-object v0, p0, Lyads/t04;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    iput-object v0, v1, Lyads/s04;->n:Ljava/lang/Integer;

    :cond_e
    iget-object v0, p0, Lyads/t04;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    iput-object v0, v1, Lyads/s04;->o:Ljava/lang/Integer;

    :cond_f
    iget-object v0, p0, Lyads/t04;->q:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    iput-object v0, v1, Lyads/s04;->p:Ljava/lang/Boolean;

    :cond_10
    iget-object v0, p0, Lyads/t04;->r:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    iput-object v0, v1, Lyads/s04;->q:Ljava/lang/Integer;

    :cond_11
    iget-object v0, p0, Lyads/t04;->s:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    iput-object v0, v1, Lyads/s04;->q:Ljava/lang/Integer;

    :cond_12
    iget-object v0, p0, Lyads/t04;->t:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    iput-object v0, v1, Lyads/s04;->r:Ljava/lang/Integer;

    :cond_13
    iget-object v0, p0, Lyads/t04;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    iput-object v0, v1, Lyads/s04;->s:Ljava/lang/Integer;

    :cond_14
    iget-object v0, p0, Lyads/t04;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    iput-object v0, v1, Lyads/s04;->t:Ljava/lang/Integer;

    :cond_15
    iget-object v0, p0, Lyads/t04;->w:Ljava/lang/Integer;

    if-eqz v0, :cond_16

    iput-object v0, v1, Lyads/s04;->u:Ljava/lang/Integer;

    :cond_16
    iget-object v0, p0, Lyads/t04;->x:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    iput-object v0, v1, Lyads/s04;->v:Ljava/lang/Integer;

    :cond_17
    iget-object v0, p0, Lyads/t04;->y:Ljava/lang/CharSequence;

    if-eqz v0, :cond_18

    iput-object v0, v1, Lyads/s04;->w:Ljava/lang/CharSequence;

    :cond_18
    iget-object v0, p0, Lyads/t04;->z:Ljava/lang/CharSequence;

    if-eqz v0, :cond_19

    iput-object v0, v1, Lyads/s04;->x:Ljava/lang/CharSequence;

    :cond_19
    iget-object v0, p0, Lyads/t04;->A:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1a

    iput-object v0, v1, Lyads/s04;->y:Ljava/lang/CharSequence;

    :cond_1a
    iget-object v0, p0, Lyads/t04;->B:Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    iput-object v0, v1, Lyads/s04;->z:Ljava/lang/Integer;

    :cond_1b
    iget-object v0, p0, Lyads/t04;->C:Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    iput-object v0, v1, Lyads/s04;->A:Ljava/lang/Integer;

    :cond_1c
    iget-object v0, p0, Lyads/t04;->D:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1d

    iput-object v0, v1, Lyads/s04;->B:Ljava/lang/CharSequence;

    :cond_1d
    iget-object v0, p0, Lyads/t04;->E:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1e

    iput-object v0, v1, Lyads/s04;->C:Ljava/lang/CharSequence;

    :cond_1e
    iget-object v0, p0, Lyads/t04;->F:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1f

    iput-object v0, v1, Lyads/s04;->D:Ljava/lang/CharSequence;

    :cond_1f
    iget-object p0, p0, Lyads/t04;->G:Landroid/os/Bundle;

    if-eqz p0, :cond_20

    iput-object p0, v1, Lyads/s04;->E:Landroid/os/Bundle;

    :cond_20
    :goto_0
    new-instance p0, Lyads/t04;

    invoke-direct {p0, v1}, Lyads/t04;-><init>(Lyads/s04;)V

    return-object p0
.end method

.method public final c(Lyads/iw4;)V
    .locals 5

    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    iget-object p0, p0, Lyads/eq2;->k:Lyads/wt3;

    .line 250
    iget-object v0, p0, Lyads/wt3;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 251
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/vt3;

    .line 252
    iget-object v2, v1, Lyads/vt3;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lyads/wt3;->c:Lyads/ut3;

    const/4 v3, 0x1

    .line 254
    iput-boolean v3, v1, Lyads/vt3;->d:Z

    .line 255
    iget-boolean v3, v1, Lyads/vt3;->c:Z

    if-eqz v3, :cond_1

    .line 256
    iget-object v3, v1, Lyads/vt3;->a:Ljava/lang/Object;

    iget-object v4, v1, Lyads/vt3;->b:Lyads/ly2;

    invoke-virtual {v4}, Lyads/ly2;->a()Lyads/my2;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lyads/ut3;->a(Ljava/lang/Object;Lyads/my2;)V

    .line 257
    :cond_1
    iget-object v2, p0, Lyads/wt3;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final d()J
    .locals 5

    invoke-virtual {p0}, Lyads/eq2;->q()V

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v0, v0, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v0}, Lyads/b14;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v1, v0, Lyads/bw4;->a:Lyads/kx5;

    iget-object v0, v0, Lyads/bw4;->b:Lyads/h14;

    iget-object v0, v0, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v2, p0, Lyads/eq2;->m:Lyads/hx5;

    invoke-virtual {v1, v0, v2}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-wide v1, v0, Lyads/bw4;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, v0, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {p0}, Lyads/eq2;->g()I

    move-result v1

    iget-object p0, p0, Lyads/fs;->a:Lyads/jx5;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object p0

    iget-wide v0, p0, Lyads/jx5;->n:J

    invoke-static {v0, v1}, Lyads/u56;->b(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lyads/eq2;->m:Lyads/hx5;

    iget-wide v0, v0, Lyads/hx5;->f:J

    invoke-static {v0, v1}, Lyads/u56;->b(J)J

    move-result-wide v0

    iget-object p0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-wide v2, p0, Lyads/bw4;->c:J

    invoke-static {v2, v3}, Lyads/u56;->b(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    :cond_1
    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    invoke-virtual {p0, v0}, Lyads/eq2;->a(Lyads/bw4;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lyads/u56;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()I
    .locals 1

    invoke-virtual {p0}, Lyads/eq2;->q()V

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v0, v0, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v0}, Lyads/b14;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object p0, p0, Lyads/bw4;->b:Lyads/h14;

    iget p0, p0, Lyads/b14;->b:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final f()I
    .locals 1

    invoke-virtual {p0}, Lyads/eq2;->q()V

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v0, v0, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v0}, Lyads/b14;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object p0, p0, Lyads/bw4;->b:Lyads/h14;

    iget p0, p0, Lyads/b14;->c:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final g()I
    .locals 1

    invoke-virtual {p0}, Lyads/eq2;->q()V

    invoke-virtual {p0}, Lyads/eq2;->h()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public final h()I
    .locals 2

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v0, v0, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v0}, Lyads/kx5;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lyads/eq2;->c0:I

    return p0

    :cond_0
    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v1, v0, Lyads/bw4;->a:Lyads/kx5;

    iget-object v0, v0, Lyads/bw4;->b:Lyads/h14;

    iget-object v0, v0, Lyads/b14;->a:Ljava/lang/Object;

    iget-object p0, p0, Lyads/eq2;->m:Lyads/hx5;

    invoke-virtual {v1, v0, p0}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object p0

    iget p0, p0, Lyads/hx5;->d:I

    return p0
.end method

.method public final i()J
    .locals 4

    invoke-virtual {p0}, Lyads/eq2;->q()V

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v0, v0, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v0}, Lyads/b14;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v1, v0, Lyads/bw4;->b:Lyads/h14;

    iget-object v0, v0, Lyads/bw4;->a:Lyads/kx5;

    iget-object v2, v1, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v3, p0, Lyads/eq2;->m:Lyads/hx5;

    invoke-virtual {v0, v2, v3}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    iget-object p0, p0, Lyads/eq2;->m:Lyads/hx5;

    iget v0, v1, Lyads/b14;->b:I

    iget v1, v1, Lyads/b14;->c:I

    invoke-virtual {p0, v0, v1}, Lyads/hx5;->a(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Lyads/u56;->b(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v0, v0, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v0}, Lyads/kx5;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lyads/eq2;->g()I

    move-result v1

    iget-object p0, p0, Lyads/fs;->a:Lyads/jx5;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object p0

    iget-wide v0, p0, Lyads/jx5;->o:J

    invoke-static {v0, v1}, Lyads/u56;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final j()Z
    .locals 0

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object p0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object p0, p0, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {p0}, Lyads/b14;->a()Z

    move-result p0

    return p0
.end method

.method public final k()V
    .locals 12

    invoke-virtual {p0}, Lyads/eq2;->q()V

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-boolean v0, v0, Lyads/bw4;->l:Z

    iget-object v1, p0, Lyads/eq2;->w:Lyads/jm;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lyads/jm;->a(IZ)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    if-eq v1, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {p0, v1, v4, v0}, Lyads/eq2;->a(IIZ)V

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget v1, v0, Lyads/bw4;->e:I

    if-eq v1, v3, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyads/bw4;->a(Lyads/up2;)Lyads/bw4;

    move-result-object v0

    iget-object v1, v0, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v1}, Lyads/kx5;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    :cond_2
    invoke-virtual {v0, v2}, Lyads/bw4;->a(I)Lyads/bw4;

    move-result-object v5

    iget v0, p0, Lyads/eq2;->B:I

    add-int/2addr v0, v3

    iput v0, p0, Lyads/eq2;->B:I

    iget-object v0, p0, Lyads/eq2;->j:Lyads/mq2;

    iget-object v0, v0, Lyads/mq2;->i:Lyads/gu5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/gu5;->a()Lyads/fu5;

    move-result-object v1

    iget-object v0, v0, Lyads/gu5;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, v1, Lyads/fu5;->a:Landroid/os/Message;

    invoke-virtual {v1}, Lyads/fu5;->b()V

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lyads/eq2;->a(Lyads/bw4;IIZIJ)V

    return-void
.end method

.method public final l()V
    .locals 7

    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Release "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [ExoPlayerLib/2.18.1] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lyads/u56;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lyads/nq2;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lyads/nq2;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyads/sv3;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyads/eq2;->q()V

    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lyads/eq2;->J:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v2, p0, Lyads/eq2;->J:Landroid/media/AudioTrack;

    :cond_0
    iget-object v0, p0, Lyads/eq2;->v:Lyads/dm;

    iget-boolean v1, v0, Lyads/dm;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lyads/dm;->a:Landroid/content/Context;

    iget-object v3, v0, Lyads/dm;->b:Lyads/bm;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lyads/dm;->c:Z

    :cond_1
    iget-object v0, p0, Lyads/eq2;->x:Lyads/is5;

    invoke-virtual {v0}, Lyads/is5;->b()V

    iget-object v0, p0, Lyads/eq2;->y:Lyads/fj6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lyads/eq2;->z:Lyads/wk6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lyads/eq2;->w:Lyads/jm;

    iput-object v2, v0, Lyads/jm;->c:Lyads/im;

    invoke-virtual {v0}, Lyads/jm;->a()V

    iget-object v0, p0, Lyads/eq2;->j:Lyads/mq2;

    invoke-virtual {v0}, Lyads/mq2;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v1, Lg2;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Lg2;-><init>(I)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Lyads/wt3;->a(ILyads/tt3;)V

    invoke-virtual {v0}, Lyads/wt3;->a()V

    :cond_2
    iget-object v0, p0, Lyads/eq2;->k:Lyads/wt3;

    iget-object v1, v0, Lyads/wt3;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/vt3;

    iget-object v5, v0, Lyads/wt3;->c:Lyads/ut3;

    iput-boolean v4, v3, Lyads/vt3;->d:Z

    iget-boolean v4, v3, Lyads/vt3;->c:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lyads/vt3;->a:Ljava/lang/Object;

    iget-object v3, v3, Lyads/vt3;->b:Lyads/ly2;

    invoke-virtual {v3}, Lyads/ly2;->a()Lyads/my2;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Lyads/ut3;->a(Ljava/lang/Object;Lyads/my2;)V

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lyads/wt3;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iput-boolean v4, v0, Lyads/wt3;->g:Z

    iget-object v0, p0, Lyads/eq2;->i:Lyads/gu5;

    iget-object v0, v0, Lyads/gu5;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lyads/eq2;->r:Lyads/vn;

    iget-object v1, p0, Lyads/eq2;->p:Lyads/ge;

    check-cast v0, Lyads/zj0;

    iget-object v0, v0, Lyads/zj0;->b:Lyads/tn;

    iget-object v3, v0, Lyads/tn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/sn;

    iget-object v6, v5, Lyads/sn;->b:Lyads/un;

    if-ne v6, v1, :cond_5

    iput-boolean v4, v5, Lyads/sn;->c:Z

    iget-object v6, v0, Lyads/tn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    invoke-virtual {v0, v4}, Lyads/bw4;->a(I)Lyads/bw4;

    move-result-object v0

    iput-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v1, v0, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v0, v1}, Lyads/bw4;->a(Lyads/h14;)Lyads/bw4;

    move-result-object v0

    iput-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-wide v3, v0, Lyads/bw4;->r:J

    iput-wide v3, v0, Lyads/bw4;->p:J

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lyads/bw4;->q:J

    iget-object v0, p0, Lyads/eq2;->p:Lyads/ge;

    check-cast v0, Lyads/cj0;

    invoke-virtual {v0}, Lyads/cj0;->c()V

    iget-object v0, p0, Lyads/eq2;->h:Lyads/p06;

    invoke-virtual {v0}, Lyads/p06;->a()V

    invoke-virtual {p0}, Lyads/eq2;->m()V

    iget-object v0, p0, Lyads/eq2;->L:Landroid/view/Surface;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Lyads/eq2;->L:Landroid/view/Surface;

    :cond_7
    sget p0, Lyads/ub0;->b:I

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Lyads/eq2;->N:Lyads/bp5;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyads/eq2;->u:Lyads/cq2;

    invoke-virtual {p0, v0}, Lyads/eq2;->a(Lyads/tw4;)Lyads/uw4;

    move-result-object v0

    iget-boolean v2, v0, Lyads/uw4;->g:Z

    if-nez v2, :cond_1

    const/16 v3, 0x2710

    iput v3, v0, Lyads/uw4;->d:I

    if-nez v2, :cond_0

    iput-object v1, v0, Lyads/uw4;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Lyads/uw4;->a()Lyads/uw4;

    iget-object v0, p0, Lyads/eq2;->N:Lyads/bp5;

    iget-object v2, p0, Lyads/eq2;->t:Lyads/bq2;

    iget-object v0, v0, Lyads/bp5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v1, p0, Lyads/eq2;->N:Lyads/bp5;

    goto :goto_0

    :cond_0
    invoke-static {}, Lud;->g()V

    return-void

    :cond_1
    invoke-static {}, Lud;->g()V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lyads/eq2;->P:Landroid/view/TextureView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lyads/eq2;->t:Lyads/bq2;

    if-eq v0, v2, :cond_3

    const-string v0, "ExoPlayerImpl"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lyads/eq2;->P:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_1
    iput-object v1, p0, Lyads/eq2;->P:Landroid/view/TextureView;

    :cond_4
    iget-object v0, p0, Lyads/eq2;->M:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lyads/eq2;->t:Lyads/bq2;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v1, p0, Lyads/eq2;->M:Landroid/view/SurfaceHolder;

    :cond_5
    return-void
.end method

.method public final n()V
    .locals 3

    invoke-virtual {p0}, Lyads/eq2;->q()V

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v0, p0, Lyads/eq2;->w:Lyads/jm;

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v1, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-boolean v1, v1, Lyads/bw4;->l:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lyads/jm;->a(IZ)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyads/eq2;->a(Lyads/up2;)V

    sget p0, Lyads/ub0;->b:I

    return-void
.end method

.method public final o()V
    .locals 15

    iget-object v0, p0, Lyads/eq2;->H:Lyads/hw4;

    iget-object v1, p0, Lyads/eq2;->f:Lyads/eq2;

    iget-object v2, p0, Lyads/eq2;->c:Lyads/hw4;

    sget v3, Lyads/u56;->a:I

    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v3, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v3, v3, Lyads/bw4;->b:Lyads/h14;

    invoke-virtual {v3}, Lyads/b14;->a()Z

    move-result v3

    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v4, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v4, v4, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v4}, Lyads/kx5;->c()Z

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lyads/eq2;->g()I

    move-result v5

    iget-object v10, v1, Lyads/fs;->a:Lyads/jx5;

    invoke-virtual {v4, v5, v10, v6, v7}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object v4

    iget-boolean v4, v4, Lyads/jx5;->i:Z

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v9

    :goto_0
    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v5, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v5, v5, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v5}, Lyads/kx5;->c()Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_1

    move v5, v11

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lyads/eq2;->g()I

    move-result v10

    invoke-virtual {v1}, Lyads/eq2;->q()V

    invoke-virtual {v1}, Lyads/eq2;->q()V

    invoke-virtual {v5, v10, v9}, Lyads/kx5;->a(II)I

    move-result v5

    :goto_1
    if-eq v5, v11, :cond_2

    move v5, v8

    goto :goto_2

    :cond_2
    move v5, v9

    :goto_2
    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v10, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v10, v10, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v10}, Lyads/kx5;->c()Z

    move-result v12

    if-eqz v12, :cond_3

    move v10, v11

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lyads/eq2;->g()I

    move-result v12

    invoke-virtual {v1}, Lyads/eq2;->q()V

    invoke-virtual {v1}, Lyads/eq2;->q()V

    invoke-virtual {v10, v12, v9, v9}, Lyads/kx5;->a(IIZ)I

    move-result v10

    :goto_3
    if-eq v10, v11, :cond_4

    move v10, v8

    goto :goto_4

    :cond_4
    move v10, v9

    :goto_4
    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v11, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v11, v11, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v11}, Lyads/kx5;->c()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v1}, Lyads/eq2;->g()I

    move-result v12

    iget-object v13, v1, Lyads/fs;->a:Lyads/jx5;

    invoke-virtual {v11, v12, v13, v6, v7}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object v11

    invoke-virtual {v11}, Lyads/jx5;->a()Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v8

    goto :goto_5

    :cond_5
    move v11, v9

    :goto_5
    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v12, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v12, v12, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v12}, Lyads/kx5;->c()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v1}, Lyads/eq2;->g()I

    move-result v13

    iget-object v14, v1, Lyads/fs;->a:Lyads/jx5;

    invoke-virtual {v12, v13, v14, v6, v7}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object v6

    iget-boolean v6, v6, Lyads/jx5;->j:Z

    if-eqz v6, :cond_6

    move v6, v8

    goto :goto_6

    :cond_6
    move v6, v9

    :goto_6
    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v1, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v1, v1, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v1}, Lyads/kx5;->c()Z

    move-result v1

    new-instance v7, Lyads/gw4;

    invoke-direct {v7}, Lyads/gw4;-><init>()V

    iget-object v12, v7, Lyads/gw4;->a:Lyads/ly2;

    iget-object v2, v2, Lyads/hw4;->b:Lyads/my2;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v13, v9

    :goto_7
    iget-object v14, v2, Lyads/my2;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_7

    invoke-virtual {v2, v13}, Lyads/my2;->a(I)I

    move-result v14

    invoke-virtual {v12, v14}, Lyads/ly2;->a(I)Lyads/ly2;

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_7
    xor-int/lit8 v2, v3, 0x1

    const/4 v12, 0x4

    invoke-virtual {v7, v12, v2}, Lyads/gw4;->a(IZ)Lyads/gw4;

    move-result-object v7

    if-eqz v4, :cond_8

    if-nez v3, :cond_8

    move v12, v8

    goto :goto_8

    :cond_8
    move v12, v9

    :goto_8
    const/4 v13, 0x5

    invoke-virtual {v7, v13, v12}, Lyads/gw4;->a(IZ)Lyads/gw4;

    move-result-object v7

    if-eqz v5, :cond_9

    if-nez v3, :cond_9

    move v12, v8

    goto :goto_9

    :cond_9
    move v12, v9

    :goto_9
    const/4 v14, 0x6

    invoke-virtual {v7, v14, v12}, Lyads/gw4;->a(IZ)Lyads/gw4;

    move-result-object v7

    if-nez v1, :cond_b

    if-nez v5, :cond_a

    if-eqz v11, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    if-nez v3, :cond_b

    move v5, v8

    goto :goto_a

    :cond_b
    move v5, v9

    :goto_a
    const/4 v12, 0x7

    invoke-virtual {v7, v12, v5}, Lyads/gw4;->a(IZ)Lyads/gw4;

    move-result-object v5

    if-eqz v10, :cond_c

    if-nez v3, :cond_c

    move v7, v8

    goto :goto_b

    :cond_c
    move v7, v9

    :goto_b
    const/16 v12, 0x8

    invoke-virtual {v5, v12, v7}, Lyads/gw4;->a(IZ)Lyads/gw4;

    move-result-object v5

    if-nez v1, :cond_e

    if-nez v10, :cond_d

    if-eqz v11, :cond_e

    if-eqz v6, :cond_e

    :cond_d
    if-nez v3, :cond_e

    move v1, v8

    goto :goto_c

    :cond_e
    move v1, v9

    :goto_c
    const/16 v6, 0x9

    invoke-virtual {v5, v6, v1}, Lyads/gw4;->a(IZ)Lyads/gw4;

    move-result-object v1

    const/16 v5, 0xa

    invoke-virtual {v1, v5, v2}, Lyads/gw4;->a(IZ)Lyads/gw4;

    move-result-object v1

    if-eqz v4, :cond_f

    if-nez v3, :cond_f

    move v2, v8

    goto :goto_d

    :cond_f
    move v2, v9

    :goto_d
    const/16 v5, 0xb

    invoke-virtual {v1, v5, v2}, Lyads/gw4;->a(IZ)Lyads/gw4;

    move-result-object v1

    if-eqz v4, :cond_10

    if-nez v3, :cond_10

    goto :goto_e

    :cond_10
    move v8, v9

    :goto_e
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v8}, Lyads/gw4;->a(IZ)Lyads/gw4;

    move-result-object v1

    new-instance v2, Lyads/hw4;

    iget-object v1, v1, Lyads/gw4;->a:Lyads/ly2;

    invoke-virtual {v1}, Lyads/ly2;->a()Lyads/my2;

    move-result-object v1

    invoke-direct {v2, v1}, Lyads/hw4;-><init>(Lyads/my2;)V

    iput-object v2, p0, Lyads/eq2;->H:Lyads/hw4;

    invoke-virtual {v2, v0}, Lyads/hw4;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v1, Lv52;

    invoke-direct {v1, p0, v13}, Lv52;-><init>(Ljava/lang/Object;I)V

    const/16 p0, 0xd

    invoke-virtual {v0, p0, v1}, Lyads/wt3;->a(ILyads/tt3;)V

    :cond_11
    return-void
.end method

.method public final p()V
    .locals 2

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget v0, v0, Lyads/bw4;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lud;->g()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-boolean v0, v0, Lyads/bw4;->o:Z

    iget-object v0, p0, Lyads/eq2;->y:Lyads/fj6;

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v1, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-boolean v1, v1, Lyads/bw4;->l:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lyads/eq2;->z:Lyads/wk6;

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object p0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-boolean p0, p0, Lyads/bw4;->l:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lyads/eq2;->y:Lyads/fj6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/eq2;->z:Lyads/wk6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final q()V
    .locals 5

    iget-object v0, p0, Lyads/eq2;->d:Lyads/m50;

    invoke-virtual {v0}, Lyads/m50;->b()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lyads/eq2;->q:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lyads/eq2;->q:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lyads/u56;->a:I

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "\'\nExpected thread: \'"

    const-string v3, "\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    const-string v4, "Player is accessed on the wrong thread.\nCurrent thread: \'"

    invoke-static {v4, v0, v2, v1, v3}, Ln2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lyads/eq2;->X:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lyads/eq2;->Y:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    invoke-static {v0, v1}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/eq2;->Y:Z

    return-void

    :cond_1
    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
