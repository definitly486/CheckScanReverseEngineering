.class public final Ltg3$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrh3;
.implements Lbc8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrh3<",
        "TT;>;",
        "Lbc8;"
    }
.end annotation


# static fields
.field public static final s:[Ltg3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ltg3$a<",
            "**>;"
        }
    .end annotation
.end field

.field public static final t:[Ltg3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ltg3$a<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lwb8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb8<",
            "-TU;>;"
        }
    .end annotation
.end field

.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;+",
            "Ldt6<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:I

.field public final f:I

.field public volatile g:Lhz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhz7<",
            "TU;>;"
        }
    .end annotation
.end field

.field public volatile h:Z

.field public final i:Lpt;

.field public volatile j:Z

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Ltg3$a<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/concurrent/atomic/AtomicLong;

.field public m:Lbc8;

.field public n:J

.field public o:J

.field public p:I

.field public q:I

.field public final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ltg3$a;

    sput-object v1, Ltg3$b;->s:[Ltg3$a;

    new-array v0, v0, [Ltg3$a;

    sput-object v0, Ltg3$b;->t:[Ltg3$a;

    return-void
.end method

.method public constructor <init>(Lwb8;Lxl3;ZII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TU;>;",
            "Lxl3<",
            "-TT;+",
            "Ldt6<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Lpt;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Ltg3$b;->i:Lpt;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Ltg3$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Ltg3$b;->l:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Ltg3$b;->b:Lwb8;

    iput-object p2, p0, Ltg3$b;->c:Lxl3;

    iput-boolean p3, p0, Ltg3$b;->d:Z

    iput p4, p0, Ltg3$b;->e:I

    iput p5, p0, Ltg3$b;->f:I

    const/4 p1, 0x1

    shr-int/lit8 p2, p4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ltg3$b;->r:I

    sget-object p0, Ltg3$b;->s:[Ltg3$a;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 2

    iget-object v0, p0, Ltg3$b;->m:Lbc8;

    invoke-static {v0, p1}, Lhc8;->f(Lbc8;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Ltg3$b;->m:Lbc8;

    iget-object v0, p0, Ltg3$b;->b:Lwb8;

    invoke-interface {v0, p0}, Lwb8;->a(Lbc8;)V

    iget-boolean v0, p0, Ltg3$b;->j:Z

    if-nez v0, :cond_1

    iget p0, p0, Ltg3$b;->e:I

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    return-void

    :cond_0
    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 3

    iget-boolean v0, p0, Ltg3$b;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Ltg3$b;->g:Lhz7;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Liz7;->clear()V

    return v1

    :cond_0
    iget-boolean v0, p0, Ltg3$b;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Ltg3$b;->i:Lpt;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltg3$b;->g:Lhz7;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Liz7;->clear()V

    :cond_1
    iget-object v0, p0, Ltg3$b;->i:Lpt;

    invoke-static {v0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    sget-object v2, Lk13;->a:Lk13$a;

    if-eq v0, v2, :cond_2

    iget-object p0, p0, Ltg3$b;->b:Lwb8;

    invoke-interface {p0, v0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final cancel()V
    .locals 4

    iget-boolean v0, p0, Ltg3$b;->j:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltg3$b;->j:Z

    iget-object v0, p0, Ltg3$b;->m:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    iget-object v0, p0, Ltg3$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltg3$a;

    sget-object v2, Ltg3$b;->t:[Ltg3$a;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltg3$a;

    if-eq v0, v2, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lhc8;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltg3$b;->i:Lpt;

    invoke-static {v0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lk13;->a:Lk13$a;

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Ld97;->b(Ljava/lang/Throwable;)V

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Ltg3$b;->g:Lhz7;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Liz7;->clear()V

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ltg3$b;->f()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 25

    move-object/from16 v1, p0

    iget-object v2, v1, Ltg3$b;->b:Lwb8;

    const/4 v4, 0x1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ltg3$b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_16

    :cond_1
    iget-object v0, v1, Ltg3$b;->g:Lhz7;

    iget-object v5, v1, Ltg3$b;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    if-eqz v0, :cond_9

    move-wide/from16 v16, v14

    :goto_2
    move-wide v7, v14

    const/16 v18, 0x0

    :goto_3
    cmp-long v19, v5, v14

    if-eqz v19, :cond_5

    const/16 v19, 0x1

    invoke-interface {v0}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Ltg3$b;->b()Z

    move-result v18

    if-eqz v18, :cond_3

    goto/16 :goto_16

    :cond_3
    if-nez v3, :cond_4

    move-object/from16 v18, v3

    goto :goto_4

    :cond_4
    invoke-interface {v2, v3}, Lwb8;->onNext(Ljava/lang/Object;)V

    add-long v16, v16, v12

    add-long/2addr v7, v12

    sub-long/2addr v5, v12

    move-object/from16 v18, v3

    goto :goto_3

    :cond_5
    const/16 v19, 0x1

    :goto_4
    cmp-long v3, v7, v14

    if-eqz v3, :cond_7

    if-eqz v9, :cond_6

    const-wide v5, 0x7fffffffffffffffL

    goto :goto_5

    :cond_6
    iget-object v3, v1, Ltg3$b;->l:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v5

    :cond_7
    :goto_5
    cmp-long v3, v5, v14

    if-eqz v3, :cond_a

    if-nez v18, :cond_8

    goto :goto_6

    :cond_8
    const-wide v7, 0x7fffffffffffffffL

    goto :goto_2

    :cond_9
    const/16 v19, 0x1

    move-wide/from16 v16, v14

    :cond_a
    :goto_6
    iget-boolean v0, v1, Ltg3$b;->h:Z

    iget-object v3, v1, Ltg3$b;->g:Lhz7;

    iget-object v7, v1, Ltg3$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ltg3$a;

    array-length v8, v7

    if-eqz v0, :cond_d

    if-eqz v3, :cond_b

    invoke-interface {v3}, Liz7;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    if-nez v8, :cond_d

    iget-object v0, v1, Ltg3$b;->i:Lpt;

    invoke-static {v0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    sget-object v1, Lk13;->a:Lk13$a;

    if-eq v0, v1, :cond_29

    if-nez v0, :cond_c

    invoke-interface {v2}, Lwb8;->onComplete()V

    goto/16 :goto_16

    :cond_c
    invoke-interface {v2, v0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_16

    :cond_d
    if-eqz v8, :cond_26

    iget-wide v10, v1, Ltg3$b;->o:J

    iget v0, v1, Ltg3$b;->p:I

    if-le v8, v0, :cond_e

    aget-object v3, v7, v0

    move-wide/from16 v20, v12

    iget-wide v12, v3, Ltg3$a;->b:J

    cmp-long v3, v12, v10

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_e
    move-wide/from16 v20, v12

    :goto_7
    if-gt v8, v0, :cond_f

    const/4 v0, 0x0

    :cond_f
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v8, :cond_12

    aget-object v12, v7, v0

    iget-wide v12, v12, Ltg3$a;->b:J

    cmp-long v12, v12, v10

    if-nez v12, :cond_10

    goto :goto_9

    :cond_10
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v8, :cond_11

    const/4 v0, 0x0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_12
    :goto_9
    iput v0, v1, Ltg3$b;->p:I

    aget-object v3, v7, v0

    iget-wide v10, v3, Ltg3$a;->b:J

    iput-wide v10, v1, Ltg3$b;->o:J

    :cond_13
    move v3, v0

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v8, :cond_25

    invoke-virtual {v1}, Ltg3$b;->b()Z

    move-result v11

    if-eqz v11, :cond_14

    goto/16 :goto_16

    :cond_14
    aget-object v11, v7, v3

    const/4 v12, 0x0

    :goto_b
    invoke-virtual {v1}, Ltg3$b;->b()Z

    move-result v13

    if-eqz v13, :cond_15

    goto/16 :goto_16

    :cond_15
    iget-object v13, v11, Ltg3$a;->g:Liz7;

    if-nez v13, :cond_16

    move-object v13, v7

    move-wide/from16 v22, v14

    goto/16 :goto_10

    :cond_16
    move-wide/from16 v22, v14

    :goto_c
    cmp-long v24, v5, v22

    if-eqz v24, :cond_1b

    :try_start_0
    invoke-interface {v13}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_17

    goto :goto_d

    :cond_17
    invoke-interface {v2, v12}, Lwb8;->onNext(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ltg3$b;->b()Z

    move-result v24

    if-eqz v24, :cond_18

    goto/16 :goto_16

    :cond_18
    sub-long v5, v5, v20

    add-long v14, v14, v20

    goto :goto_c

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-static {v11}, Lhc8;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v12, v1, Ltg3$b;->i:Lpt;

    invoke-static {v12, v0}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-boolean v0, v1, Ltg3$b;->d:Z

    if-nez v0, :cond_19

    iget-object v0, v1, Ltg3$b;->m:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    :cond_19
    invoke-virtual {v1}, Ltg3$b;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_16

    :cond_1a
    invoke-virtual {v1, v11}, Ltg3$b;->i(Ltg3$a;)V

    add-int/lit8 v10, v10, 0x1

    move-object v13, v7

    move/from16 v0, v19

    goto :goto_12

    :cond_1b
    :goto_d
    cmp-long v13, v14, v22

    if-eqz v13, :cond_1d

    if-nez v9, :cond_1c

    iget-object v5, v1, Ltg3$b;->l:Ljava/util/concurrent/atomic/AtomicLong;

    move-object v13, v7

    neg-long v6, v14

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v5

    goto :goto_e

    :cond_1c
    move-object v13, v7

    const-wide v5, 0x7fffffffffffffffL

    :goto_e
    invoke-virtual {v11, v14, v15}, Ltg3$a;->b(J)V

    goto :goto_f

    :cond_1d
    move-object v13, v7

    :goto_f
    cmp-long v7, v5, v22

    if-eqz v7, :cond_1f

    if-nez v12, :cond_1e

    goto :goto_10

    :cond_1e
    move-object v7, v13

    move-wide/from16 v14, v22

    goto :goto_b

    :cond_1f
    :goto_10
    iget-boolean v7, v11, Ltg3$a;->f:Z

    iget-object v12, v11, Ltg3$a;->g:Liz7;

    if-eqz v7, :cond_22

    if-eqz v12, :cond_20

    invoke-interface {v12}, Liz7;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_22

    :cond_20
    invoke-virtual {v1, v11}, Ltg3$b;->i(Ltg3$a;)V

    invoke-virtual {v1}, Ltg3$b;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_16

    :cond_21
    add-long v16, v16, v20

    move/from16 v0, v19

    :cond_22
    cmp-long v7, v5, v22

    if-nez v7, :cond_23

    :goto_11
    move v10, v0

    goto :goto_13

    :cond_23
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v8, :cond_24

    const/4 v3, 0x0

    :cond_24
    :goto_12
    add-int/lit8 v10, v10, 0x1

    move-object v7, v13

    move-wide/from16 v14, v22

    goto/16 :goto_a

    :cond_25
    move-object v13, v7

    move-wide/from16 v22, v14

    goto :goto_11

    :goto_13
    iput v3, v1, Ltg3$b;->p:I

    aget-object v0, v13, v3

    iget-wide v5, v0, Ltg3$a;->b:J

    iput-wide v5, v1, Ltg3$b;->o:J

    :goto_14
    move-wide/from16 v5, v16

    goto :goto_15

    :cond_26
    move-wide/from16 v22, v14

    const/4 v10, 0x0

    goto :goto_14

    :goto_15
    cmp-long v0, v5, v22

    if-eqz v0, :cond_27

    iget-boolean v0, v1, Ltg3$b;->j:Z

    if-nez v0, :cond_27

    iget-object v0, v1, Ltg3$b;->m:Lbc8;

    invoke-interface {v0, v5, v6}, Lbc8;->request(J)V

    :cond_27
    if-eqz v10, :cond_28

    goto/16 :goto_0

    :cond_28
    neg-int v0, v4

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    :cond_29
    :goto_16
    return-void
.end method

.method public final g()Lhz7;
    .locals 2

    iget-object v0, p0, Ltg3$b;->g:Lhz7;

    if-nez v0, :cond_1

    iget v0, p0, Ltg3$b;->e:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    new-instance v0, Ln68;

    iget v1, p0, Ltg3$b;->f:I

    invoke-direct {v0, v1}, Ln68;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lm68;

    iget v1, p0, Ltg3$b;->e:I

    invoke-direct {v0, v1}, Lm68;-><init>(I)V

    :goto_0
    iput-object v0, p0, Ltg3$b;->g:Lhz7;

    :cond_1
    return-object v0
.end method

.method public final i(Ltg3$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltg3$a<",
            "TT;TU;>;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Ltg3$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltg3$a;

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    if-ne v5, p1, :cond_1

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

    sget-object v2, Ltg3$b;->s:[Ltg3$a;

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v2, -0x1

    new-array v6, v6, [Ltg3$a;

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

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Ltg3$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltg3$b;->h:Z

    invoke-virtual {p0}, Ltg3$b;->d()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, Ltg3$b;->h:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Ltg3$b;->i:Lpt;

    invoke-static {v0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltg3$b;->h:Z

    iget-boolean p1, p0, Ltg3$b;->d:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Ltg3$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Ltg3$b;->t:[Ltg3$a;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ltg3$a;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lhc8;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ltg3$b;->d()V

    return-void

    :cond_2
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ltg3$b;->h:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Ltg3$b;->c:Lxl3;

    invoke-interface {v0, p1}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null Publisher"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ldt6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    instance-of v0, p1, Ljava/util/concurrent/Callable;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    :try_start_1
    check-cast p1, Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v0, 0x7fffffff

    const/4 v2, 0x1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const-string v4, "Scalar queue full?!"

    if-nez v3, :cond_6

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Ltg3$b;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iget-object v3, p0, Ltg3$b;->g:Lhz7;

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Liz7;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    iget-object v3, p0, Ltg3$b;->b:Lwb8;

    invoke-interface {v3, p1}, Lwb8;->onNext(Ljava/lang/Object;)V

    const-wide v3, 0x7fffffffffffffffL

    cmp-long p1, v5, v3

    if-eqz p1, :cond_2

    iget-object p1, p0, Ltg3$b;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_2
    iget p1, p0, Ltg3$b;->e:I

    if-eq p1, v0, :cond_5

    iget-boolean p1, p0, Ltg3$b;->j:Z

    if-nez p1, :cond_5

    iget p1, p0, Ltg3$b;->q:I

    add-int/2addr p1, v2

    iput p1, p0, Ltg3$b;->q:I

    iget v0, p0, Ltg3$b;->r:I

    if-ne p1, v0, :cond_5

    iput v1, p0, Ltg3$b;->q:I

    iget-object p1, p0, Ltg3$b;->m:Lbc8;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    invoke-virtual {p0}, Ltg3$b;->g()Lhz7;

    move-result-object v3

    :cond_4
    invoke-interface {v3, p1}, Liz7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ltg3$b;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Ltg3$b;->g()Lhz7;

    move-result-object v0

    invoke-interface {v0, p1}, Liz7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ltg3$b;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Ltg3$b;->f()V

    return-void

    :cond_9
    iget p1, p0, Ltg3$b;->e:I

    if-eq p1, v0, :cond_a

    iget-boolean p1, p0, Ltg3$b;->j:Z

    if-nez p1, :cond_a

    iget p1, p0, Ltg3$b;->q:I

    add-int/2addr p1, v2

    iput p1, p0, Ltg3$b;->q:I

    iget v0, p0, Ltg3$b;->r:I

    if-ne p1, v0, :cond_a

    iput v1, p0, Ltg3$b;->q:I

    iget-object p0, p0, Ltg3$b;->m:Lbc8;

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lbc8;->request(J)V

    :cond_a
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v0, p0, Ltg3$b;->i:Lpt;

    invoke-static {v0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Ltg3$b;->d()V

    return-void

    :cond_b
    new-instance v0, Ltg3$a;

    iget-wide v2, p0, Ltg3$b;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Ltg3$b;->n:J

    invoke-direct {v0, p0, v2, v3}, Ltg3$a;-><init>(Ltg3$b;J)V

    iget-object v2, p0, Ltg3$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, [Ltg3$a;

    sget-object p0, Ltg3$b;->t:[Ltg3$a;

    if-ne v3, p0, :cond_c

    invoke-static {v0}, Lhc8;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    :cond_c
    array-length p0, v3

    add-int/lit8 v4, p0, 0x1

    new-array v4, v4, [Ltg3$a;

    invoke-static {v3, v1, v4, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v4, p0

    :cond_d
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-interface {p1, v0}, Ldt6;->a(Lwb8;)V

    return-void

    :cond_e
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v3, :cond_d

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v0, p0, Ltg3$b;->m:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    invoke-virtual {p0, p1}, Ltg3$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final request(J)V
    .locals 1

    invoke-static {p1, p2}, Lhc8;->e(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltg3$b;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lm00;->c(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Ltg3$b;->d()V

    :cond_0
    return-void
.end method
