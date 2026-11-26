.class public abstract Lzfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzws;


# instance fields
.field public final b:Lzfc;

.field public final c:Ljava/util/UUID;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzwq;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzfc;->e:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lzfc;->b:Lzfc;

    iput-object p2, p0, Lzfc;->c:Ljava/util/UUID;

    iput-object p3, p0, Lzfc;->d:Ljava/lang/String;

    .line 29
    iget-object p1, p4, Lcom/google/android/gms/internal/measurement/zzwq;->zzc:Lcom/google/android/gms/internal/measurement/zzxb;

    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lzfc;->f:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lzfc;Lcom/google/android/gms/internal/measurement/zzwq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzfc;->e:Ljava/lang/String;

    iput-object p2, p0, Lzfc;->b:Lzfc;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzws;->zzc()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lzfc;->c:Ljava/util/UUID;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzws;->zzd()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzfc;->d:Ljava/lang/String;

    iget-object p1, p3, Lcom/google/android/gms/internal/measurement/zzwq;->zzc:Lcom/google/android/gms/internal/measurement/zzxb;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lzfc;->f:Ljava/lang/Thread;

    return-void
.end method

.method public static zzcL(Ljava/util/UUID;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    const/4 p0, 0x1

    ushr-long/2addr v0, p0

    const/16 p0, 0x24

    invoke-static {v0, v1, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "tk-trace-id: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvy;->zzd()Lcom/google/android/gms/internal/measurement/zzwq;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzwq;->b:Lcom/google/android/gms/internal/measurement/zzws;

    if-eqz v1, :cond_1

    if-ne p0, v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzc(Lcom/google/android/gms/internal/measurement/zzwq;Lcom/google/android/gms/internal/measurement/zzws;)Lcom/google/android/gms/internal/measurement/zzws;

    const/4 v0, 0x0

    iput-object v0, p0, Lzfc;->f:Ljava/lang/Thread;

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zze()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzws;->zze()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfgc;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v2, 0x4f

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Tried to end span "

    const-string v4, ", but that span is not the current span. The current span is "

    invoke-static {v3, v2, p0, v4, v0}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zze()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Legc;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x65

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Tried to end ["

    const-string v3, "], but no trace was active. This is caused by mismatched or missing calls to beginSpan."

    invoke-static {v2, v1, p0, v3}, Lkh;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 20

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvy;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzws;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_1
    const/16 v1, 0xfa

    const-string v4, " -> "

    if-le v2, v1, :cond_1d

    add-int/lit8 v1, v2, -0x1

    new-array v5, v2, [Ljava/lang/String;

    move-object/from16 v6, p0

    :goto_1
    if-ltz v1, :cond_2

    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/zzws;->zze()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/common/collect/l;->a()Lcom/google/common/collect/l$a;

    move-result-object v1

    invoke-static {v5}, Lcom/google/common/collect/n;->o([Ljava/lang/Object;)Lcom/google/common/collect/n;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/collect/i;->j()Ly69;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v8, v7}, Lcom/google/common/collect/l$a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    move v7, v9

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/google/common/collect/l$a;->a(Z)Lcom/google/common/collect/x;

    move-result-object v1

    iget v7, v1, Lcom/google/common/collect/x;->g:I

    shr-int/lit8 v8, v2, 0x2

    if-le v7, v8, :cond_4

    :goto_3
    const/4 v9, 0x0

    goto/16 :goto_10

    :cond_4
    add-int/lit8 v7, v2, 0x1

    new-array v10, v7, [I

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v2, :cond_5

    aget-object v12, v5, v11

    invoke-virtual {v1, v12}, Lcom/google/common/collect/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    iget v1, v1, Lcom/google/common/collect/x;->g:I

    aput v1, v10, v2

    new-instance v1, Lxgc;

    invoke-direct {v1, v10}, Lxgc;-><init>([I)V

    const/4 v11, 0x0

    :goto_5
    const/4 v12, -0x1

    if-ge v11, v7, :cond_e

    iget v13, v1, Lxgc;->f:I

    add-int/2addr v13, v6

    iput v13, v1, Lxgc;->f:I

    aget v13, v10, v11

    :goto_6
    const/4 v14, 0x0

    :goto_7
    iget v15, v1, Lxgc;->f:I

    if-lez v15, :cond_d

    iget v15, v1, Lxgc;->e:I

    iget-object v9, v1, Lxgc;->c:Lwgc;

    move/from16 v16, v6

    const/high16 v6, 0x40000000    # 2.0f

    if-nez v15, :cond_9

    iget-object v9, v9, Lwgc;->d:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    new-instance v9, Lwgc;

    invoke-direct {v9, v11, v6}, Lwgc;-><init>(II)V

    iget-object v6, v1, Lxgc;->c:Lwgc;

    iget-object v6, v6, Lwgc;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v14, :cond_6

    iget-object v6, v1, Lxgc;->c:Lwgc;

    iput-object v6, v14, Lwgc;->c:Lwgc;

    :cond_6
    iget v6, v1, Lxgc;->f:I

    add-int/2addr v6, v12

    iput v6, v1, Lxgc;->f:I

    invoke-virtual {v1}, Lxgc;->b()V

    move/from16 v6, v16

    goto :goto_6

    :cond_7
    if-eqz v14, :cond_8

    iget-object v6, v1, Lxgc;->c:Lwgc;

    iput-object v6, v14, Lwgc;->c:Lwgc;

    :cond_8
    iput v11, v1, Lxgc;->d:I

    iget v6, v1, Lxgc;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lxgc;->e:I

    invoke-virtual {v1}, Lxgc;->a()V

    goto/16 :goto_8

    :cond_9
    iget-object v9, v9, Lwgc;->d:Ljava/util/HashMap;

    iget v15, v1, Lxgc;->d:I

    aget v15, v10, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lwgc;

    iget v9, v9, Lwgc;->a:I

    iget v15, v1, Lxgc;->e:I

    add-int/2addr v9, v15

    aget v9, v10, v9

    if-ne v9, v13, :cond_b

    if-eqz v14, :cond_a

    iget-object v6, v1, Lxgc;->c:Lwgc;

    iput-object v6, v14, Lwgc;->c:Lwgc;

    :cond_a
    add-int/lit8 v15, v15, 0x1

    iput v15, v1, Lxgc;->e:I

    invoke-virtual {v1}, Lxgc;->a()V

    goto :goto_8

    :cond_b
    iget-object v9, v1, Lxgc;->c:Lwgc;

    iget-object v9, v9, Lwgc;->d:Ljava/util/HashMap;

    iget v15, v1, Lxgc;->d:I

    aget v15, v10, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lwgc;

    new-instance v15, Lwgc;

    iget v0, v9, Lwgc;->a:I

    move/from16 v17, v12

    iget v12, v1, Lxgc;->e:I

    add-int/2addr v12, v0

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v15, v0, v12}, Lwgc;-><init>(II)V

    iget-object v0, v1, Lxgc;->c:Lwgc;

    iget-object v0, v0, Lwgc;->d:Ljava/util/HashMap;

    iget v12, v1, Lxgc;->d:I

    aget v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v15, Lwgc;->b:I

    add-int/lit8 v0, v0, 0x1

    aget v12, v10, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v6, v15, Lwgc;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v0, v9, Lwgc;->a:I

    if-eqz v14, :cond_c

    iput-object v15, v14, Lwgc;->c:Lwgc;

    :cond_c
    new-instance v0, Lwgc;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v0, v11, v9}, Lwgc;-><init>(II)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v1, Lxgc;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lxgc;->f:I

    invoke-virtual {v1}, Lxgc;->b()V

    move-object v14, v15

    move/from16 v6, v16

    move/from16 v12, v17

    goto/16 :goto_7

    :cond_d
    move/from16 v16, v6

    :goto_8
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v16

    goto/16 :goto_5

    :cond_e
    move/from16 v16, v6

    move/from16 v17, v12

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v6, Lvgc;

    iget-object v7, v1, Lxgc;->b:Lwgc;

    move/from16 v9, v17

    const/4 v11, 0x0

    invoke-direct {v6, v7, v11, v9, v9}, Lvgc;-><init>(Lwgc;III)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_14

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvgc;

    iget-object v11, v9, Lvgc;->d:Lwgc;

    iget-object v11, v11, Lwgc;->d:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lwgc;

    iget v13, v9, Lvgc;->b:I

    iget v14, v9, Lvgc;->c:I

    iget v15, v12, Lwgc;->a:I

    move-object/from16 v17, v7

    iget v7, v12, Lwgc;->b:I

    invoke-virtual {v1, v13, v14, v15, v7}, Lxgc;->d(IIII)Z

    move-result v15

    if-nez v15, :cond_11

    iget-object v15, v12, Lwgc;->d:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_f

    iget v15, v12, Lwgc;->a:I

    add-int v18, v15, v14

    move-object/from16 v19, v11

    sub-int v11, v18, v13

    invoke-virtual {v1, v13, v14, v15, v11}, Lxgc;->d(IIII)Z

    move-result v11

    if-eqz v11, :cond_10

    :goto_b
    move/from16 v15, v16

    goto :goto_c

    :cond_f
    move-object/from16 v19, v11

    :cond_10
    new-instance v11, Lvgc;

    iget v13, v12, Lwgc;->a:I

    move/from16 v15, v16

    invoke-direct {v11, v12, v15, v13, v7}, Lvgc;-><init>(Lwgc;III)V

    goto :goto_d

    :cond_11
    move-object/from16 v19, v11

    goto :goto_b

    :goto_c
    new-instance v11, Lvgc;

    iget v7, v9, Lvgc;->a:I

    add-int/2addr v7, v15

    invoke-direct {v11, v12, v7, v13, v14}, Lvgc;-><init>(Lwgc;III)V

    :goto_d
    iget v7, v6, Lvgc;->a:I

    iget v12, v11, Lvgc;->a:I

    if-ge v7, v12, :cond_12

    move-object v6, v11

    :cond_12
    invoke-virtual {v0, v11}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    move-object/from16 v7, v17

    move-object/from16 v11, v19

    const/16 v16, 0x1

    goto :goto_a

    :cond_13
    const/16 v16, 0x1

    goto :goto_9

    :cond_14
    move-object/from16 v17, v7

    iget v0, v6, Lvgc;->c:I

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    array-length v1, v10

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v11, 0x0

    :cond_15
    iget v1, v6, Lvgc;->b:I

    sub-int v9, v0, v1

    rem-int v12, v11, v9

    add-int/2addr v12, v1

    aget v12, v10, v12

    iget-object v7, v7, Lwgc;->d:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lwgc;

    if-nez v7, :cond_16

    goto :goto_f

    :cond_16
    iget v12, v7, Lwgc;->a:I

    :goto_e
    iget v13, v7, Lwgc;->b:I

    const/16 v16, 0x1

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_15

    array-length v13, v10

    if-ge v12, v13, :cond_15

    rem-int v13, v11, v9

    add-int/2addr v13, v1

    aget v13, v10, v13

    aget v14, v10, v12

    if-ne v13, v14, :cond_17

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_17
    :goto_f
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzwo;

    div-int/2addr v11, v9

    invoke-direct {v6, v1, v0, v11}, Lcom/google/android/gms/internal/measurement/zzwo;-><init>(III)V

    iget v0, v6, Lcom/google/android/gms/internal/measurement/zzwo;->b:I

    iget v1, v6, Lcom/google/android/gms/internal/measurement/zzwo;->a:I

    sub-int/2addr v0, v1

    iget v1, v6, Lcom/google/android/gms/internal/measurement/zzwo;->c:I

    mul-int/2addr v0, v1

    if-ge v0, v8, :cond_18

    goto/16 :goto_3

    :cond_18
    move-object v9, v6

    :goto_10
    const-string v0, ""

    if-nez v9, :cond_19

    goto :goto_12

    :cond_19
    iget v1, v9, Lcom/google/android/gms/internal/measurement/zzwo;->a:I

    if-lez v1, :cond_1a

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_11

    :cond_1a
    move-object v6, v0

    :goto_11
    iget v7, v9, Lcom/google/android/gms/internal/measurement/zzwo;->b:I

    iget v8, v9, Lcom/google/android/gms/internal/measurement/zzwo;->c:I

    sub-int v9, v7, v1

    mul-int/2addr v9, v8

    add-int/2addr v9, v1

    if-ge v9, v2, :cond_1b

    invoke-static {v5, v9, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    invoke-static {v5, v1, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_13

    :cond_1c
    return-object v0

    :cond_1d
    :goto_13
    new-array v0, v3, [C

    move-object/from16 v1, p0

    :cond_1e
    :goto_14
    if-eqz v1, :cond_1f

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzws;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v5, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v1

    if-eqz v1, :cond_1e

    add-int/lit8 v3, v3, -0x4

    const/4 v2, 0x4

    invoke-virtual {v4, v11, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_14

    :cond_1f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public final zza()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lzfc;->f:Ljava/lang/Thread;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzws;
    .locals 0

    iget-object p0, p0, Lzfc;->b:Lzfc;

    return-object p0
.end method

.method public final zzc()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lzfc;->c:Ljava/util/UUID;

    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lzfc;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lzfc;->e:Ljava/lang/String;

    return-object p0
.end method
