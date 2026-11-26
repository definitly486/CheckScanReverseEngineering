.class public final Lch5;
.super Lgo7;
.source "SourceFile"

# interfaces
.implements Lyg5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch5$a;,
        Lch5$b;
    }
.end annotation


# static fields
.field public static final synthetic k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic l:J


# instance fields
.field public final j:Lzg5;

.field private volatile synthetic owner$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lch5;

    const-class v1, Ljava/lang/Object;

    const-string v2, "owner$volatile"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lch5;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lch5;->l:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgo7;-><init>(I)V

    sget-object v0, Ldh5;->b:Lbh8;

    iput-object v0, p0, Lch5;->owner$volatile:Ljava/lang/Object;

    new-instance v0, Lzg5;

    invoke-direct {v0, p0}, Lzg5;-><init>(Lch5;)V

    iput-object v0, p0, Lch5;->j:Lzg5;

    return-void
.end method


# virtual methods
.method public final getOnLock()Lxl7;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxl7<",
            "Ljava/lang/Object;",
            "Lyg5;",
            ">;"
        }
    .end annotation

    new-instance v0, Lq82;

    sget-object v1, Lch5$c;->c:Lch5$c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lv39;->c(ILjava/lang/Object;)V

    sget-object v3, Lch5$d;->c:Lch5$d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lv39;->c(ILjava/lang/Object;)V

    iget-object v2, p0, Lch5;->j:Lzg5;

    invoke-direct {v0, p0, v1, v3, v2}, Lq82;-><init>(Ljava/lang/Object;Ldm3;Ldm3;Lzg5;)V

    return-object v0
.end method

.method public final holdsLock(Ljava/lang/Object;)Z
    .locals 5

    :cond_0
    invoke-virtual {p0}, Lch5;->isLocked()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v3, Lch5;->l:J

    invoke-virtual {v0, p0, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Ldh5;->b:Lbh8;

    if-eq v0, v3, :cond_0

    if-ne v0, p1, :cond_2

    move p0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    :goto_0
    if-ne p0, v1, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public final isLocked()Z
    .locals 0

    invoke-virtual {p0}, Lgo7;->b()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lch5;->tryLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    invoke-static {p2}, Lzya;->b(Le02;)Le02;

    move-result-object p2

    invoke-static {p2}, Le31;->c(Le02;)Lc31;

    move-result-object p2

    :try_start_0
    new-instance v0, Lch5$a;

    invoke-direct {v0, p0, p2, p1}, Lch5$a;-><init>(Lch5;Lc31;Ljava/lang/Object;)V

    :cond_1
    sget-object p1, Lgo7;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result p1

    iget v1, p0, Lgo7;->b:I

    if-gt p1, v1, :cond_1

    if-lez p1, :cond_2

    sget-object p1, Lj59;->a:Lj59;

    iget-object p0, p0, Lgo7;->c:Lfo7;

    invoke-virtual {v0, p1, p0}, Lch5$a;->q(Ljava/lang/Object;Ldm3;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lgo7;->c(Llf9;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p2}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    :goto_1
    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Lc31;->A()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mutex@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcd2;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[isLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lch5;->isLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lch5;->l:J

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Lvg;->d(Ljava/lang/StringBuilder;Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tryLock(Ljava/lang/Object;)Z
    .locals 11

    :goto_0
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lgo7;->g:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    iget v1, p0, Lgo7;->b:I

    if-le v4, v1, :cond_3

    :goto_1
    sget-object v5, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v7, Lgo7;->g:J

    invoke-virtual {v5, p0, v7, v8}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v9

    iget v10, p0, Lgo7;->b:I

    if-le v9, v10, :cond_1

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p0

    move-object v1, v6

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    move-object p0, v1

    goto :goto_1

    :cond_1
    move-object v1, p0

    :cond_2
    :goto_2
    move-object p0, v1

    goto :goto_0

    :cond_3
    move-object v1, p0

    sget-wide v6, Lch5;->l:J

    const/4 p0, 0x1

    if-gtz v4, :cond_9

    const/4 v5, 0x0

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lch5;->isLocked()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_5

    move v0, v5

    goto :goto_3

    :cond_5
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Ldh5;->b:Lbh8;

    if-eq v0, v3, :cond_4

    if-ne v0, p1, :cond_6

    move v0, p0

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    if-eq v0, p0, :cond_8

    if-eq v0, v2, :cond_7

    goto :goto_2

    :cond_7
    :goto_4
    return v5

    :cond_8
    const-string p0, "This mutex is already locked by the specified owner: "

    invoke-static {p1, p0}, Lad2;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v5

    :cond_9
    add-int/lit8 v5, v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1, v6, v7, p1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return p0
.end method

.method public final unlock(Ljava/lang/Object;)V
    .locals 9

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lch5;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lch5;->l:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ldh5;->b:Lbh8;

    if-eq v7, v8, :cond_0

    if-eq v7, p1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, ", but "

    const-string v0, " is expected"

    const-string v1, "This mutex is locked by "

    invoke-static {v1, v7, p0, p1, v0}, Lug;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_1
    sget-object v3, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v5, Lch5;->l:J

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v4}, Lgo7;->release()V

    return-void

    :cond_3
    sget-object p0, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v7, :cond_4

    move-object p0, v4

    goto :goto_0

    :cond_4
    move-object p0, v4

    goto :goto_1

    :cond_5
    const-string p0, "This mutex is not locked"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method
