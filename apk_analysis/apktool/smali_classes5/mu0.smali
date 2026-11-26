.class public Lmu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx81;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmu0$a;,
        Lmu0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx81<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic k:J

.field public static final synthetic l:J

.field public static final synthetic m:J

.field public static final synthetic n:J

.field public static final synthetic o:J

.field public static final synthetic p:J

.field public static final synthetic q:J

.field public static final synthetic r:J

.field public static final synthetic s:J


# instance fields
.field private volatile synthetic _closeCause$volatile:Ljava/lang/Object;

.field public final b:I

.field private volatile synthetic bufferEnd$volatile:J

.field private volatile synthetic bufferEndSegment$volatile:Ljava/lang/Object;

.field public final c:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "TE;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private volatile synthetic closeHandler$volatile:Ljava/lang/Object;

.field private volatile synthetic completedExpandBuffersAndPauseFlag$volatile:J

.field public final d:Lju0;

.field private volatile synthetic receiveSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic receivers$volatile:J

.field private volatile synthetic sendSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic sendersAndCloseStatus$volatile:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lmu0;

    const-string v1, "sendersAndCloseStatus$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    sput-object v2, Lmu0;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v2, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lmu0;->s:J

    const-string v1, "receivers$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    sput-object v3, Lmu0;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lmu0;->q:J

    const-string v1, "bufferEnd$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    sput-object v3, Lmu0;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lmu0;->l:J

    const-string v1, "completedExpandBuffersAndPauseFlag$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    sput-object v3, Lmu0;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lmu0;->o:J

    const-class v1, Ljava/lang/Object;

    const-string v3, "sendSegment$volatile"

    invoke-static {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    sput-object v4, Lmu0;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lmu0;->r:J

    const-string v3, "receiveSegment$volatile"

    invoke-static {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lmu0;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lmu0;->p:J

    const-string v1, "bufferEndSegment$volatile"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lmu0;->m:J

    const-string v1, "_closeCause$volatile"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lmu0;->k:J

    const-string v1, "closeHandler$volatile"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lmu0;->n:J

    return-void
.end method

.method public constructor <init>(ILnl3;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-TE;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmu0;->b:I

    iput-object p2, p0, Lmu0;->c:Lnl3;

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    sget-object v1, Lsu0;->a:Lq91;

    if-eqz p1, :cond_1

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_0

    int-to-long v1, p1

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, p0, Lmu0;->bufferEnd$volatile:J

    invoke-virtual {p0}, Lmu0;->m()J

    move-result-wide v1

    iput-wide v1, p0, Lmu0;->completedExpandBuffersAndPauseFlag$volatile:J

    new-instance v3, Lq91;

    const/4 v6, 0x0

    const/4 v8, 0x3

    const-wide/16 v4, 0x0

    move-object v7, p0

    invoke-direct/range {v3 .. v8}, Lq91;-><init>(JLq91;Lmu0;I)V

    iput-object v3, v7, Lmu0;->sendSegment$volatile:Ljava/lang/Object;

    iput-object v3, v7, Lmu0;->receiveSegment$volatile:Ljava/lang/Object;

    invoke-virtual {v7}, Lmu0;->y()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object v3, Lsu0;->a:Lq91;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    iput-object v3, v7, Lmu0;->bufferEndSegment$volatile:Ljava/lang/Object;

    if-eqz p2, :cond_3

    new-instance v0, Lju0;

    invoke-direct {v0, v7}, Lju0;-><init>(Lmu0;)V

    :cond_3
    iput-object v0, v7, Lmu0;->d:Lju0;

    sget-object p0, Lsu0;->s:Lbh8;

    iput-object p0, v7, Lmu0;->_closeCause$volatile:Ljava/lang/Object;

    return-void

    :cond_4
    const-string p0, "Invalid channel capacity: "

    const-string p2, ", should be >=0"

    invoke-static {p1, p0, p2}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    throw v0
.end method

.method public static C(Lmu0;Lf02;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Lpu0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lpu0;

    iget v1, v0, Lpu0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lpu0;->n:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lpu0;

    invoke-direct {v0, p0, p1}, Lpu0;-><init>(Lmu0;Lf02;)V

    goto :goto_0

    :goto_1
    iget-object p1, v6, Lpu0;->l:Ljava/lang/Object;

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, v6, Lpu0;->n:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    check-cast p1, Lp91;

    iget-object p0, p1, Lp91;->a:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v4, Lmu0;->p:J

    invoke-virtual {p1, p0, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq91;

    :goto_2
    invoke-virtual {p0}, Lmu0;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lmu0;->n()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Lp91$a;

    invoke-direct {p1, p0}, Lp91$a;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_3
    sget-object v1, Lmu0;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v4

    sget v1, Lsu0;->b:I

    int-to-long v7, v1

    div-long v9, v4, v7

    rem-long v7, v4, v7

    long-to-int v1, v7

    iget-wide v7, p1, Lhl7;->e:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5

    invoke-virtual {p0, v9, v10, p1}, Lmu0;->j(JLq91;)Lq91;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    move-object v8, v7

    goto :goto_3

    :cond_5
    move-object v8, p1

    :goto_3
    const/4 v12, 0x0

    move-object v7, p0

    move v9, v1

    move-wide v10, v4

    invoke-virtual/range {v7 .. v12}, Lmu0;->J(Lq91;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, v7

    sget-object p1, Lsu0;->m:Lbh8;

    if-eq p0, p1, :cond_a

    sget-object p1, Lsu0;->o:Lbh8;

    if-ne p0, p1, :cond_7

    invoke-virtual {v1}, Lmu0;->s()J

    move-result-wide p0

    cmp-long p0, v4, p0

    if-gez p0, :cond_6

    invoke-virtual {v8}, Ldv1;->a()V

    :cond_6
    move-object p0, v1

    move-object p1, v8

    goto :goto_2

    :cond_7
    sget-object p1, Lsu0;->n:Lbh8;

    if-ne p0, p1, :cond_9

    iput v3, v6, Lpu0;->n:I

    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v1 .. v6}, Lmu0;->D(Lq91;IJLf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    return-object v0

    :cond_8
    return-object p0

    :cond_9
    invoke-virtual {v8}, Ldv1;->a()V

    return-object p0

    :cond_a
    const-string p0, "unexpected"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2
.end method

.method public static synthetic u(Lmu0;)V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lmu0;->t(J)V

    return-void
.end method


# virtual methods
.method public final A(Le02;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lc31;

    invoke-static {p1}, Lzya;->b(Le02;)Le02;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v0}, Lc31;->u()V

    iget-object p1, p0, Lmu0;->c:Lnl3;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lrq3;->b(Lnl3;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmu0;->q()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    new-instance p0, Lk57$a;

    invoke-direct {p0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmu0;->q()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final B(Ljava/lang/Object;Lc31;)V
    .locals 2

    iget-object v0, p0, Lmu0;->c:Lnl3;

    if-eqz v0, :cond_0

    iget-object v1, p2, Lc31;->f:Lo22;

    invoke-static {v0, p1, v1}, Lrq3;->a(Lnl3;Ljava/lang/Object;Lo22;)V

    :cond_0
    invoke-virtual {p0}, Lmu0;->q()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final D(Lq91;IJLf02;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p5, Lqu0;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lqu0;

    iget v1, v0, Lqu0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lqu0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lqu0;

    invoke-direct {v0, p0, p5}, Lqu0;-><init>(Lmu0;Lf02;)V

    :goto_0
    iget-object p5, v0, Lqu0;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lqu0;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Lqu0;->n:I

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object p5

    invoke-static {p5}, Le31;->c(Le02;)Lc31;

    move-result-object p5

    :try_start_0
    new-instance v9, Lpz6;

    invoke-direct {v9, p5}, Lpz6;-><init>(Lc31;)V

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-virtual/range {v4 .. v9}, Lmu0;->J(Lq91;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lsu0;->m:Lbh8;

    if-ne p0, p1, :cond_3

    invoke-virtual {v9, v5, v6}, Lpz6;->a(Lhl7;I)V

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_7

    :cond_3
    sget-object p1, Lsu0;->o:Lbh8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, v4, Lmu0;->c:Lnl3;

    if-ne p0, p1, :cond_c

    :try_start_1
    invoke-virtual {v4}, Lmu0;->s()J

    move-result-wide p0

    cmp-long p0, v7, p0

    if-gez p0, :cond_4

    invoke-virtual {v5}, Ldv1;->a()V

    :cond_4
    sget-object p0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide p3, Lmu0;->p:J

    invoke-virtual {p0, v4, p3, p4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq91;

    :goto_1
    invoke-virtual {v4}, Lmu0;->w()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v4}, Lmu0;->n()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Lp91$a;

    invoke-direct {p1, p0}, Lp91$a;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lp91;

    invoke-direct {p0, p1}, Lp91;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, p0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_5
    sget-object p1, Lmu0;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v7

    sget p1, Lsu0;->b:I

    int-to-long p3, p1

    div-long v5, v7, p3

    rem-long p3, v7, p3

    long-to-int p1, p3

    iget-wide p3, p0, Lhl7;->e:J

    cmp-long p3, p3, v5

    if-eqz p3, :cond_7

    invoke-virtual {v4, v5, v6, p0}, Lmu0;->j(JLq91;)Lq91;

    move-result-object p3

    if-nez p3, :cond_6

    goto :goto_1

    :cond_6
    move-object v5, p3

    :goto_2
    move v6, p1

    goto :goto_3

    :cond_7
    move-object v5, p0

    goto :goto_2

    :goto_3
    invoke-virtual/range {v4 .. v9}, Lmu0;->J(Lq91;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, v5

    sget-object p1, Lsu0;->m:Lbh8;

    if-ne p0, p1, :cond_8

    invoke-virtual {v9, p3, v6}, Lpz6;->a(Lhl7;I)V

    goto :goto_5

    :cond_8
    sget-object p1, Lsu0;->o:Lbh8;

    if-ne p0, p1, :cond_a

    invoke-virtual {v4}, Lmu0;->s()J

    move-result-wide p0

    cmp-long p0, v7, p0

    if-gez p0, :cond_9

    invoke-virtual {p3}, Ldv1;->a()V

    :cond_9
    move-object p0, p3

    goto :goto_1

    :cond_a
    sget-object p1, Lsu0;->n:Lbh8;

    if-eq p0, p1, :cond_b

    invoke-virtual {p3}, Ldv1;->a()V

    new-instance p1, Lp91;

    invoke-direct {p1, p0}, Lp91;-><init>(Ljava/lang/Object;)V

    if-eqz p2, :cond_d

    new-instance v3, Lou0;

    invoke-direct {v3, v4}, Lou0;-><init>(Lmu0;)V

    goto :goto_4

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-virtual {v5}, Ldv1;->a()V

    new-instance p1, Lp91;

    invoke-direct {p1, p0}, Lp91;-><init>(Ljava/lang/Object;)V

    if-eqz p2, :cond_d

    new-instance v3, Lou0;

    invoke-direct {v3, v4}, Lou0;-><init>(Lmu0;)V

    :cond_d
    :goto_4
    invoke-virtual {p5, p1, v3}, Lc31;->q(Ljava/lang/Object;Ldm3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-virtual {p5}, Lc31;->s()Ljava/lang/Object;

    move-result-object p5

    sget-object p0, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p5, v1, :cond_e

    return-object v1

    :cond_e
    :goto_6
    check-cast p5, Lp91;

    iget-object p0, p5, Lp91;->a:Ljava/lang/Object;

    return-object p0

    :goto_7
    invoke-virtual {p5}, Lc31;->A()V

    throw p0
.end method

.method public final E(Lbm7;)V
    .locals 9

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lmu0;->p:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq91;

    :goto_0
    invoke-virtual {p0}, Lmu0;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lsu0;->l:Lbh8;

    invoke-interface {p1, p0}, Lbm7;->d(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v1, Lmu0;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v5

    sget v1, Lsu0;->b:I

    int-to-long v1, v1

    div-long v3, v5, v1

    rem-long v1, v5, v1

    long-to-int v1, v1

    iget-wide v7, v0, Lhl7;->e:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3, v4, v0}, Lmu0;->j(JLq91;)Lq91;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    move-object v7, p1

    move v4, v1

    move-object v2, p0

    goto :goto_1

    :cond_2
    move-object v3, v0

    move-object v2, p0

    move-object v7, p1

    move v4, v1

    :goto_1
    invoke-virtual/range {v2 .. v7}, Lmu0;->J(Lq91;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, v3

    sget-object p1, Lsu0;->m:Lbh8;

    if-ne p0, p1, :cond_5

    instance-of p0, v7, Llf9;

    if-eqz p0, :cond_3

    move-object p1, v7

    check-cast p1, Llf9;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    invoke-interface {p1, v0, v4}, Llf9;->a(Lhl7;I)V

    :cond_4
    return-void

    :cond_5
    sget-object p1, Lsu0;->o:Lbh8;

    if-ne p0, p1, :cond_7

    invoke-virtual {v2}, Lmu0;->s()J

    move-result-wide p0

    cmp-long p0, v5, p0

    if-gez p0, :cond_6

    invoke-virtual {v0}, Ldv1;->a()V

    :cond_6
    move-object p0, v2

    move-object p1, v7

    goto :goto_0

    :cond_7
    sget-object p1, Lsu0;->n:Lbh8;

    if-eq p0, p1, :cond_8

    invoke-virtual {v0}, Ldv1;->a()V

    invoke-interface {v7, p0}, Lbm7;->d(Ljava/lang/Object;)V

    return-void

    :cond_8
    const-string p0, "unexpected"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public F(Lbm7;Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm7<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lmu0;->r:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq91;

    :cond_0
    :goto_0
    sget-object v1, Lmu0;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long v9, v1, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lmu0;->v(JZ)Z

    move-result v12

    sget v1, Lsu0;->b:I

    int-to-long v2, v1

    div-long v4, v9, v2

    rem-long v2, v9, v2

    long-to-int v7, v2

    iget-wide v2, v0, Lhl7;->e:J

    cmp-long v2, v2, v4

    iget-object v3, p0, Lmu0;->c:Lnl3;

    if-eqz v2, :cond_3

    invoke-virtual {p0, v4, v5, v0}, Lmu0;->k(JLq91;)Lq91;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v12, :cond_0

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lbm7;->getContext()Lo22;

    move-result-object p0

    invoke-static {v3, p2, p0}, Lrq3;->a(Lnl3;Ljava/lang/Object;Lo22;)V

    :cond_1
    sget-object p0, Lsu0;->l:Lbh8;

    invoke-interface {p1, p0}, Lbm7;->d(Ljava/lang/Object;)V

    return-void

    :cond_2
    move-object v6, v2

    :goto_1
    move-object v5, p0

    move-object v11, p1

    move-object v8, p2

    goto :goto_2

    :cond_3
    move-object v6, v0

    goto :goto_1

    :goto_2
    invoke-virtual/range {v5 .. v12}, Lmu0;->K(Lq91;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p0

    move-object v0, v6

    if-eqz p0, :cond_f

    const/4 p1, 0x1

    if-eq p0, p1, :cond_e

    const/4 p1, 0x2

    if-eq p0, p1, :cond_9

    const/4 p1, 0x3

    if-eq p0, p1, :cond_8

    const/4 p1, 0x4

    if-eq p0, p1, :cond_5

    const/4 p1, 0x5

    if-eq p0, p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ldv1;->a()V

    :goto_3
    move-object p0, v5

    move-object p2, v8

    move-object p1, v11

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Lmu0;->p()J

    move-result-wide p0

    cmp-long p0, v9, p0

    if-gez p0, :cond_6

    invoke-virtual {v0}, Ldv1;->a()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-interface {v11}, Lbm7;->getContext()Lo22;

    move-result-object p0

    invoke-static {v3, v8, p0}, Lrq3;->a(Lnl3;Ljava/lang/Object;Lo22;)V

    :cond_7
    sget-object p0, Lsu0;->l:Lbh8;

    invoke-interface {v11, p0}, Lbm7;->d(Ljava/lang/Object;)V

    return-void

    :cond_8
    const-string p0, "unexpected"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_9
    if-eqz v12, :cond_b

    invoke-virtual {v0}, Lhl7;->i()V

    if-eqz v3, :cond_a

    invoke-interface {v11}, Lbm7;->getContext()Lo22;

    move-result-object p0

    invoke-static {v3, v8, p0}, Lrq3;->a(Lnl3;Ljava/lang/Object;Lo22;)V

    :cond_a
    sget-object p0, Lsu0;->l:Lbh8;

    invoke-interface {v11, p0}, Lbm7;->d(Ljava/lang/Object;)V

    return-void

    :cond_b
    instance-of p0, v11, Llf9;

    if-eqz p0, :cond_c

    move-object p1, v11

    check-cast p1, Llf9;

    goto :goto_4

    :cond_c
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_d

    add-int/2addr v7, v1

    invoke-interface {p1, v0, v7}, Llf9;->a(Lhl7;I)V

    :cond_d
    return-void

    :cond_e
    sget-object p0, Lj59;->a:Lj59;

    invoke-interface {v11, p0}, Lbm7;->d(Ljava/lang/Object;)V

    return-void

    :cond_f
    invoke-virtual {v0}, Ldv1;->a()V

    sget-object p0, Lj59;->a:Lj59;

    invoke-interface {v11, p0}, Lbm7;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final G(Llf9;Z)V
    .locals 2

    instance-of v0, p1, Lmu0$b;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    instance-of v0, p1, La31;

    if-eqz v0, :cond_1

    check-cast p1, Le02;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lmu0;->o()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmu0;->q()Ljava/lang/Throwable;

    move-result-object p0

    :goto_0
    new-instance p2, Lk57$a;

    invoke-direct {p2, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, p2}, Le02;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_1
    instance-of p2, p1, Lpz6;

    if-eqz p2, :cond_2

    check-cast p1, Lpz6;

    iget-object p1, p1, Lpz6;->b:Lc31;

    invoke-virtual {p0}, Lmu0;->n()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p2, Lp91$a;

    invoke-direct {p2, p0}, Lp91$a;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lp91;

    invoke-direct {p0, p2}, Lp91;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_2
    instance-of p2, p1, Lmu0$a;

    if-eqz p2, :cond_4

    check-cast p1, Lmu0$a;

    iget-object p0, p1, Lmu0$a;->c:Lc31;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lmu0$a;->c:Lc31;

    sget-object p2, Lsu0;->l:Lbh8;

    iput-object p2, p1, Lmu0$a;->b:Ljava/lang/Object;

    iget-object p1, p1, Lmu0$a;->d:Lmu0;

    invoke-virtual {p1}, Lmu0;->n()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_4
    instance-of p2, p1, Lbm7;

    if-eqz p2, :cond_5

    check-cast p1, Lbm7;

    sget-object p2, Lsu0;->l:Lbh8;

    invoke-interface {p1, p0, p2}, Lbm7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_5
    const-string p0, "Unexpected waiter: "

    invoke-static {p1, p0}, Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_6
    throw v1
.end method

.method public final H(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TE;)Z"
        }
    .end annotation

    instance-of v0, p1, Lbm7;

    if-eqz v0, :cond_0

    check-cast p1, Lbm7;

    invoke-interface {p1, p0, p2}, Lbm7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Lpz6;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lmu0;->c:Lnl3;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lpz6;

    iget-object p1, p1, Lpz6;->b:Lc31;

    new-instance v0, Lp91;

    invoke-direct {v0, p2}, Lp91;-><init>(Ljava/lang/Object;)V

    if-eqz v3, :cond_1

    new-instance v4, Lou0;

    invoke-direct {v4, p0}, Lou0;-><init>(Lmu0;)V

    :cond_1
    sget-object p0, Lsu0;->a:Lq91;

    invoke-virtual {p1, v0, v4}, Lc31;->k(Ljava/lang/Object;Ldm3;)Lbh8;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Lc31;->j(Ljava/lang/Object;)V

    return v2

    :cond_2
    return v1

    :cond_3
    instance-of v0, p1, Lmu0$a;

    if-eqz v0, :cond_6

    check-cast p1, Lmu0$a;

    iget-object p0, p1, Lmu0$a;->c:Lc31;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, p1, Lmu0$a;->c:Lc31;

    iput-object p2, p1, Lmu0$a;->b:Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, p1, Lmu0$a;->d:Lmu0;

    iget-object p1, p1, Lmu0;->c:Lnl3;

    if-eqz p1, :cond_4

    new-instance v4, Lku0;

    invoke-direct {v4, p1, p2}, Lku0;-><init>(Lnl3;Ljava/lang/Object;)V

    :cond_4
    sget-object p1, Lsu0;->a:Lq91;

    invoke-virtual {p0, v0, v4}, Lc31;->k(Ljava/lang/Object;Ldm3;)Lbh8;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lc31;->j(Ljava/lang/Object;)V

    return v2

    :cond_5
    return v1

    :cond_6
    instance-of v0, p1, La31;

    if-eqz v0, :cond_9

    check-cast p1, La31;

    if-eqz v3, :cond_7

    new-instance v4, Lnu0;

    invoke-direct {v4, p0}, Lnu0;-><init>(Lmu0;)V

    :cond_7
    sget-object p0, Lsu0;->a:Lq91;

    invoke-interface {p1, p2, v4}, La31;->k(Ljava/lang/Object;Ldm3;)Lbh8;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-interface {p1, p0}, La31;->j(Ljava/lang/Object;)V

    return v2

    :cond_8
    return v1

    :cond_9
    const-string p0, "Unexpected receiver type: "

    invoke-static {p1, p0}, Lad2;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v1
.end method

.method public final I(Ljava/lang/Object;Lq91;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq91<",
            "TE;>;I)Z"
        }
    .end annotation

    instance-of v0, p1, La31;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    check-cast p1, La31;

    sget-object p0, Lj59;->a:Lj59;

    sget-object p2, Lsu0;->a:Lq91;

    invoke-interface {p1, p0, v3}, La31;->k(Ljava/lang/Object;Ldm3;)Lbh8;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, La31;->j(Ljava/lang/Object;)V

    return v2

    :cond_0
    return v1

    :cond_1
    instance-of v0, p1, Lbm7;

    if-eqz v0, :cond_8

    check-cast p1, Lzl7;

    sget-object v0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0, v0}, Lzl7;->m(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    if-eq p0, v2, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-ne p0, p1, :cond_2

    sget-object p0, Lp39;->ALREADY_SELECTED:Lp39;

    goto :goto_0

    :cond_2
    const-string p1, "Unexpected internal result: "

    invoke-static {p0, p1}, Lud;->e(ILjava/lang/String;)V

    return v1

    :cond_3
    sget-object p0, Lp39;->CANCELLED:Lp39;

    goto :goto_0

    :cond_4
    sget-object p0, Lp39;->REREGISTER:Lp39;

    goto :goto_0

    :cond_5
    sget-object p0, Lp39;->SUCCESSFUL:Lp39;

    :goto_0
    sget-object p1, Lp39;->REREGISTER:Lp39;

    if-ne p0, p1, :cond_6

    invoke-virtual {p2, p3, v3}, Lq91;->n(ILjava/lang/Object;)V

    :cond_6
    sget-object p1, Lp39;->SUCCESSFUL:Lp39;

    if-ne p0, p1, :cond_7

    return v2

    :cond_7
    return v1

    :cond_8
    instance-of p0, p1, Lmu0$b;

    if-nez p0, :cond_9

    const-string p0, "Unexpected waiter: "

    invoke-static {p1, p0}, Lad2;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v1

    :cond_9
    sget-object p0, Lsu0;->a:Lq91;

    throw v3
.end method

.method public final J(Lq91;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq91<",
            "TE;>;IJ",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lq91;->l(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lq91;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    const-wide v3, 0xfffffffffffffffL

    sget-wide v5, Lmu0;->s:J

    if-nez v0, :cond_1

    sget-object v7, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v7, p0, v5, v6}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v7

    and-long/2addr v7, v3

    cmp-long v7, p3, v7

    if-ltz v7, :cond_2

    if-nez p5, :cond_0

    sget-object p0, Lsu0;->n:Lbh8;

    return-object p0

    :cond_0
    invoke-virtual {p1, p2, v0, p5}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmu0;->g()V

    sget-object p0, Lsu0;->m:Lbh8;

    return-object p0

    :cond_1
    sget-object v7, Lsu0;->d:Lbh8;

    if-ne v0, v7, :cond_2

    sget-object v7, Lsu0;->i:Lbh8;

    invoke-virtual {p1, p2, v0, v7}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmu0;->g()V

    mul-int/lit8 p0, p2, 0x2

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, v2}, Lq91;->n(ILjava/lang/Object;)V

    return-object p0

    :cond_2
    invoke-virtual {p1, p2}, Lq91;->l(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v7, Lsu0;->e:Lbh8;

    if-ne v0, v7, :cond_3

    goto :goto_0

    :cond_3
    sget-object v7, Lsu0;->d:Lbh8;

    if-ne v0, v7, :cond_4

    sget-object v7, Lsu0;->i:Lbh8;

    invoke-virtual {p1, p2, v0, v7}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmu0;->g()V

    mul-int/lit8 p0, p2, 0x2

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, v2}, Lq91;->n(ILjava/lang/Object;)V

    return-object p0

    :cond_4
    sget-object v7, Lsu0;->j:Lbh8;

    if-ne v0, v7, :cond_5

    sget-object p0, Lsu0;->o:Lbh8;

    return-object p0

    :cond_5
    sget-object v8, Lsu0;->h:Lbh8;

    if-ne v0, v8, :cond_6

    sget-object p0, Lsu0;->o:Lbh8;

    return-object p0

    :cond_6
    sget-object v8, Lsu0;->l:Lbh8;

    if-ne v0, v8, :cond_7

    invoke-virtual {p0}, Lmu0;->g()V

    sget-object p0, Lsu0;->o:Lbh8;

    return-object p0

    :cond_7
    sget-object v8, Lsu0;->g:Lbh8;

    if-eq v0, v8, :cond_2

    sget-object v8, Lsu0;->f:Lbh8;

    invoke-virtual {p1, p2, v0, v8}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    instance-of p3, v0, Lmf9;

    if-eqz p3, :cond_8

    check-cast v0, Lmf9;

    iget-object v0, v0, Lmf9;->a:Llf9;

    :cond_8
    invoke-virtual {p0, v0, p1, p2}, Lmu0;->I(Ljava/lang/Object;Lq91;I)Z

    move-result p4

    if-eqz p4, :cond_9

    sget-object p3, Lsu0;->i:Lbh8;

    invoke-virtual {p1, p2, p3}, Lq91;->o(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lmu0;->g()V

    mul-int/lit8 p0, p2, 0x2

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, v2}, Lq91;->n(ILjava/lang/Object;)V

    return-object p0

    :cond_9
    invoke-virtual {p1, p2, v7}, Lq91;->o(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lhl7;->i()V

    if-eqz p3, :cond_a

    invoke-virtual {p0}, Lmu0;->g()V

    :cond_a
    sget-object p0, Lsu0;->o:Lbh8;

    return-object p0

    :cond_b
    :goto_0
    sget-object v7, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v7, p0, v5, v6}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v7

    and-long/2addr v7, v3

    cmp-long v7, p3, v7

    if-gez v7, :cond_c

    sget-object v7, Lsu0;->h:Lbh8;

    invoke-virtual {p1, p2, v0, v7}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmu0;->g()V

    sget-object p0, Lsu0;->o:Lbh8;

    return-object p0

    :cond_c
    if-nez p5, :cond_d

    sget-object p0, Lsu0;->n:Lbh8;

    return-object p0

    :cond_d
    invoke-virtual {p1, p2, v0, p5}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmu0;->g()V

    sget-object p0, Lsu0;->m:Lbh8;

    return-object p0
.end method

.method public final K(Lq91;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq91<",
            "TE;>;ITE;J",
            "Ljava/lang/Object;",
            "Z)I"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Lq91;->n(ILjava/lang/Object;)V

    if-eqz p7, :cond_0

    invoke-virtual/range {p0 .. p7}, Lmu0;->L(Lq91;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1, p2}, Lq91;->l(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0, p4, p5}, Lmu0;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsu0;->d:Lbh8;

    invoke-virtual {p1, p2, v2, v0}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_1
    if-nez p6, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    invoke-virtual {p1, p2, v2, p6}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_3
    instance-of v3, v0, Llf9;

    if-eqz v3, :cond_6

    invoke-virtual {p1, p2, v2}, Lq91;->n(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, p3}, Lmu0;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lsu0;->i:Lbh8;

    invoke-virtual {p1, p2, p0}, Lq91;->o(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_4
    sget-object p0, Lsu0;->k:Lbh8;

    iget-object p3, p1, Lq91;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p4, p2, 0x2

    add-int/2addr p4, v1

    invoke-virtual {p3, p4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, p0, :cond_5

    invoke-virtual {p1, p2, v1}, Lq91;->m(IZ)V

    :cond_5
    const/4 p0, 0x5

    return p0

    :cond_6
    invoke-virtual/range {p0 .. p7}, Lmu0;->L(Lq91;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p0

    return p0
.end method

.method public final L(Lq91;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq91<",
            "TE;>;ITE;J",
            "Ljava/lang/Object;",
            "Z)I"
        }
    .end annotation

    :cond_0
    invoke-virtual {p1, p2}, Lq91;->l(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0, p4, p5}, Lmu0;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p7, :cond_1

    sget-object v0, Lsu0;->d:Lbh8;

    invoke-virtual {p1, p2, v3, v0}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    if-eqz p7, :cond_2

    sget-object v0, Lsu0;->j:Lbh8;

    invoke-virtual {p1, p2, v3, v0}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lhl7;->i()V

    return v1

    :cond_2
    if-nez p6, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    invoke-virtual {p1, p2, v3, p6}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_4
    sget-object v4, Lsu0;->e:Lbh8;

    if-ne v0, v4, :cond_5

    sget-object v1, Lsu0;->d:Lbh8;

    invoke-virtual {p1, p2, v0, v1}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_5
    sget-object p4, Lsu0;->k:Lbh8;

    const/4 p5, 0x5

    if-ne v0, p4, :cond_6

    invoke-virtual {p1, p2, v3}, Lq91;->n(ILjava/lang/Object;)V

    return p5

    :cond_6
    sget-object p6, Lsu0;->h:Lbh8;

    if-ne v0, p6, :cond_7

    invoke-virtual {p1, p2, v3}, Lq91;->n(ILjava/lang/Object;)V

    return p5

    :cond_7
    sget-object p6, Lsu0;->l:Lbh8;

    if-ne v0, p6, :cond_8

    invoke-virtual {p1, p2, v3}, Lq91;->n(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lmu0;->isClosedForSend()Z

    return v1

    :cond_8
    invoke-virtual {p1, p2, v3}, Lq91;->n(ILjava/lang/Object;)V

    instance-of p6, v0, Lmf9;

    if-eqz p6, :cond_9

    check-cast v0, Lmf9;

    iget-object v0, v0, Lmf9;->a:Llf9;

    :cond_9
    invoke-virtual {p0, v0, p3}, Lmu0;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lsu0;->i:Lbh8;

    invoke-virtual {p1, p2, p0}, Lq91;->o(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_a
    iget-object p0, p1, Lq91;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p3, p2, 0x2

    add-int/2addr p3, v2

    invoke-virtual {p0, p3, p4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, p4, :cond_b

    invoke-virtual {p1, p2, v2}, Lq91;->m(IZ)V

    :cond_b
    return p5
.end method

.method public final M(J)V
    .locals 19

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lmu0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lmu0;->m()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-lez v0, :cond_8

    sget v0, Lsu0;->c:I

    const/4 v8, 0x0

    move v2, v8

    :goto_1
    const-wide v9, 0x3fffffffffffffffL    # 1.9999999999999998

    sget-wide v11, Lmu0;->o:J

    if-ge v2, v0, :cond_2

    invoke-virtual {v1}, Lmu0;->m()J

    move-result-wide v3

    sget-object v5, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v5, v1, v11, v12}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v5

    and-long/2addr v5, v9

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lmu0;->m()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    goto :goto_6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v11, v12}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    and-long v2, v4, v9

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    add-long v6, v13, v2

    sget-wide v2, Lmu0;->o:J

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    invoke-virtual {v1}, Lmu0;->m()J

    move-result-wide v2

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v11, v12}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    and-long v6, v4, v9

    and-long v15, v4, v13

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    goto :goto_4

    :cond_3
    move v15, v8

    :goto_4
    cmp-long v16, v2, v6

    if-nez v16, :cond_5

    invoke-virtual {v1}, Lmu0;->m()J

    move-result-wide v16

    cmp-long v2, v2, v16

    if-nez v2, :cond_5

    :goto_5
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v11, v12}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    and-long v6, v4, v9

    sget-wide v2, Lmu0;->o:J

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_6
    return-void

    :cond_4
    move-object/from16 v1, p0

    goto :goto_5

    :cond_5
    if-nez v15, :cond_6

    add-long/2addr v6, v13

    sget-wide v2, Lmu0;->o:J

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    goto :goto_3

    :cond_6
    move-object/from16 v1, p0

    goto :goto_3

    :cond_7
    move-object/from16 v1, p0

    goto :goto_2

    :cond_8
    move-object/from16 v1, p0

    goto/16 :goto_0
.end method

.method public final a(J)Z
    .locals 4

    invoke-virtual {p0}, Lmu0;->m()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lmu0;->p()J

    move-result-wide v0

    iget p0, p0, Lmu0;->b:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final b(Le02;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lmu0;->p:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq91;

    :goto_0
    invoke-virtual {p0}, Lmu0;->w()Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Lmu0;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v7

    sget v4, Lsu0;->b:I

    int-to-long v4, v4

    div-long v9, v7, v4

    rem-long v4, v7, v4

    long-to-int v6, v4

    iget-wide v4, v0, Lhl7;->e:J

    cmp-long v4, v4, v9

    if-eqz v4, :cond_1

    invoke-virtual {p0, v9, v10, v0}, Lmu0;->j(JLq91;)Lq91;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v4

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lmu0;->J(Lq91;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lsu0;->m:Lbh8;

    const/4 v12, 0x0

    const-string v13, "unexpected"

    if-eq p0, v0, :cond_10

    sget-object v10, Lsu0;->o:Lbh8;

    if-ne p0, v10, :cond_3

    invoke-virtual {v4}, Lmu0;->s()J

    move-result-wide v9

    cmp-long p0, v7, v9

    if-gez p0, :cond_2

    invoke-virtual {v5}, Ldv1;->a()V

    :cond_2
    move-object p0, v4

    move-object v0, v5

    goto :goto_0

    :cond_3
    sget-object v9, Lsu0;->n:Lbh8;

    if-ne p0, v9, :cond_f

    invoke-static {p1}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    invoke-static {p0}, Le31;->c(Le02;)Lc31;

    move-result-object v9

    :try_start_0
    invoke-virtual/range {v4 .. v9}, Lmu0;->J(Lq91;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    invoke-virtual {v9, v5, v6}, Lc31;->a(Lhl7;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    :goto_2
    move-object p0, v0

    goto/16 :goto_8

    :cond_4
    iget-object p1, v4, Lmu0;->c:Lnl3;

    if-ne p0, v10, :cond_e

    :try_start_1
    invoke-virtual {v4}, Lmu0;->s()J

    move-result-wide v10

    cmp-long p0, v7, v10

    if-gez p0, :cond_5

    invoke-virtual {v5}, Ldv1;->a()V

    :cond_5
    sget-object p0, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq91;

    :goto_3
    invoke-virtual {v4}, Lmu0;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Lmu0;->o()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v9, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_7

    :cond_6
    move-object v11, v9

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v9

    sget v0, Lsu0;->b:I

    int-to-long v0, v0

    div-long v5, v9, v0

    rem-long v0, v9, v0

    long-to-int v8, v0

    iget-wide v0, p0, Lhl7;->e:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_8

    :try_start_3
    invoke-virtual {v4, v5, v6, p0}, Lmu0;->j(JLq91;)Lq91;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_7

    move-object v9, v11

    goto :goto_3

    :cond_7
    move-object v7, v0

    :goto_4
    move-object v6, v4

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    move-object v9, v11

    goto :goto_8

    :cond_8
    move-object v7, p0

    goto :goto_4

    :goto_5
    :try_start_4
    invoke-virtual/range {v6 .. v11}, Lmu0;->J(Lq91;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v4, v6

    move-object v0, v7

    move-wide v1, v9

    move-object v9, v11

    :try_start_5
    sget-object v5, Lsu0;->m:Lbh8;

    if-ne p0, v5, :cond_9

    invoke-virtual {v9, v0, v8}, Lc31;->a(Lhl7;I)V

    goto :goto_7

    :cond_9
    sget-object v5, Lsu0;->o:Lbh8;

    if-ne p0, v5, :cond_b

    invoke-virtual {v4}, Lmu0;->s()J

    move-result-wide v5

    cmp-long p0, v1, v5

    if-gez p0, :cond_a

    invoke-virtual {v0}, Ldv1;->a()V

    :cond_a
    move-object p0, v0

    goto :goto_3

    :cond_b
    sget-object v1, Lsu0;->n:Lbh8;

    if-eq p0, v1, :cond_d

    invoke-virtual {v0}, Ldv1;->a()V

    if-eqz p1, :cond_c

    new-instance v12, Lnu0;

    invoke-direct {v12, v4}, Lnu0;-><init>(Lmu0;)V

    :cond_c
    :goto_6
    invoke-virtual {v9, p0, v12}, Lc31;->q(Ljava/lang/Object;Ldm3;)V

    goto :goto_7

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2
    move-exception v0

    move-object v9, v11

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v5}, Ldv1;->a()V

    if-eqz p1, :cond_c

    new-instance v12, Lnu0;

    invoke-direct {v12, v4}, Lnu0;-><init>(Lmu0;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :goto_7
    invoke-virtual {v9}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0

    :goto_8
    invoke-virtual {v9}, Lc31;->A()V

    throw p0

    :cond_f
    invoke-virtual {v5}, Ldv1;->a()V

    return-object p0

    :cond_10
    invoke-static {v13}, Lah;->f(Ljava/lang/String;)V

    return-object v12

    :cond_11
    move-object v4, p0

    invoke-virtual {v4}, Lmu0;->o()Ljava/lang/Throwable;

    move-result-object p0

    sget p1, Lp68;->a:I

    throw p0
.end method

.method public final c(Lco1;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lmu0;->C(Lmu0;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Channel was cancelled"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmu0;->d(Ljava/lang/Throwable;Z)Z

    return-void
.end method

.method public final close(Ljava/lang/Throwable;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmu0;->d(Ljava/lang/Throwable;Z)Z

    move-result p0

    return p0
.end method

.method public final d(Ljava/lang/Throwable;Z)Z
    .locals 17

    move-object/from16 v1, p0

    const/16 v8, 0x3c

    const-wide v9, 0xfffffffffffffffL

    if-eqz p2, :cond_1

    :goto_0
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->s:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    shr-long v6, v4, v8

    long-to-int v6, v6

    if-nez v6, :cond_1

    and-long v6, v4, v9

    sget-object v11, Lsu0;->a:Lq91;

    const-wide/high16 v11, 0x1000000000000000L

    add-long/2addr v6, v11

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v1, p0

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v4, Lsu0;->s:Lbh8;

    :cond_2
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->k:J

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v11, 0x1

    if-eqz v6, :cond_3

    move v12, v11

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v4, :cond_2

    const/4 v0, 0x0

    move v12, v0

    :goto_2
    const-wide/high16 v13, 0x3000000000000000L    # 1.727233711018889E-77

    if-eqz p2, :cond_5

    :cond_4
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->s:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    and-long v6, v4, v9

    add-long/2addr v6, v13

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_5
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->s:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    shr-long v6, v4, v8

    long-to-int v6, v6

    if-eqz v6, :cond_7

    if-eq v6, v11, :cond_6

    goto :goto_4

    :cond_6
    and-long v6, v4, v9

    add-long/2addr v6, v13

    goto :goto_3

    :cond_7
    and-long v6, v4, v9

    const-wide/high16 v15, 0x2000000000000000L

    add-long/2addr v6, v15

    :goto_3
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v1}, Lmu0;->isClosedForSend()Z

    if-eqz v12, :cond_c

    :goto_5
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v6, Lmu0;->n:J

    invoke-virtual {v0, v1, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    sget-object v0, Lsu0;->q:Lbh8;

    :goto_6
    move-object v5, v0

    goto :goto_7

    :cond_8
    sget-object v0, Lsu0;->r:Lbh8;

    goto :goto_6

    :cond_9
    :goto_7
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->n:J

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v4, :cond_a

    goto :goto_8

    :cond_a
    invoke-static {v11, v4}, Lv39;->c(ILjava/lang/Object;)V

    check-cast v4, Lnl3;

    invoke-virtual {v1}, Lmu0;->n()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v4, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v12

    :cond_b
    invoke-virtual {v0, v1, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v4, :cond_9

    goto :goto_5

    :cond_c
    :goto_8
    return v12
.end method

.method public final e(J)Lq91;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lq91<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lmu0;->m:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    sget-wide v2, Lmu0;->r:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq91;

    iget-wide v3, v2, Lhl7;->e:J

    move-object v5, v1

    check-cast v5, Lq91;

    iget-wide v5, v5, Lhl7;->e:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    move-object v1, v2

    :cond_0
    sget-wide v2, Lmu0;->p:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq91;

    iget-wide v2, v0, Lhl7;->e:J

    move-object v4, v1

    check-cast v4, Lq91;

    iget-wide v4, v4, Lhl7;->e:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-object v1, v0

    :cond_1
    check-cast v1, Ldv1;

    :cond_2
    move-object v3, v1

    :goto_0
    sget v0, Ldv1;->d:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Ldv1;->b:J

    invoke-virtual {v0, v3, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    sget-object v7, Loe0;->f:Lbh8;

    if-ne v0, v7, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    check-cast v1, Ldv1;

    if-nez v1, :cond_2

    :cond_4
    sget-object v2, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v4, Ldv1;->b:J

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_1
    check-cast v3, Lq91;

    invoke-virtual {p0}, Lmu0;->x()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_b

    move-object v0, v3

    :cond_5
    sget v4, Lsu0;->b:I

    sub-int/2addr v4, v1

    :goto_2
    const-wide/16 v5, -0x1

    if-ge v2, v4, :cond_a

    iget-wide v7, v0, Lhl7;->e:J

    sget v9, Lsu0;->b:I

    int-to-long v9, v9

    mul-long/2addr v7, v9

    int-to-long v9, v4

    add-long/2addr v7, v9

    invoke-virtual {p0}, Lmu0;->p()J

    move-result-wide v9

    cmp-long v9, v7, v9

    if-gez v9, :cond_6

    :goto_3
    move-wide v7, v5

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v4}, Lq91;->l(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    sget-object v10, Lsu0;->e:Lbh8;

    if-ne v9, v10, :cond_7

    goto :goto_4

    :cond_7
    sget-object v10, Lsu0;->d:Lbh8;

    if-ne v9, v10, :cond_9

    goto :goto_5

    :cond_8
    :goto_4
    sget-object v10, Lsu0;->l:Lbh8;

    invoke-virtual {v0, v4, v9, v10}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Lhl7;->i()V

    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_a
    sget-object v4, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v7, Ldv1;->c:J

    invoke-virtual {v4, v0, v7, v8}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldv1;

    check-cast v0, Lq91;

    if-nez v0, :cond_5

    goto :goto_3

    :goto_5
    cmp-long v0, v7, v5

    if-eqz v0, :cond_b

    invoke-virtual {p0, v7, v8}, Lmu0;->f(J)V

    :cond_b
    const/4 v0, 0x0

    move-object v4, v3

    :goto_6
    if-eqz v4, :cond_12

    sget v5, Lsu0;->b:I

    sub-int/2addr v5, v1

    :goto_7
    if-ge v2, v5, :cond_11

    iget-wide v6, v4, Lhl7;->e:J

    sget v8, Lsu0;->b:I

    int-to-long v8, v8

    mul-long/2addr v6, v8

    int-to-long v8, v5

    add-long/2addr v6, v8

    cmp-long v6, v6, p1

    if-ltz v6, :cond_12

    :cond_c
    invoke-virtual {v4, v5}, Lq91;->l(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_f

    sget-object v7, Lsu0;->e:Lbh8;

    if-ne v6, v7, :cond_d

    goto :goto_8

    :cond_d
    instance-of v7, v6, Lmf9;

    if-eqz v7, :cond_e

    sget-object v7, Lsu0;->l:Lbh8;

    invoke-virtual {v4, v5, v6, v7}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    check-cast v6, Lmf9;

    iget-object v6, v6, Lmf9;->a:Llf9;

    invoke-static {v0, v6}, Lvp2;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v1}, Lq91;->m(IZ)V

    goto :goto_9

    :cond_e
    instance-of v7, v6, Llf9;

    if-eqz v7, :cond_10

    sget-object v7, Lsu0;->l:Lbh8;

    invoke-virtual {v4, v5, v6, v7}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {v0, v6}, Lvp2;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v1}, Lq91;->m(IZ)V

    goto :goto_9

    :cond_f
    :goto_8
    sget-object v7, Lsu0;->l:Lbh8;

    invoke-virtual {v4, v5, v6, v7}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v4}, Lhl7;->i()V

    :cond_10
    :goto_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_11
    sget-object v5, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v6, Ldv1;->c:J

    invoke-virtual {v5, v4, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldv1;

    check-cast v4, Lq91;

    goto :goto_6

    :cond_12
    if-eqz v0, :cond_14

    instance-of p1, v0, Ljava/util/ArrayList;

    if-nez p1, :cond_13

    check-cast v0, Llf9;

    invoke-virtual {p0, v0, v1}, Lmu0;->G(Llf9;Z)V

    return-object v3

    :cond_13
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_a
    if-ge v2, p1, :cond_14

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Llf9;

    invoke-virtual {p0, p2, v1}, Lmu0;->G(Llf9;Z)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_a

    :cond_14
    return-object v3

    :cond_15
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    goto/16 :goto_0
.end method

.method public final f(J)V
    .locals 11

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lmu0;->p:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq91;

    :goto_0
    sget-object v1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v3, Lmu0;->q:J

    invoke-virtual {v1, p0, v3, v4}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v5

    iget v2, p0, Lmu0;->b:I

    int-to-long v7, v2

    add-long/2addr v7, v5

    invoke-virtual {p0}, Lmu0;->m()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    cmp-long v2, p1, v7

    if-gez v2, :cond_0

    return-void

    :cond_0
    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p0

    if-eqz p0, :cond_6

    sget p0, Lsu0;->b:I

    int-to-long v3, p0

    div-long v7, v5, v3

    rem-long v3, v5, v3

    long-to-int p0, v3

    iget-wide v3, v0, Lhl7;->e:J

    cmp-long v1, v3, v7

    if-eqz v1, :cond_2

    invoke-virtual {v2, v7, v8, v0}, Lmu0;->j(JLq91;)Lq91;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, v1

    :cond_2
    const/4 v10, 0x0

    move v7, p0

    move-wide v8, v5

    move-object v6, v0

    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Lmu0;->J(Lq91;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lsu0;->o:Lbh8;

    if-ne p0, v0, :cond_3

    invoke-virtual {v2}, Lmu0;->s()J

    move-result-wide v0

    cmp-long p0, v8, v0

    if-gez p0, :cond_5

    invoke-virtual {v6}, Ldv1;->a()V

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ldv1;->a()V

    iget-object v0, v2, Lmu0;->c:Lnl3;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lrq3;->b(Lnl3;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    throw p0

    :cond_5
    :goto_1
    move-object p0, v2

    move-object v0, v6

    goto :goto_0

    :cond_6
    :goto_2
    move-object p0, v2

    goto :goto_0
.end method

.method public final g()V
    .locals 15

    invoke-virtual {p0}, Lmu0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v8, Lmu0;->m:J

    invoke-virtual {v0, p0, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq91;

    move-object v10, v0

    :goto_0
    sget-object v0, Lmu0;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v11

    sget v0, Lsu0;->b:I

    int-to-long v2, v0

    div-long v6, v11, v2

    invoke-virtual {p0}, Lmu0;->s()J

    move-result-wide v2

    cmp-long v0, v2, v11

    if-gtz v0, :cond_2

    iget-wide v2, v10, Lhl7;->e:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    invoke-virtual {v10}, Ldv1;->c()Ldv1;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v6, v7, v10}, Lmu0;->z(JLq91;)V

    :cond_1
    invoke-static {p0}, Lmu0;->u(Lmu0;)V

    return-void

    :cond_2
    iget-wide v2, v10, Lhl7;->e:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_c

    sget-object v13, Lru0;->c:Lru0;

    :goto_1
    invoke-static {v10, v6, v7, v13}, Loe0;->a(Lhl7;JLbm3;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lqc4;->d(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v14}, Lqc4;->c(Ljava/lang/Object;)Lhl7;

    move-result-object v5

    :cond_3
    :goto_2
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lhl7;

    iget-wide v2, v4, Lhl7;->e:J

    iget-wide v0, v5, Lhl7;->e:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lhl7;->j()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->m:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v4}, Lhl7;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Ldv1;->e()V

    goto :goto_3

    :cond_6
    invoke-virtual {v0, p0, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v4, :cond_5

    invoke-virtual {v5}, Lhl7;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Ldv1;->e()V

    goto :goto_2

    :cond_7
    :goto_3
    invoke-static {v14}, Lqc4;->d(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lmu0;->isClosedForSend()Z

    invoke-virtual {p0, v6, v7, v10}, Lmu0;->z(JLq91;)V

    invoke-static {p0}, Lmu0;->u(Lmu0;)V

    goto :goto_4

    :cond_8
    invoke-static {v14}, Lqc4;->c(Ljava/lang/Object;)Lhl7;

    move-result-object v0

    check-cast v0, Lq91;

    iget-wide v2, v0, Lhl7;->e:J

    cmp-long v4, v2, v6

    if-lez v4, :cond_a

    const-wide/16 v4, 0x1

    add-long/2addr v4, v11

    sget v0, Lsu0;->b:I

    int-to-long v6, v0

    mul-long/2addr v6, v2

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->l:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_9

    sub-long/2addr v6, v11

    invoke-virtual {p0, v6, v7}, Lmu0;->t(J)V

    goto :goto_4

    :cond_9
    invoke-static {p0}, Lmu0;->u(Lmu0;)V

    goto :goto_4

    :cond_a
    move-object v13, v0

    :goto_4
    if-nez v13, :cond_b

    goto/16 :goto_0

    :cond_b
    move-object v10, v13

    :cond_c
    sget v0, Lsu0;->b:I

    int-to-long v2, v0

    rem-long v2, v11, v2

    long-to-int v0, v2

    invoke-virtual {v10, v0}, Lq91;->l(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Llf9;

    sget-wide v4, Lmu0;->q:J

    if-eqz v3, :cond_e

    sget-object v3, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v3, p0, v4, v5}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v3, v11, v6

    if-ltz v3, :cond_e

    sget-object v3, Lsu0;->g:Lbh8;

    invoke-virtual {v10, v0, v2, v3}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0, v2, v10, v0}, Lmu0;->I(Ljava/lang/Object;Lq91;I)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lsu0;->d:Lbh8;

    invoke-virtual {v10, v0, v2}, Lq91;->o(ILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_d
    sget-object v2, Lsu0;->j:Lbh8;

    invoke-virtual {v10, v0, v2}, Lq91;->o(ILjava/lang/Object;)V

    invoke-virtual {v10}, Lhl7;->i()V

    goto :goto_6

    :cond_e
    :goto_5
    invoke-virtual {v10, v0}, Lq91;->l(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Llf9;

    if-eqz v3, :cond_11

    sget-object v3, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v3, p0, v4, v5}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v3, v11, v6

    if-gez v3, :cond_f

    new-instance v3, Lmf9;

    move-object v6, v2

    check-cast v6, Llf9;

    invoke-direct {v3, v6}, Lmf9;-><init>(Llf9;)V

    invoke-virtual {v10, v0, v2, v3}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_f
    sget-object v3, Lsu0;->g:Lbh8;

    invoke-virtual {v10, v0, v2, v3}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0, v2, v10, v0}, Lmu0;->I(Ljava/lang/Object;Lq91;I)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lsu0;->d:Lbh8;

    invoke-virtual {v10, v0, v2}, Lq91;->o(ILjava/lang/Object;)V

    goto :goto_7

    :cond_10
    sget-object v2, Lsu0;->j:Lbh8;

    invoke-virtual {v10, v0, v2}, Lq91;->o(ILjava/lang/Object;)V

    invoke-virtual {v10}, Lhl7;->i()V

    goto :goto_6

    :cond_11
    sget-object v3, Lsu0;->j:Lbh8;

    if-ne v2, v3, :cond_12

    :goto_6
    invoke-static {p0}, Lmu0;->u(Lmu0;)V

    goto/16 :goto_0

    :cond_12
    if-nez v2, :cond_13

    sget-object v3, Lsu0;->e:Lbh8;

    invoke-virtual {v10, v0, v2, v3}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_13
    sget-object v3, Lsu0;->d:Lbh8;

    if-ne v2, v3, :cond_14

    goto :goto_7

    :cond_14
    sget-object v3, Lsu0;->h:Lbh8;

    if-eq v2, v3, :cond_18

    sget-object v3, Lsu0;->i:Lbh8;

    if-eq v2, v3, :cond_18

    sget-object v3, Lsu0;->k:Lbh8;

    if-ne v2, v3, :cond_15

    goto :goto_7

    :cond_15
    sget-object v3, Lsu0;->l:Lbh8;

    if-ne v2, v3, :cond_16

    goto :goto_7

    :cond_16
    sget-object v3, Lsu0;->f:Lbh8;

    if-ne v2, v3, :cond_17

    goto :goto_5

    :cond_17
    const-string v0, "Unexpected cell state: "

    invoke-static {v2, v0}, Lad2;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_18
    :goto_7
    invoke-static {p0}, Lmu0;->u(Lmu0;)V

    return-void
.end method

.method public final getOnSend()Lxl7;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxl7<",
            "TE;",
            "Lmu0<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Lq82;

    sget-object v1, Lmu0$g;->c:Lmu0$g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lv39;->c(ILjava/lang/Object;)V

    sget-object v3, Lmu0$h;->c:Lmu0$h;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lv39;->c(ILjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lq82;-><init>(Ljava/lang/Object;Ldm3;Ldm3;Lzg5;)V

    return-object v0
.end method

.method public final h()Lwl7;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwl7;"
        }
    .end annotation

    new-instance v0, Lwl7;

    sget-object v1, Lmu0$e;->c:Lmu0$e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lv39;->c(ILjava/lang/Object;)V

    sget-object v3, Lmu0$f;->c:Lmu0$f;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lv39;->c(ILjava/lang/Object;)V

    iget-object v2, p0, Lmu0;->d:Lju0;

    invoke-direct {v0, p0, v1, v3, v2}, Lwl7;-><init>(Ljava/lang/Object;Ldm3;Ldm3;Lju0;)V

    return-object v0
.end method

.method public final i()Ljava/lang/Object;
    .locals 11

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lmu0;->q:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v1

    sget-wide v3, Lmu0;->s:J

    invoke-virtual {v0, p0, v3, v4}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lmu0;->v(JZ)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lmu0;->n()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Lp91$a;

    invoke-direct {v0, p0}, Lp91$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    const-wide v5, 0xfffffffffffffffL

    and-long/2addr v3, v5

    cmp-long v1, v1, v3

    sget-object v2, Lp91;->b:Lp91$b;

    if-ltz v1, :cond_1

    return-object v2

    :cond_1
    sget-object v8, Lsu0;->k:Lbh8;

    sget-wide v3, Lmu0;->p:J

    invoke-virtual {v0, p0, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq91;

    :goto_0
    invoke-virtual {p0}, Lmu0;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmu0;->n()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Lp91$a;

    invoke-direct {v0, p0}, Lp91$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_2
    sget-object v1, Lmu0;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v6

    sget v1, Lsu0;->b:I

    int-to-long v3, v1

    div-long v9, v6, v3

    rem-long v3, v6, v3

    long-to-int v5, v3

    iget-wide v3, v0, Lhl7;->e:J

    cmp-long v1, v3, v9

    if-eqz v1, :cond_4

    invoke-virtual {p0, v9, v10, v0}, Lmu0;->j(JLq91;)Lq91;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v4, v1

    :goto_1
    move-object v3, p0

    goto :goto_2

    :cond_4
    move-object v4, v0

    goto :goto_1

    :goto_2
    invoke-virtual/range {v3 .. v8}, Lmu0;->J(Lq91;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, v4

    sget-object v1, Lsu0;->m:Lbh8;

    const/4 v4, 0x0

    if-ne p0, v1, :cond_7

    instance-of p0, v8, Llf9;

    if-eqz p0, :cond_5

    move-object v4, v8

    check-cast v4, Llf9;

    :cond_5
    if-eqz v4, :cond_6

    invoke-interface {v4, v0, v5}, Llf9;->a(Lhl7;I)V

    :cond_6
    invoke-virtual {v3, v6, v7}, Lmu0;->M(J)V

    invoke-virtual {v0}, Lhl7;->i()V

    return-object v2

    :cond_7
    sget-object v1, Lsu0;->o:Lbh8;

    if-ne p0, v1, :cond_9

    invoke-virtual {v3}, Lmu0;->s()J

    move-result-wide v4

    cmp-long p0, v6, v4

    if-gez p0, :cond_8

    invoke-virtual {v0}, Ldv1;->a()V

    :cond_8
    move-object p0, v3

    goto :goto_0

    :cond_9
    sget-object v1, Lsu0;->n:Lbh8;

    if-eq p0, v1, :cond_a

    invoke-virtual {v0}, Ldv1;->a()V

    return-object p0

    :cond_a
    const-string p0, "unexpected"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4
.end method

.method public final invokeOnClose(Lnl3;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Throwable;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    :goto_0
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->n:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v6, Lmu0;->n:J

    invoke-virtual {p0, v1, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    :goto_1
    sget-object p0, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, v1, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    sget-object v4, Lsu0;->q:Lbh8;

    if-ne p0, v4, :cond_3

    sget-object v5, Lsu0;->r:Lbh8;

    :cond_1
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->n:J

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Lmu0;->n()Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    sget-object p0, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, v1, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v4, :cond_1

    goto :goto_1

    :cond_3
    sget-object p1, Lsu0;->r:Lbh8;

    if-ne p0, p1, :cond_4

    const-string p0, "Another handler was already registered and successfully invoked"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p1, "Another handler is already registered: "

    invoke-static {p0, p1}, Lad2;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_5
    move-object p0, v1

    goto :goto_0
.end method

.method public final isClosedForSend()Z
    .locals 3

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lmu0;->s:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lmu0;->v(JZ)Z

    move-result p0

    return p0
.end method

.method public final iterator()Lk91;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk91<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lmu0$a;

    invoke-direct {v0, p0}, Lmu0$a;-><init>(Lmu0;)V

    return-object v0
.end method

.method public final j(JLq91;)Lq91;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lq91<",
            "TE;>;)",
            "Lq91<",
            "TE;>;"
        }
    .end annotation

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    sget-object v0, Lsu0;->a:Lq91;

    sget-object v9, Lru0;->c:Lru0;

    :goto_0
    invoke-static {v8, v6, v7, v9}, Loe0;->a(Lhl7;JLbm3;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lqc4;->d(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v10}, Lqc4;->c(Ljava/lang/Object;)Lhl7;

    move-result-object v5

    :cond_0
    :goto_1
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v11, Lmu0;->p:J

    invoke-virtual {v0, p0, v11, v12}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lhl7;

    iget-wide v2, v4, Lhl7;->e:J

    iget-wide v13, v5, Lhl7;->e:J

    cmp-long v0, v2, v13

    if-ltz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lhl7;->j()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->p:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Lhl7;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Ldv1;->e()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p0, v11, v12}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v4, :cond_2

    invoke-virtual {v5}, Lhl7;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Ldv1;->e()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {v10}, Lqc4;->d(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lmu0;->isClosedForSend()Z

    iget-wide v2, v8, Lhl7;->e:J

    sget v0, Lsu0;->b:I

    int-to-long v4, v0

    mul-long/2addr v2, v4

    invoke-virtual {p0}, Lmu0;->s()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_d

    invoke-virtual {v8}, Ldv1;->a()V

    return-object v9

    :cond_5
    invoke-static {v10}, Lqc4;->c(Ljava/lang/Object;)Lhl7;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lq91;

    iget-wide v10, v5, Lhl7;->e:J

    invoke-virtual {p0}, Lmu0;->y()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lmu0;->m()J

    move-result-wide v2

    sget v0, Lsu0;->b:I

    int-to-long v12, v0

    div-long/2addr v2, v12

    cmp-long v0, v6, v2

    if-gtz v0, :cond_9

    :goto_3
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v12, Lmu0;->m:J

    invoke-virtual {v0, p0, v12, v13}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lhl7;

    iget-wide v2, v4, Lhl7;->e:J

    cmp-long v0, v2, v10

    if-gez v0, :cond_9

    invoke-virtual {v5}, Lhl7;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_4
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->m:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move-object v8, v5

    if-eqz v2, :cond_6

    invoke-virtual {v4}, Lhl7;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4}, Ldv1;->e()V

    goto :goto_5

    :cond_6
    invoke-virtual {v0, p0, v12, v13}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v4, :cond_8

    invoke-virtual {v8}, Lhl7;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v8}, Ldv1;->e()V

    :cond_7
    move-object v5, v8

    goto :goto_3

    :cond_8
    move-object v5, v8

    goto :goto_4

    :cond_9
    move-object v8, v5

    :cond_a
    :goto_5
    cmp-long v0, v10, v6

    if-lez v0, :cond_e

    sget v0, Lsu0;->b:I

    int-to-long v2, v0

    mul-long v6, v10, v2

    :cond_b
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->q:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v12, v4, v6

    if-ltz v12, :cond_c

    goto :goto_6

    :cond_c
    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_6
    sget v0, Lsu0;->b:I

    int-to-long v0, v0

    mul-long/2addr v10, v0

    invoke-virtual {p0}, Lmu0;->s()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_d

    invoke-virtual {v8}, Ldv1;->a()V

    :cond_d
    return-object v9

    :cond_e
    return-object v8
.end method

.method public final k(JLq91;)Lq91;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lq91<",
            "TE;>;)",
            "Lq91<",
            "TE;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    sget-object v0, Lsu0;->a:Lq91;

    sget-object v9, Lru0;->c:Lru0;

    :goto_0
    invoke-static {v8, v6, v7, v9}, Loe0;->a(Lhl7;JLbm3;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lqc4;->d(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v10}, Lqc4;->c(Ljava/lang/Object;)Lhl7;

    move-result-object v5

    :cond_0
    :goto_1
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v11, Lmu0;->r:J

    invoke-virtual {v0, v1, v11, v12}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lhl7;

    iget-wide v2, v4, Lhl7;->e:J

    iget-wide v13, v5, Lhl7;->e:J

    cmp-long v0, v2, v13

    if-ltz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lhl7;->j()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->r:J

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Lhl7;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Ldv1;->e()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1, v11, v12}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v4, :cond_2

    invoke-virtual {v5}, Lhl7;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Ldv1;->e()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {v10}, Lqc4;->d(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lmu0;->isClosedForSend()Z

    iget-wide v2, v8, Lhl7;->e:J

    sget v0, Lsu0;->b:I

    int-to-long v4, v0

    mul-long/2addr v2, v4

    invoke-virtual {v1}, Lmu0;->p()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    invoke-virtual {v8}, Ldv1;->a()V

    return-object v9

    :cond_5
    move-object v15, v9

    goto :goto_5

    :cond_6
    invoke-static {v10}, Lqc4;->c(Ljava/lang/Object;)Lhl7;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lq91;

    iget-wide v10, v8, Lhl7;->e:J

    cmp-long v0, v10, v6

    if-lez v0, :cond_a

    sget v0, Lsu0;->b:I

    int-to-long v2, v0

    mul-long v12, v10, v2

    :goto_3
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->s:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    const-wide v6, 0xfffffffffffffffL

    and-long/2addr v6, v4

    cmp-long v14, v6, v12

    if-ltz v14, :cond_7

    move-object v15, v9

    move-wide/from16 v16, v10

    goto :goto_4

    :cond_7
    const/16 v14, 0x3c

    move-object v15, v9

    move-wide/from16 v16, v10

    shr-long v9, v4, v14

    long-to-int v9, v9

    int-to-long v9, v9

    shl-long/2addr v9, v14

    add-long/2addr v6, v9

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_4
    sget v0, Lsu0;->b:I

    int-to-long v0, v0

    mul-long v10, v16, v0

    invoke-virtual/range {p0 .. p0}, Lmu0;->p()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_8

    invoke-virtual {v8}, Ldv1;->a()V

    :cond_8
    :goto_5
    return-object v15

    :cond_9
    move-object/from16 v1, p0

    move-object v9, v15

    move-wide/from16 v10, v16

    goto :goto_3

    :cond_a
    return-object v8
.end method

.method public final l()Lwl7;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwl7;"
        }
    .end annotation

    new-instance v0, Lwl7;

    sget-object v1, Lmu0$c;->c:Lmu0$c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lv39;->c(ILjava/lang/Object;)V

    sget-object v3, Lmu0$d;->c:Lmu0$d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lv39;->c(ILjava/lang/Object;)V

    iget-object v2, p0, Lmu0;->d:Lju0;

    invoke-direct {v0, p0, v1, v3, v2}, Lwl7;-><init>(Ljava/lang/Object;Ldm3;Ldm3;Lju0;)V

    return-object v0
.end method

.method public final m()J
    .locals 3

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lmu0;->l:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()Ljava/lang/Throwable;
    .locals 3

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lmu0;->k:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public final o()Ljava/lang/Throwable;
    .locals 1

    invoke-virtual {p0}, Lmu0;->n()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    const-string v0, "Channel was closed"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final p()J
    .locals 3

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lmu0;->q:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()Ljava/lang/Throwable;
    .locals 1

    invoke-virtual {p0}, Lmu0;->n()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v0, "Channel was closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final s()J
    .locals 4

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lmu0;->s:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    const-wide v2, 0xfffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public send(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    sget-object v1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v9, Lmu0;->r:J

    invoke-virtual {v1, v0, v9, v10}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq91;

    :cond_0
    :goto_0
    sget-object v11, Lmu0;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v11, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v4

    const-wide v12, 0xfffffffffffffffL

    and-long v6, v4, v12

    const/4 v14, 0x0

    invoke-virtual {v0, v4, v5, v14}, Lmu0;->v(JZ)Z

    move-result v2

    sget v15, Lsu0;->b:I

    int-to-long v4, v15

    move-wide/from16 v16, v12

    div-long v12, v6, v4

    rem-long v4, v6, v4

    long-to-int v4, v4

    move/from16 v18, v15

    iget-wide v14, v1, Lhl7;->e:J

    cmp-long v5, v14, v12

    if-eqz v5, :cond_2

    invoke-virtual {v0, v12, v13, v1}, Lmu0;->k(JLq91;)Lq91;

    move-result-object v5

    if-nez v5, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v8, v3}, Lmu0;->A(Le02;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v0, v1, :cond_19

    return-object v0

    :cond_1
    move-object v1, v5

    :cond_2
    move-wide/from16 v20, v6

    move v7, v2

    move v2, v4

    move-wide/from16 v4, v20

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lmu0;->K(Lq91;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v6

    if-eqz v6, :cond_18

    const/4 v12, 0x1

    if-eq v6, v12, :cond_19

    const/4 v13, 0x2

    if-eq v6, v13, :cond_17

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    if-eq v6, v15, :cond_4

    if-eq v6, v14, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ldv1;->a()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lmu0;->p()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_5

    invoke-virtual {v1}, Ldv1;->a()V

    :cond_5
    invoke-virtual {v0, v8, v3}, Lmu0;->A(Le02;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v0, v1, :cond_19

    return-object v0

    :cond_6
    invoke-static {v8}, Lzya;->b(Le02;)Le02;

    move-result-object v6

    invoke-static {v6}, Le31;->c(Le02;)Lc31;

    move-result-object v6

    move v8, v7

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lmu0;->K(Lq91;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_15

    if-eq v7, v12, :cond_10

    if-eq v7, v13, :cond_14

    if-eq v7, v15, :cond_13

    const-string v2, "unexpected"

    if-ne v7, v14, :cond_12

    :try_start_1
    invoke-virtual {v1}, Ldv1;->a()V

    sget-object v1, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v9, v10}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq91;

    :goto_1
    invoke-virtual {v11, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v4

    and-long v9, v4, v16

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v7}, Lmu0;->v(JZ)Z

    move-result v4

    sget v5, Lsu0;->b:I

    int-to-long v14, v5

    div-long v7, v9, v14

    rem-long v14, v9, v14

    long-to-int v14, v14

    move/from16 v19, v14

    iget-wide v13, v1, Lhl7;->e:J

    cmp-long v13, v13, v7

    if-eqz v13, :cond_a

    invoke-virtual {v0, v7, v8, v1}, Lmu0;->k(JLq91;)Lq91;

    move-result-object v7

    if-nez v7, :cond_9

    if-eqz v4, :cond_8

    :cond_7
    :goto_2
    invoke-virtual {v0, v3, v6}, Lmu0;->B(Ljava/lang/Object;Lc31;)V

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_8
    const/4 v8, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x5

    const/4 v15, 0x4

    goto :goto_1

    :cond_9
    move-object v1, v7

    move v8, v5

    const/16 v18, 0x0

    move v7, v4

    move-wide v4, v9

    :goto_3
    move-object v9, v2

    move/from16 v2, v19

    goto :goto_4

    :cond_a
    move v7, v4

    move v8, v5

    move-wide v4, v9

    const/16 v18, 0x0

    goto :goto_3

    :goto_4
    invoke-virtual/range {v0 .. v7}, Lmu0;->K(Lq91;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v10

    if-eqz v10, :cond_11

    if-eq v10, v12, :cond_10

    const/4 v15, 0x2

    if-eq v10, v15, :cond_e

    const/4 v13, 0x3

    if-eq v10, v13, :cond_d

    const/4 v2, 0x4

    if-eq v10, v2, :cond_c

    const/4 v7, 0x5

    if-eq v10, v7, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v1}, Ldv1;->a()V

    :goto_5
    move v14, v7

    move v8, v13

    move v13, v15

    move v15, v2

    move-object v2, v9

    goto :goto_1

    :cond_c
    invoke-virtual {v0}, Lmu0;->p()J

    move-result-wide v7

    cmp-long v2, v4, v7

    if-gez v2, :cond_7

    invoke-virtual {v1}, Ldv1;->a()V

    goto :goto_2

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eqz v7, :cond_f

    invoke-virtual {v1}, Lhl7;->i()V

    goto :goto_2

    :cond_f
    add-int v14, v2, v8

    invoke-virtual {v6, v1, v14}, Lc31;->a(Lhl7;I)V

    goto :goto_7

    :cond_10
    :goto_6
    sget-object v0, Lj59;->a:Lj59;

    invoke-virtual {v6, v0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    goto :goto_7

    :cond_11
    invoke-virtual {v1}, Ldv1;->a()V

    goto :goto_6

    :cond_12
    move-object v9, v2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-virtual {v0}, Lmu0;->p()J

    move-result-wide v7

    cmp-long v2, v4, v7

    if-gez v2, :cond_7

    invoke-virtual {v1}, Ldv1;->a()V

    goto :goto_2

    :cond_14
    add-int v4, v2, v18

    invoke-virtual {v6, v1, v4}, Lc31;->a(Lhl7;I)V

    goto :goto_7

    :cond_15
    invoke-virtual {v1}, Ldv1;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_7
    invoke-virtual {v6}, Lc31;->s()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v0, v1, :cond_16

    goto :goto_8

    :cond_16
    sget-object v0, Lj59;->a:Lj59;

    :goto_8
    if-ne v0, v1, :cond_19

    return-object v0

    :goto_9
    invoke-virtual {v6}, Lc31;->A()V

    throw v0

    :cond_17
    if-eqz v7, :cond_19

    invoke-virtual {v1}, Lhl7;->i()V

    invoke-virtual {v0, v8, v3}, Lmu0;->A(Le02;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v0, v1, :cond_19

    return-object v0

    :cond_18
    invoke-virtual {v1}, Ldv1;->a()V

    :cond_19
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public final t(J)V
    .locals 6

    sget-object v0, Lmu0;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    and-long/2addr p1, v0

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_0

    :goto_0
    sget-object p1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v4, Lmu0;->o:J

    invoke-virtual {p1, p0, v4, v5}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide p1

    and-long/2addr p1, v0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v3, Lmu0;->s:J

    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v3

    const/16 v5, 0x3c

    shr-long/2addr v3, v5

    long-to-int v3, v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "cancelled,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v3, "closed,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "capacity="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lmu0;->b:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v4, [Lq91;

    sget-wide v7, Lmu0;->p:J

    invoke-virtual {v2, v0, v7, v8}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v3, v7

    sget-wide v8, Lmu0;->r:J

    invoke-virtual {v2, v0, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v3, v8

    sget-wide v9, Lmu0;->m:J

    invoke-virtual {v2, v0, v9, v10}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v3}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lq91;

    sget-object v9, Lsu0;->a:Lq91;

    if-eq v5, v9, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v3

    check-cast v4, Lq91;

    iget-wide v4, v4, Lhl7;->e:J

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lq91;

    iget-wide v10, v10, Lhl7;->e:J

    cmp-long v12, v4, v10

    if-lez v12, :cond_6

    move-object v3, v9

    move-wide v4, v10

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    :goto_2
    check-cast v3, Lq91;

    invoke-virtual {v0}, Lmu0;->p()J

    move-result-wide v9

    invoke-virtual {v0}, Lmu0;->s()J

    move-result-wide v11

    :goto_3
    sget v0, Lsu0;->b:I

    move v2, v7

    :goto_4
    if-ge v2, v0, :cond_16

    iget-wide v4, v3, Lhl7;->e:J

    sget v13, Lsu0;->b:I

    int-to-long v13, v13

    mul-long/2addr v4, v13

    int-to-long v13, v2

    add-long/2addr v4, v13

    cmp-long v13, v4, v11

    if-ltz v13, :cond_7

    cmp-long v14, v4, v9

    if-gez v14, :cond_17

    :cond_7
    invoke-virtual {v3, v2}, Lq91;->l(I)Ljava/lang/Object;

    move-result-object v14

    iget-object v15, v3, Lq91;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 v7, v2, 0x2

    invoke-virtual {v15, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v15, v14, La31;

    if-eqz v15, :cond_a

    cmp-long v14, v11, v4

    if-gtz v14, :cond_8

    cmp-long v14, v4, v9

    if-gez v14, :cond_8

    const-string v4, "receive"

    goto/16 :goto_6

    :cond_8
    cmp-long v4, v9, v4

    if-gtz v4, :cond_9

    if-gez v13, :cond_9

    const-string v4, "send"

    goto/16 :goto_6

    :cond_9
    const-string v4, "cont"

    goto/16 :goto_6

    :cond_a
    instance-of v15, v14, Lbm7;

    if-eqz v15, :cond_d

    cmp-long v14, v11, v4

    if-gtz v14, :cond_b

    cmp-long v14, v4, v9

    if-gez v14, :cond_b

    const-string v4, "onReceive"

    goto/16 :goto_6

    :cond_b
    cmp-long v4, v9, v4

    if-gtz v4, :cond_c

    if-gez v13, :cond_c

    const-string v4, "onSend"

    goto/16 :goto_6

    :cond_c
    const-string v4, "select"

    goto/16 :goto_6

    :cond_d
    instance-of v4, v14, Lpz6;

    if-eqz v4, :cond_e

    const-string v4, "receiveCatching"

    goto/16 :goto_6

    :cond_e
    instance-of v4, v14, Lmu0$b;

    if-eqz v4, :cond_f

    const-string v4, "sendBroadcast"

    goto :goto_6

    :cond_f
    instance-of v4, v14, Lmf9;

    if-eqz v4, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "EB("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_10
    sget-object v4, Lsu0;->f:Lbh8;

    invoke-static {v14, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    sget-object v4, Lsu0;->g:Lbh8;

    invoke-static {v14, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_5

    :cond_11
    if-eqz v14, :cond_15

    sget-object v4, Lsu0;->e:Lbh8;

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    sget-object v4, Lsu0;->i:Lbh8;

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    sget-object v4, Lsu0;->h:Lbh8;

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    sget-object v4, Lsu0;->k:Lbh8;

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    sget-object v4, Lsu0;->j:Lbh8;

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    sget-object v4, Lsu0;->l:Lbh8;

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_13
    :goto_5
    const-string v4, "resuming_sender"

    :goto_6
    if-eqz v7, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "("

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "),"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    :goto_7
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_16
    invoke-virtual {v3}, Ldv1;->c()Ldv1;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lq91;

    if-nez v3, :cond_19

    :cond_17
    invoke-static {v1}, Lua8;->k0(Ljava/lang/CharSequence;)C

    move-result v0

    if-ne v0, v6, :cond_18

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_18
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_1a
    invoke-static {}, Lqz0;->e()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    sget-object v1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->s:J

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v2

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v3, v8}, Lmu0;->v(JZ)Z

    move-result v4

    const/4 v9, 0x1

    const-wide v10, 0xfffffffffffffffL

    if-eqz v4, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    and-long/2addr v2, v10

    invoke-virtual {v0, v2, v3}, Lmu0;->a(J)Z

    move-result v2

    xor-int/2addr v2, v9

    :goto_0
    sget-object v12, Lp91;->b:Lp91$b;

    if-eqz v2, :cond_1

    return-object v12

    :cond_1
    sget-object v6, Lsu0;->j:Lbh8;

    sget-wide v2, Lmu0;->r:J

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq91;

    :goto_1
    sget-object v2, Lmu0;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v4, v2, v10

    invoke-virtual {v0, v2, v3, v8}, Lmu0;->v(JZ)Z

    move-result v7

    sget v13, Lsu0;->b:I

    int-to-long v2, v13

    div-long v14, v4, v2

    rem-long v2, v4, v2

    long-to-int v2, v2

    iget-wide v10, v1, Lhl7;->e:J

    cmp-long v3, v10, v14

    if-eqz v3, :cond_4

    invoke-virtual {v0, v14, v15, v1}, Lmu0;->k(JLq91;)Lq91;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lmu0;->q()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lp91$a;

    invoke-direct {v1, v0}, Lp91$a;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_2
    const-wide v10, 0xfffffffffffffffL

    goto :goto_1

    :cond_3
    move-object v1, v3

    :cond_4
    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v7}, Lmu0;->K(Lq91;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v10

    if-eqz v10, :cond_e

    if-eq v10, v9, :cond_d

    const/4 v0, 0x2

    const/4 v3, 0x0

    if-eq v10, v0, :cond_9

    const/4 v0, 0x3

    if-eq v10, v0, :cond_8

    const/4 v0, 0x4

    if-eq v10, v0, :cond_6

    const/4 v0, 0x5

    if-eq v10, v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ldv1;->a()V

    :goto_2
    const-wide v10, 0xfffffffffffffffL

    move-object/from16 v0, p0

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lmu0;->p()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-gez v0, :cond_7

    invoke-virtual {v1}, Ldv1;->a()V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lmu0;->q()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lp91$a;

    invoke-direct {v1, v0}, Lp91$a;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_8
    const-string v0, "unexpected"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v1}, Lhl7;->i()V

    invoke-virtual/range {p0 .. p0}, Lmu0;->q()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lp91$a;

    invoke-direct {v1, v0}, Lp91$a;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_a
    instance-of v0, v6, Llf9;

    if-eqz v0, :cond_b

    move-object v3, v6

    check-cast v3, Llf9;

    :cond_b
    if-eqz v3, :cond_c

    add-int/2addr v2, v13

    invoke-interface {v3, v1, v2}, Llf9;->a(Lhl7;I)V

    :cond_c
    invoke-virtual {v1}, Lhl7;->i()V

    return-object v12

    :cond_d
    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :cond_e
    invoke-virtual {v1}, Ldv1;->a()V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public final v(JZ)Z
    .locals 17

    move-object/from16 v1, p0

    const/16 v0, 0x3c

    shr-long v2, p1, v0

    long-to-int v0, v2

    const/4 v8, 0x0

    if-eqz v0, :cond_21

    const/4 v9, 0x1

    if-eq v0, v9, :cond_21

    const/4 v2, 0x2

    const-wide v3, 0xfffffffffffffffL

    if-eq v0, v2, :cond_11

    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    and-long v2, p1, v3

    invoke-virtual {v1, v2, v3}, Lmu0;->e(J)Lq91;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :cond_0
    iget-object v5, v0, Lq91;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v6, Lsu0;->b:I

    sub-int/2addr v6, v9

    :goto_0
    const/4 v7, -0x1

    if-ge v7, v6, :cond_b

    iget-wide v10, v0, Lhl7;->e:J

    sget v12, Lsu0;->b:I

    int-to-long v12, v12

    mul-long/2addr v10, v12

    int-to-long v12, v6

    add-long/2addr v10, v12

    :cond_1
    invoke-virtual {v0, v6}, Lq91;->l(I)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lsu0;->i:Lbh8;

    if-eq v12, v13, :cond_c

    sget-object v13, Lsu0;->d:Lbh8;

    iget-object v14, v1, Lmu0;->c:Lnl3;

    if-ne v12, v13, :cond_3

    invoke-virtual {v1}, Lmu0;->p()J

    move-result-wide v15

    cmp-long v13, v10, v15

    if-ltz v13, :cond_c

    sget-object v13, Lsu0;->l:Lbh8;

    invoke-virtual {v0, v6, v12, v13}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-eqz v14, :cond_2

    mul-int/lit8 v7, v6, 0x2

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v14, v7, v3}, Lrq3;->b(Lnl3;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v3

    :cond_2
    invoke-virtual {v0, v6, v2}, Lq91;->n(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lhl7;->i()V

    goto :goto_4

    :cond_3
    sget-object v13, Lsu0;->e:Lbh8;

    if-eq v12, v13, :cond_a

    if-nez v12, :cond_4

    goto :goto_3

    :cond_4
    instance-of v13, v12, Llf9;

    if-nez v13, :cond_7

    instance-of v13, v12, Lmf9;

    if-eqz v13, :cond_5

    goto :goto_1

    :cond_5
    sget-object v13, Lsu0;->g:Lbh8;

    if-eq v12, v13, :cond_c

    sget-object v14, Lsu0;->f:Lbh8;

    if-ne v12, v14, :cond_6

    goto :goto_5

    :cond_6
    if-eq v12, v13, :cond_1

    goto :goto_4

    :cond_7
    :goto_1
    invoke-virtual {v1}, Lmu0;->p()J

    move-result-wide v15

    cmp-long v13, v10, v15

    if-ltz v13, :cond_c

    instance-of v13, v12, Lmf9;

    if-eqz v13, :cond_8

    move-object v13, v12

    check-cast v13, Lmf9;

    iget-object v13, v13, Lmf9;->a:Llf9;

    goto :goto_2

    :cond_8
    move-object v13, v12

    check-cast v13, Llf9;

    :goto_2
    sget-object v15, Lsu0;->l:Lbh8;

    invoke-virtual {v0, v6, v12, v15}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-eqz v14, :cond_9

    mul-int/lit8 v7, v6, 0x2

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v14, v7, v3}, Lrq3;->b(Lnl3;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v3

    :cond_9
    invoke-static {v4, v13}, Lvp2;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v6, v2}, Lq91;->n(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lhl7;->i()V

    goto :goto_4

    :cond_a
    :goto_3
    sget-object v13, Lsu0;->l:Lbh8;

    invoke-virtual {v0, v6, v12, v13}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v0}, Lhl7;->i()V

    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    :cond_b
    sget-object v5, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v10, Ldv1;->c:J

    invoke-virtual {v5, v0, v10, v11}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldv1;

    check-cast v0, Lq91;

    if-nez v0, :cond_0

    :cond_c
    :goto_5
    if-eqz v4, :cond_e

    instance-of v0, v4, Ljava/util/ArrayList;

    if-nez v0, :cond_d

    check-cast v4, Llf9;

    invoke-virtual {v1, v4, v8}, Lmu0;->G(Llf9;Z)V

    goto :goto_7

    :cond_d
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    :goto_6
    if-ge v7, v0, :cond_e

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llf9;

    invoke-virtual {v1, v2, v8}, Lmu0;->G(Llf9;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_e
    :goto_7
    if-nez v3, :cond_f

    goto/16 :goto_c

    :cond_f
    throw v3

    :cond_10
    const-string v1, "unexpected close status: "

    invoke-static {v0, v1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2;->d(Ljava/lang/Object;)V

    return v8

    :cond_11
    and-long v2, p1, v3

    invoke-virtual {v1, v2, v3}, Lmu0;->e(J)Lq91;

    if-eqz p3, :cond_20

    :cond_12
    :goto_8
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->p:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq91;

    invoke-virtual {v1}, Lmu0;->p()J

    move-result-wide v5

    invoke-virtual {v1}, Lmu0;->s()J

    move-result-wide v10

    cmp-long v7, v10, v5

    if-gtz v7, :cond_13

    goto/16 :goto_c

    :cond_13
    sget v7, Lsu0;->b:I

    int-to-long v10, v7

    div-long v12, v5, v10

    iget-wide v14, v4, Lhl7;->e:J

    cmp-long v7, v14, v12

    if-eqz v7, :cond_14

    invoke-virtual {v1, v12, v13, v4}, Lmu0;->j(JLq91;)Lq91;

    move-result-object v4

    if-nez v4, :cond_14

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq91;

    iget-wide v2, v0, Lhl7;->e:J

    cmp-long v0, v2, v12

    if-gez v0, :cond_12

    goto/16 :goto_c

    :cond_14
    invoke-virtual {v4}, Ldv1;->a()V

    rem-long v2, v5, v10

    long-to-int v0, v2

    :goto_9
    invoke-virtual {v4, v0}, Lq91;->l(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1d

    sget-object v3, Lsu0;->e:Lbh8;

    if-ne v2, v3, :cond_15

    goto :goto_a

    :cond_15
    sget-object v0, Lsu0;->d:Lbh8;

    if-ne v2, v0, :cond_16

    goto :goto_d

    :cond_16
    sget-object v0, Lsu0;->j:Lbh8;

    if-ne v2, v0, :cond_17

    goto :goto_b

    :cond_17
    sget-object v0, Lsu0;->l:Lbh8;

    if-ne v2, v0, :cond_18

    goto :goto_b

    :cond_18
    sget-object v0, Lsu0;->i:Lbh8;

    if-ne v2, v0, :cond_19

    goto :goto_b

    :cond_19
    sget-object v0, Lsu0;->h:Lbh8;

    if-ne v2, v0, :cond_1a

    goto :goto_b

    :cond_1a
    sget-object v0, Lsu0;->g:Lbh8;

    if-ne v2, v0, :cond_1b

    goto :goto_d

    :cond_1b
    sget-object v0, Lsu0;->f:Lbh8;

    if-ne v2, v0, :cond_1c

    goto :goto_b

    :cond_1c
    invoke-virtual {v1}, Lmu0;->p()J

    move-result-wide v2

    cmp-long v0, v5, v2

    if-nez v0, :cond_1e

    goto :goto_d

    :cond_1d
    :goto_a
    sget-object v3, Lsu0;->h:Lbh8;

    invoke-virtual {v4, v0, v2, v3}, Lq91;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Lmu0;->g()V

    :cond_1e
    :goto_b
    const-wide/16 v2, 0x1

    add-long/2addr v2, v5

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    move-wide v4, v5

    move-wide v6, v2

    sget-wide v2, Lmu0;->q:J

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-object/from16 v1, p0

    goto/16 :goto_8

    :cond_1f
    move-object/from16 v1, p0

    goto :goto_9

    :cond_20
    :goto_c
    return v9

    :cond_21
    :goto_d
    return v8
.end method

.method public final w()Z
    .locals 3

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lmu0;->s:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lmu0;->v(JZ)Z

    move-result p0

    return p0
.end method

.method public x()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final y()Z
    .locals 4

    invoke-virtual {p0}, Lmu0;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final z(JLq91;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lq91<",
            "TE;>;)V"
        }
    .end annotation

    :goto_0
    iget-wide v0, p3, Lhl7;->e:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    invoke-virtual {p3}, Ldv1;->c()Ldv1;

    move-result-object v0

    check-cast v0, Lq91;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p3, v0

    goto :goto_0

    :cond_1
    :goto_1
    move-object v5, p3

    :goto_2
    invoke-virtual {v5}, Lhl7;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v5}, Ldv1;->c()Ldv1;

    move-result-object p1

    check-cast p1, Lq91;

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    move-object v5, p1

    goto :goto_2

    :cond_3
    :goto_3
    sget-object p1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide p2, Lmu0;->m:J

    invoke-virtual {p1, p0, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lhl7;

    iget-wide v0, v4, Lhl7;->e:J

    iget-wide v2, v5, Lhl7;->e:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v5}, Lhl7;->j()Z

    move-result p1

    if-nez p1, :cond_5

    move-object p3, v5

    goto :goto_1

    :cond_5
    :goto_4
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lmu0;->m:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v4}, Lhl7;->f()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v4}, Ldv1;->e()V

    :cond_6
    :goto_5
    return-void

    :cond_7
    invoke-virtual {v0, v1, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v4, :cond_9

    invoke-virtual {v5}, Lhl7;->f()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v5}, Ldv1;->e()V

    :cond_8
    move-object p0, v1

    goto :goto_3

    :cond_9
    move-object p0, v1

    goto :goto_4
.end method
