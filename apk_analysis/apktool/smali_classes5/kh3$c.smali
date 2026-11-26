.class public final Lkh3$c;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrh3;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrh3<",
        "TT;>;",
        "Lcp2;"
    }
.end annotation


# static fields
.field public static final j:[Lkh3$b;

.field public static final k:[Lkh3$b;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lkh3$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lkh3$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lbc8;",
            ">;"
        }
    .end annotation
.end field

.field public volatile g:Ljava/io/Serializable;

.field public h:I

.field public volatile i:Liz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liz7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lkh3$b;

    sput-object v1, Lkh3$c;->j:[Lkh3$b;

    new-array v0, v0, [Lkh3$b;

    sput-object v0, Lkh3$c;->k:[Lkh3$b;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lkh3$c<",
            "TT;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lkh3$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lkh3$c;->j:[Lkh3$b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lkh3$c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lkh3$c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lkh3$c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p2, p0, Lkh3$c;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 3

    iget-object v0, p0, Lkh3$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lhc8;->d(Ljava/util/concurrent/atomic/AtomicReference;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lmw6;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lmw6;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ldw6;->d(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, Lkh3$c;->h:I

    iput-object v0, p0, Lkh3$c;->i:Liz7;

    sget-object p1, Lxo5;->COMPLETE:Lxo5;

    iput-object p1, p0, Lkh3$c;->g:Ljava/io/Serializable;

    invoke-virtual {p0}, Lkh3$c;->d()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, Lkh3$c;->h:I

    iput-object v0, p0, Lkh3$c;->i:Liz7;

    iget p0, p0, Lkh3$c;->c:I

    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    return-void

    :cond_1
    new-instance v0, Lm68;

    iget v1, p0, Lkh3$c;->c:I

    invoke-direct {v0, v1}, Lm68;-><init>(I)V

    iput-object v0, p0, Lkh3$c;->i:Liz7;

    iget p0, p0, Lkh3$c;->c:I

    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/Object;Z)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    sget-object v1, Lxo5;->COMPLETE:Lxo5;

    sget-object v2, Lkh3$c;->k:[Lkh3$b;

    iget-object v3, p0, Lkh3$c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    iget-object v5, p0, Lkh3$c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x1

    if-ne p1, v1, :cond_2

    if-eqz p2, :cond_7

    :cond_0
    invoke-virtual {v5, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p0, :cond_0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkh3$b;

    array-length p1, p0

    :goto_1
    if-ge v0, p1, :cond_5

    aget-object p2, p0, v0

    iget-object p2, p2, Lkh3$b;->b:Lwb8;

    invoke-interface {p2}, Lwb8;->onComplete()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    check-cast p1, Lxo5$b;

    iget-object p1, p1, Lxo5$b;->b:Ljava/lang/Throwable;

    :cond_3
    invoke-virtual {v5, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p0, :cond_3

    :goto_2
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkh3$b;

    array-length p2, p0

    if-eqz p2, :cond_6

    array-length p2, p0

    :goto_3
    if-ge v0, p2, :cond_5

    aget-object v1, p0, v0

    iget-object v1, v1, Lkh3$b;->b:Lwb8;

    invoke-interface {v1, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return v6

    :cond_6
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return v6

    :cond_7
    return v0
.end method

.method public final d()V
    .locals 26

    move-object/from16 v1, p0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_11

    :cond_0
    iget-object v2, v1, Lkh3$c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkh3$b;

    const/4 v3, 0x1

    move-object v4, v0

    move v5, v3

    :goto_0
    iget-object v0, v1, Lkh3$c;->g:Ljava/io/Serializable;

    iget-object v6, v1, Lkh3$c;->i:Liz7;

    if-eqz v6, :cond_2

    invoke-interface {v6}, Liz7;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v8, v3

    :goto_2
    invoke-virtual {v1, v0, v8}, Lkh3$c;->b(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_11

    :cond_3
    if-nez v8, :cond_16

    array-length v0, v4

    array-length v9, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    :goto_3
    const-wide/high16 v16, -0x8000000000000000L

    if-ge v12, v9, :cond_5

    aget-object v7, v4, v12

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    cmp-long v16, v18, v16

    if-eqz v16, :cond_4

    const-wide v20, 0x7fffffffffffffffL

    iget-wide v10, v7, Lkh3$b;->d:J

    sub-long v10, v18, v10

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    goto :goto_4

    :cond_4
    const-wide v20, 0x7fffffffffffffffL

    add-int/lit8 v13, v13, 0x1

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    const-wide v20, 0x7fffffffffffffffL

    const-wide/16 v9, 0x1

    if-ne v0, v13, :cond_9

    iget-object v0, v1, Lkh3$c;->g:Ljava/io/Serializable;

    :try_start_0
    invoke-interface {v6}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v6, v1, Lkh3$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbc8;

    invoke-interface {v6}, Lbc8;->cancel()V

    new-instance v6, Lxo5$b;

    invoke-direct {v6, v0}, Lxo5$b;-><init>(Ljava/lang/Throwable;)V

    iput-object v6, v1, Lkh3$c;->g:Ljava/io/Serializable;

    move-object v0, v6

    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_6

    move v7, v3

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v1, v0, v7}, Lkh3$c;->b(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_11

    :cond_7
    iget v0, v1, Lkh3$c;->h:I

    if-eq v0, v3, :cond_8

    iget-object v0, v1, Lkh3$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc8;

    invoke-interface {v0, v9, v10}, Lbc8;->request(J)V

    :cond_8
    move v10, v3

    move-object v3, v4

    goto/16 :goto_f

    :cond_9
    const/4 v11, 0x0

    :goto_7
    int-to-long v12, v11

    cmp-long v0, v12, v14

    if-gez v0, :cond_c

    iget-object v0, v1, Lkh3$c;->g:Ljava/io/Serializable;

    :try_start_1
    invoke-interface {v6}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v8, v1, Lkh3$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbc8;

    invoke-interface {v8}, Lbc8;->cancel()V

    new-instance v8, Lxo5$b;

    invoke-direct {v8, v0}, Lxo5$b;-><init>(Ljava/lang/Throwable;)V

    iput-object v8, v1, Lkh3$c;->g:Ljava/io/Serializable;

    move-object v0, v8

    const/4 v8, 0x0

    :goto_8
    if-nez v8, :cond_a

    move v7, v3

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    invoke-virtual {v1, v0, v7}, Lkh3$c;->b(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_11

    :cond_b
    if-eqz v7, :cond_d

    move v8, v7

    :cond_c
    move-object v3, v4

    goto/16 :goto_d

    :cond_d
    array-length v0, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_a
    if-ge v12, v0, :cond_10

    move-wide/from16 v22, v9

    aget-object v9, v4, v12

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v24

    cmp-long v10, v24, v16

    if-eqz v10, :cond_f

    cmp-long v10, v24, v20

    move-object/from16 v19, v4

    if-eqz v10, :cond_e

    iget-wide v3, v9, Lkh3$b;->d:J

    add-long v3, v3, v22

    iput-wide v3, v9, Lkh3$b;->d:J

    :cond_e
    iget-object v3, v9, Lkh3$b;->b:Lwb8;

    invoke-interface {v3, v8}, Lwb8;->onNext(Ljava/lang/Object;)V

    goto :goto_b

    :cond_f
    move-object/from16 v19, v4

    const/4 v13, 0x1

    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v19

    move-wide/from16 v9, v22

    const/4 v3, 0x1

    goto :goto_a

    :cond_10
    move-object/from16 v19, v4

    move-wide/from16 v22, v9

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkh3$b;

    if-nez v13, :cond_12

    move-object/from16 v3, v19

    if-eq v0, v3, :cond_11

    goto :goto_c

    :cond_11
    move-object v4, v3

    move v8, v7

    move-wide/from16 v9, v22

    const/4 v3, 0x1

    goto :goto_7

    :cond_12
    :goto_c
    if-eqz v11, :cond_13

    iget v3, v1, Lkh3$c;->h:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_13

    iget-object v3, v1, Lkh3$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbc8;

    int-to-long v6, v11

    invoke-interface {v3, v6, v7}, Lbc8;->request(J)V

    :cond_13
    move-object v4, v0

    const/4 v3, 0x1

    goto/16 :goto_0

    :goto_d
    if-eqz v11, :cond_14

    iget v0, v1, Lkh3$c;->h:I

    const/4 v10, 0x1

    if-eq v0, v10, :cond_15

    iget-object v0, v1, Lkh3$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc8;

    invoke-interface {v0, v12, v13}, Lbc8;->request(J)V

    goto :goto_e

    :cond_14
    const/4 v10, 0x1

    :cond_15
    :goto_e
    const-wide/16 v6, 0x0

    cmp-long v0, v14, v6

    if-eqz v0, :cond_17

    if-nez v8, :cond_17

    :goto_f
    move-object v4, v3

    :goto_10
    move v3, v10

    goto/16 :goto_0

    :cond_16
    move v10, v3

    :cond_17
    neg-int v0, v5

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_18

    :goto_11
    return-void

    :cond_18
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lkh3$b;

    goto :goto_10
.end method

.method public final dispose()V
    .locals 3

    iget-object v0, p0, Lkh3$c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkh3$c;->k:[Lkh3$b;

    if-eq v1, v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkh3$b;

    if-eq v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lkh3$c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :goto_0
    iget-object p0, p0, Lkh3$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0}, Lhc8;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_2
    return-void
.end method

.method public final f(Lkh3$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkh3$b<",
            "TT;>;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lkh3$c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lkh3$b;

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    :goto_2
    if-gez v4, :cond_3

    goto :goto_4

    :cond_3
    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    sget-object v2, Lkh3$c;->j:[Lkh3$b;

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v2, -0x1

    new-array v6, v6, [Lkh3$b;

    invoke-static {v1, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v4, 0x1

    sub-int/2addr v2, v4

    sub-int/2addr v2, v5

    invoke-static {v1, v3, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v6

    :cond_5
    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_5

    goto :goto_0
.end method

.method public final isDisposed()Z
    .locals 1

    iget-object p0, p0, Lkh3$c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lkh3$c;->k:[Lkh3$b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onComplete()V
    .locals 1

    iget-object v0, p0, Lkh3$c;->g:Ljava/io/Serializable;

    if-nez v0, :cond_0

    sget-object v0, Lxo5;->COMPLETE:Lxo5;

    iput-object v0, p0, Lkh3$c;->g:Ljava/io/Serializable;

    invoke-virtual {p0}, Lkh3$c;->d()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lkh3$c;->g:Ljava/io/Serializable;

    if-nez v0, :cond_0

    new-instance v0, Lxo5$b;

    invoke-direct {v0, p1}, Lxo5$b;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lkh3$c;->g:Ljava/io/Serializable;

    invoke-virtual {p0}, Lkh3$c;->d()V

    return-void

    :cond_0
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lkh3$c;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lkh3$c;->i:Liz7;

    invoke-interface {v0, p1}, Liz7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Prefetch queue is full?!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkh3$c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lkh3$c;->d()V

    return-void
.end method
