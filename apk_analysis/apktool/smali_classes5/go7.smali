.class public Lgo7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic g:J

.field public static final synthetic h:J

.field public static final synthetic i:J


# instance fields
.field private volatile synthetic _availablePermits$volatile:I

.field public final b:I

.field public final c:Lfo7;

.field private volatile synthetic deqIdx$volatile:J

.field private volatile synthetic enqIdx$volatile:J

.field private volatile synthetic head$volatile:Ljava/lang/Object;

.field private volatile synthetic tail$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    const-class v1, Lgo7;

    const-string v2, "head$volatile"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lgo7;->h:J

    const-string v2, "deqIdx$volatile"

    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    sput-object v2, Lgo7;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v2, "tail$volatile"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lgo7;->i:J

    const-string v2, "enqIdx$volatile"

    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    sput-object v2, Lgo7;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v2, "_availablePermits$volatile"

    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    sput-object v3, Lgo7;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lgo7;->g:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lgo7;->b:I

    if-lez p1, :cond_1

    if-ltz p1, :cond_0

    new-instance v0, Lko7;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lko7;-><init>(JLko7;I)V

    iput-object v0, p0, Lgo7;->head$volatile:Ljava/lang/Object;

    iput-object v0, p0, Lgo7;->tail$volatile:Ljava/lang/Object;

    iput p1, p0, Lgo7;->_availablePermits$volatile:I

    new-instance p1, Lfo7;

    invoke-direct {p1, p0}, Lfo7;-><init>(Lgo7;)V

    iput-object p1, p0, Lgo7;->c:Lfo7;

    return-void

    :cond_0
    const-string p0, "The number of acquired permits should be in 0.."

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    const-string p0, "Semaphore should have at least 1 permit, but had "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 3

    :cond_0
    sget-object v0, Lgo7;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lgo7;->b:I

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_1

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    invoke-static {p1}, Lzya;->b(Le02;)Le02;

    move-result-object p1

    invoke-static {p1}, Le31;->c(Le02;)Lc31;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Lgo7;->c(Llf9;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v1

    if-gt v1, v2, :cond_2

    if-lez v1, :cond_3

    sget-object v0, Lj59;->a:Lj59;

    iget-object p0, p0, Lgo7;->c:Lfo7;

    invoke-virtual {p1, v0, p0}, Lc31;->q(Ljava/lang/Object;Ldm3;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lgo7;->c(Llf9;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :cond_4
    :goto_0
    invoke-virtual {p1}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_5

    goto :goto_1

    :cond_5
    sget-object p0, Lj59;->a:Lj59;

    :goto_1
    if-ne p0, p1, :cond_6

    return-object p0

    :cond_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lc31;->A()V

    throw p0
.end method

.method public final b()I
    .locals 3

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lgo7;->g:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final c(Llf9;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v7, Lgo7;->i:J

    invoke-virtual {v0, v1, v7, v8}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lko7;

    sget-object v0, Lgo7;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v10

    sget-object v12, Lgo7$a;->c:Lgo7$a;

    sget v0, Ljo7;->f:I

    int-to-long v2, v0

    div-long v13, v10, v2

    :goto_0
    invoke-static {v9, v13, v14, v12}, Loe0;->a(Lhl7;JLbm3;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lqc4;->d(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v15}, Lqc4;->c(Ljava/lang/Object;)Lhl7;

    move-result-object v5

    :cond_0
    :goto_1
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v7, v8}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lhl7;

    iget-wide v2, v4, Lhl7;->e:J

    iget-wide v0, v5, Lhl7;->e:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    move-object/from16 v1, p0

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lhl7;->j()Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v1, p0

    goto :goto_0

    :cond_2
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lgo7;->i:J

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Lhl7;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Ldv1;->e()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1, v7, v8}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v4, :cond_2

    invoke-virtual {v5}, Lhl7;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Ldv1;->e()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {v15}, Lqc4;->c(Ljava/lang/Object;)Lhl7;

    move-result-object v0

    check-cast v0, Lko7;

    iget-object v2, v0, Lko7;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v3, Ljo7;->f:I

    int-to-long v3, v3

    rem-long/2addr v10, v3

    long-to-int v3, v10

    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v6, v0, v3}, Llf9;->a(Lhl7;I)V

    return v5

    :cond_6
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    sget-object v4, Ljo7;->b:Lbh8;

    sget-object v7, Ljo7;->c:Lbh8;

    :cond_7
    invoke-virtual {v2, v3, v4, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_a

    instance-of v0, v6, La31;

    if-eqz v0, :cond_8

    move-object v0, v6

    check-cast v0, La31;

    sget-object v2, Lj59;->a:Lj59;

    iget-object v1, v1, Lgo7;->c:Lfo7;

    invoke-interface {v0, v2, v1}, La31;->q(Ljava/lang/Object;Ldm3;)V

    return v5

    :cond_8
    instance-of v0, v6, Lbm7;

    if-eqz v0, :cond_9

    move-object v0, v6

    check-cast v0, Lbm7;

    sget-object v1, Lj59;->a:Lj59;

    invoke-interface {v0, v1}, Lbm7;->d(Ljava/lang/Object;)V

    return v5

    :cond_9
    const-string v0, "unexpected: "

    invoke-static {v6, v0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v8

    :cond_a
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v4, :cond_7

    return v8
.end method

.method public final release()V
    .locals 15

    :cond_0
    sget-object v0, Lgo7;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v0

    iget v6, p0, Lgo7;->b:I

    if-ge v0, v6, :cond_11

    if-ltz v0, :cond_1

    goto/16 :goto_7

    :cond_1
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v6, Lgo7;->h:J

    invoke-virtual {v0, p0, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lko7;

    sget-object v0, Lgo7;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v9

    sget v0, Ljo7;->f:I

    int-to-long v2, v0

    div-long v11, v9, v2

    sget-object v13, Lho7;->c:Lho7;

    :goto_0
    invoke-static {v8, v11, v12, v13}, Loe0;->a(Lhl7;JLbm3;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lqc4;->d(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v14}, Lqc4;->c(Ljava/lang/Object;)Lhl7;

    move-result-object v5

    :cond_2
    :goto_1
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lhl7;

    iget-wide v2, v4, Lhl7;->e:J

    iget-wide v0, v5, Lhl7;->e:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lhl7;->j()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lgo7;->h:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lhl7;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Ldv1;->e()V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p0, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v4, :cond_4

    invoke-virtual {v5}, Lhl7;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Ldv1;->e()V

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {v14}, Lqc4;->c(Ljava/lang/Object;)Lhl7;

    move-result-object v0

    check-cast v0, Lko7;

    iget-object v2, v0, Lko7;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ldv1;->a()V

    iget-wide v3, v0, Lhl7;->e:J

    cmp-long v0, v3, v11

    const/4 v3, 0x0

    if-lez v0, :cond_7

    goto :goto_6

    :cond_7
    sget v0, Ljo7;->f:I

    int-to-long v4, v0

    rem-long/2addr v9, v4

    long-to-int v0, v9

    sget-object v4, Ljo7;->b:Lbh8;

    invoke-virtual {v2, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_c

    sget v4, Ljo7;->a:I

    move v6, v3

    :goto_3
    if-ge v6, v4, :cond_9

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljo7;->c:Lbh8;

    if-ne v7, v8, :cond_8

    :goto_4
    move v3, v5

    goto :goto_6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    sget-object v6, Ljo7;->b:Lbh8;

    sget-object v7, Ljo7;->d:Lbh8;

    :cond_a
    invoke-virtual {v2, v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v3, v5

    goto :goto_5

    :cond_b
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v6, :cond_a

    :goto_5
    xor-int/2addr v3, v5

    goto :goto_6

    :cond_c
    sget-object v0, Ljo7;->e:Lbh8;

    if-ne v4, v0, :cond_d

    goto :goto_6

    :cond_d
    instance-of v0, v4, La31;

    if-eqz v0, :cond_e

    check-cast v4, La31;

    sget-object v0, Lj59;->a:Lj59;

    iget-object v2, p0, Lgo7;->c:Lfo7;

    invoke-interface {v4, v0, v2}, La31;->k(Ljava/lang/Object;Ldm3;)Lbh8;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v4, v0}, La31;->j(Ljava/lang/Object;)V

    goto :goto_4

    :cond_e
    instance-of v0, v4, Lbm7;

    if-eqz v0, :cond_10

    check-cast v4, Lbm7;

    sget-object v0, Lj59;->a:Lj59;

    invoke-interface {v4, p0, v0}, Lbm7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :cond_f
    :goto_6
    if-eqz v3, :cond_0

    :goto_7
    return-void

    :cond_10
    const-string v0, "unexpected: "

    invoke-static {v4, v0}, Lad2;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_11
    :goto_8
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lgo7;->g:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    iget v5, p0, Lgo7;->b:I

    if-le v4, v5, :cond_12

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_8

    :cond_12
    const-string v0, "The number of released permits cannot be greater than "

    invoke-static {v6, v0}, Lud;->e(ILjava/lang/String;)V

    return-void
.end method
