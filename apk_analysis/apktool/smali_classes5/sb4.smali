.class public Lsb4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb4;
.implements Lm36;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsb4$a;,
        Lsb4$b;,
        Lsb4$c;,
        Lsb4$d;,
        Lsb4$e;
    }
.end annotation

.annotation runtime Lul2;
.end annotation


# static fields
.field public static final synthetic b:J

.field public static final synthetic c:J

.field public static final synthetic d:I


# instance fields
.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    const-class v1, Lsb4;

    const-string v2, "_state$volatile"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lsb4;->c:J

    const-string v2, "_parentHandle$volatile"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lsb4;->b:J

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lvp2;->i:Lex2;

    goto :goto_0

    :cond_0
    sget-object p1, Lvp2;->h:Lex2;

    :goto_0
    iput-object p1, p0, Lsb4;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method public static Y(Lpu4;)Lhi1;
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lpu4;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpu4;->h()Lpu4;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpu4;->g()Lpu4;

    move-result-object p0

    invoke-virtual {p0}, Lpu4;->i()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lhi1;

    if-eqz v0, :cond_1

    check-cast p0, Lhi1;

    return-object p0

    :cond_1
    instance-of v0, p0, Lbo5;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static h0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lsb4$c;

    if-eqz v0, :cond_1

    check-cast p0, Lsb4$c;

    invoke-virtual {p0}, Lsb4$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Cancelling"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lsb4$c;->e()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Completing"

    return-object p0

    :cond_1
    instance-of v0, p0, La44;

    if-eqz v0, :cond_4

    check-cast p0, La44;

    invoke-interface {p0}, La44;->isActive()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const-string p0, "Active"

    return-object p0

    :cond_3
    const-string p0, "New"

    return-object p0

    :cond_4
    instance-of p0, p0, Lyq1;

    if-eqz p0, :cond_5

    const-string p0, "Cancelled"

    return-object p0

    :cond_5
    const-string p0, "Completed"

    return-object p0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    const-string p0, "Job was cancelled"

    return-object p0
.end method

.method public B(Ljava/lang/Throwable;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lsb4;->w(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lsb4;->I()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final C(La44;Ljava/lang/Object;)V
    .locals 6

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lsb4;->b:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgi1;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lhp2;->dispose()V

    sget-object v3, Lgo5;->b:Lgo5;

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    instance-of v0, p2, Lyq1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lyq1;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, Lyq1;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    instance-of v0, p1, Lrb4;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_3

    :try_start_0
    move-object v0, p1

    check-cast v0, Lrb4;

    invoke-virtual {v0, p2}, Lrb4;->l(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lsb4;->N(Lkotlinx/coroutines/CompletionHandlerException;)V

    goto :goto_4

    :cond_3
    invoke-interface {p1}, La44;->b()Lbo5;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Lbr4;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Lbr4;-><init>(I)V

    invoke-virtual {p1, v0, v4}, Lpu4;->c(Lpu4;I)Z

    invoke-virtual {p1}, Lpu4;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lpu4;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    instance-of v4, v0, Lrb4;

    if-eqz v4, :cond_5

    :try_start_1
    move-object v4, v0

    check-cast v4, Lrb4;

    invoke-virtual {v4, p2}, Lrb4;->l(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    if-eqz v1, :cond_4

    invoke-static {v1, v4}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v4, Lj59;->a:Lj59;

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lpu4;->g()Lpu4;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lsb4;->N(Lkotlinx/coroutines/CompletionHandlerException;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final D(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_1

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lsb4;->A()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lsb4;)V

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lm36;

    invoke-interface {p1}, Lm36;->E()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method

.method public final E()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lsb4$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lsb4$c;

    invoke-virtual {v1}, Lsb4$c;->c()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lyq1;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lyq1;

    iget-object v1, v1, Lyq1;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    instance-of v1, v0, La44;

    if-nez v1, :cond_4

    move-object v1, v2

    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {v0}, Lsb4;->h0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parent job is "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lsb4;)V

    :cond_3
    return-object v2

    :cond_4
    const-string p0, "Cannot be cancelling child in this state: "

    invoke-static {v0, p0}, Lad2;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2
.end method

.method public final F(Lsb4$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lyq1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyq1;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lyq1;->a:Ljava/lang/Throwable;

    :cond_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lsb4$c;->d()Z

    invoke-virtual {p1, v1}, Lsb4$c;->f(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lsb4;->H(Lsb4$c;Ljava/util/ArrayList;)Ljava/lang/Throwable;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v4}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eq v4, v2, :cond_3

    if-eq v4, v2, :cond_3

    instance-of v5, v4, Ljava/util/concurrent/CancellationException;

    if-nez v5, :cond_3

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2, v4}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v6, p1

    goto :goto_6

    :cond_4
    :goto_2
    monitor-exit p1

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    if-ne v2, v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p2, Lyq1;

    const/4 v0, 0x0

    invoke-direct {p2, v2, v0}, Lyq1;-><init>(Ljava/lang/Throwable;Z)V

    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {p0, v2}, Lsb4;->z(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, v2}, Lsb4;->M(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p2

    check-cast v2, Lyq1;

    sget-object v1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v3, Lyq1;->b:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    :cond_8
    invoke-virtual {p0, p2}, Lsb4;->b0(Ljava/lang/Object;)V

    instance-of v0, p2, La44;

    if-eqz v0, :cond_9

    new-instance v0, Le44;

    move-object v1, p2

    check-cast v1, La44;

    invoke-direct {v0, v1}, Le44;-><init>(La44;)V

    move-object v7, v0

    goto :goto_4

    :cond_9
    move-object v7, p2

    :goto_4
    sget-object v2, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v4, Lsb4;->c:J

    move-object v3, p0

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v6, :cond_b

    :goto_5
    invoke-virtual {v3, v6, p2}, Lsb4;->C(La44;Ljava/lang/Object;)V

    return-object p2

    :cond_b
    move-object p0, v3

    move-object p1, v6

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v6, p1

    move-object p0, v0

    :goto_6
    monitor-exit v6

    throw p0
.end method

.method public final G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, La44;

    if-nez v0, :cond_1

    instance-of v0, p0, Lyq1;

    if-nez v0, :cond_0

    invoke-static {p0}, Lvp2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lyq1;

    iget-object p0, p0, Lyq1;->a:Ljava/lang/Throwable;

    throw p0

    :cond_1
    const-string p0, "This job has not completed yet"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final H(Lsb4$c;Ljava/util/ArrayList;)Ljava/lang/Throwable;
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lsb4$c;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lsb4;->A()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lsb4;)V

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    instance-of p1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz p1, :cond_7

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/Throwable;

    if-eq v0, p0, :cond_5

    instance-of v0, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v0, :cond_5

    move-object v1, p2

    :cond_6
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    return-object p0
.end method

.method public I()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public J()Z
    .locals 0

    instance-of p0, p0, Lyp1;

    return p0
.end method

.method public final K(La44;)Lbo5;
    .locals 2

    invoke-interface {p1}, La44;->b()Lbo5;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lex2;

    if-eqz v0, :cond_0

    new-instance p0, Lbo5;

    invoke-direct {p0}, Lbo5;-><init>()V

    return-object p0

    :cond_0
    instance-of v0, p1, Lrb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lrb4;

    invoke-virtual {p0, p1}, Lsb4;->f0(Lrb4;)V

    return-object v1

    :cond_1
    const-string p0, "State should have list: "

    invoke-static {p1, p0}, Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final L()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lsb4;->c:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public M(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public N(Lkotlinx/coroutines/CompletionHandlerException;)V
    .locals 0

    throw p1
.end method

.method public final O(Lmb4;)V
    .locals 5

    sget-wide v0, Lsb4;->b:J

    sget-object v2, Lgo5;->b:Lgo5;

    if-nez p1, :cond_0

    sget-object p1, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p1, p0, v0, v1, v2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lmb4;->start()Z

    invoke-interface {p1, p0}, Lmb4;->V(Lsb4;)Lgi1;

    move-result-object p1

    sget-object v3, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v3, p0, v0, v1, p1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lsb4;->P()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Lhp2;->dispose()V

    invoke-virtual {v3, p0, v0, v1, v2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final P()Z
    .locals 0

    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, La44;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final R(ZLrb4;)Lhp2;
    .locals 6

    iput-object p0, p2, Lrb4;->e:Lsb4;

    :goto_0
    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object v4

    instance-of v0, v4, Lex2;

    if-eqz v0, :cond_3

    move-object v0, v4

    check-cast v0, Lex2;

    iget-boolean v1, v0, Lex2;->b:Z

    if-eqz v1, :cond_2

    :goto_1
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lsb4;->c:J

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v4, :cond_1

    goto :goto_5

    :cond_1
    move-object p0, v1

    move-object p2, v5

    goto :goto_1

    :cond_2
    move-object v1, p0

    move-object v5, p2

    invoke-virtual {v1, v0}, Lsb4;->d0(Lex2;)V

    goto :goto_5

    :cond_3
    move-object v1, p0

    move-object v5, p2

    instance-of p0, v4, La44;

    sget-object p2, Lgo5;->b:Lgo5;

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    move-object p0, v4

    check-cast p0, La44;

    invoke-interface {p0}, La44;->b()Lbo5;

    move-result-object v2

    if-nez v2, :cond_4

    check-cast v4, Lrb4;

    invoke-virtual {v1, v4}, Lsb4;->f0(Lrb4;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v5}, Lrb4;->k()Z

    move-result v3

    if-eqz v3, :cond_8

    instance-of v3, p0, Lsb4$c;

    if-eqz v3, :cond_5

    check-cast p0, Lsb4$c;

    goto :goto_2

    :cond_5
    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lsb4$c;->c()Ljava/lang/Throwable;

    move-result-object v0

    :cond_6
    if-nez v0, :cond_7

    const/4 p0, 0x5

    invoke-virtual {v2, v5, p0}, Lpu4;->c(Lpu4;I)Z

    move-result p0

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_d

    invoke-virtual {v5, v0}, Lrb4;->l(Ljava/lang/Throwable;)V

    return-object p2

    :cond_8
    const/4 p0, 0x1

    invoke-virtual {v2, v5, p0}, Lpu4;->c(Lpu4;I)Z

    move-result p0

    :goto_3
    if-eqz p0, :cond_9

    :goto_4
    return-object v5

    :cond_9
    :goto_5
    move-object p0, v1

    move-object p2, v5

    goto :goto_0

    :cond_a
    if-eqz p1, :cond_d

    invoke-virtual {v1}, Lsb4;->L()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lyq1;

    if-eqz p1, :cond_b

    check-cast p0, Lyq1;

    goto :goto_6

    :cond_b
    move-object p0, v0

    :goto_6
    if-eqz p0, :cond_c

    iget-object v0, p0, Lyq1;->a:Ljava/lang/Throwable;

    :cond_c
    invoke-virtual {v5, v0}, Lrb4;->l(Ljava/lang/Throwable;)V

    :cond_d
    return-object p2
.end method

.method public S()Z
    .locals 0

    instance-of p0, p0, Lek0;

    return p0
.end method

.method public final T(Ljava/lang/Object;)Z
    .locals 3

    :cond_0
    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lsb4;->i0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lvp2;->c:Lbh8;

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object v1, Lvp2;->d:Lbh8;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    sget-object v1, Lvp2;->e:Lbh8;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lsb4;->s(Ljava/lang/Object;)V

    return v2
.end method

.method public final V(Lsb4;)Lgi1;
    .locals 6

    new-instance v5, Lhi1;

    invoke-direct {v5, p1}, Lhi1;-><init>(Lsb4;)V

    iput-object p0, v5, Lrb4;->e:Lsb4;

    :goto_0
    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object v4

    instance-of p1, v4, Lex2;

    if-eqz p1, :cond_3

    move-object p1, v4

    check-cast p1, Lex2;

    iget-boolean v0, p1, Lex2;->b:Z

    if-eqz v0, :cond_2

    :goto_1
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lsb4;->c:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v4, :cond_1

    goto :goto_2

    :cond_1
    move-object p0, v1

    goto :goto_1

    :cond_2
    move-object v1, p0

    invoke-virtual {v1, p1}, Lsb4;->d0(Lex2;)V

    goto :goto_2

    :cond_3
    move-object v1, p0

    instance-of p0, v4, La44;

    sget-object p1, Lgo5;->b:Lgo5;

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    move-object p0, v4

    check-cast p0, La44;

    invoke-interface {p0}, La44;->b()Lbo5;

    move-result-object p0

    if-nez p0, :cond_4

    check-cast v4, Lrb4;

    invoke-virtual {v1, v4}, Lsb4;->f0(Lrb4;)V

    :goto_2
    move-object p0, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x7

    invoke-virtual {p0, v5, v2}, Lpu4;->c(Lpu4;I)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x3

    invoke-virtual {p0, v5, v2}, Lpu4;->c(Lpu4;I)Z

    move-result p0

    invoke-virtual {v1}, Lsb4;->L()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lsb4$c;

    if-eqz v2, :cond_6

    check-cast v1, Lsb4$c;

    invoke-virtual {v1}, Lsb4$c;->c()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_4

    :cond_6
    instance-of v2, v1, Lyq1;

    if-eqz v2, :cond_7

    check-cast v1, Lyq1;

    goto :goto_3

    :cond_7
    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_8

    iget-object v0, v1, Lyq1;->a:Ljava/lang/Throwable;

    :cond_8
    :goto_4
    invoke-virtual {v5, v0}, Lhi1;->l(Ljava/lang/Throwable;)V

    if-eqz p0, :cond_9

    :goto_5
    return-object v5

    :cond_9
    return-object p1

    :cond_a
    invoke-virtual {v1}, Lsb4;->L()Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lyq1;

    if-eqz v1, :cond_b

    check-cast p0, Lyq1;

    goto :goto_6

    :cond_b
    move-object p0, v0

    :goto_6
    if-eqz p0, :cond_c

    iget-object v0, p0, Lyq1;->a:Ljava/lang/Throwable;

    :cond_c
    invoke-virtual {v5, v0}, Lhi1;->l(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final W(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :cond_0
    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lsb4;->i0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lvp2;->c:Lbh8;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    instance-of v1, p1, Lyq1;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lyq1;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p1, Lyq1;->a:Ljava/lang/Throwable;

    :cond_2
    invoke-direct {v0, p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    sget-object v1, Lvp2;->e:Lbh8;

    if-eq v0, v1, :cond_0

    return-object v0
.end method

.method public X()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(ZZLpb4;)Lhp2;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lha4;

    invoke-direct {p1, p3}, Lha4;-><init>(Lpb4;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lia4;

    invoke-direct {p1, p3}, Lia4;-><init>(Lnl3;)V

    :goto_0
    invoke-virtual {p0, p2, p1}, Lsb4;->R(ZLrb4;)Lhp2;

    move-result-object p0

    return-object p0
.end method

.method public final a0(Lbo5;Ljava/lang/Throwable;)V
    .locals 5

    new-instance v0, Lbr4;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lbr4;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lpu4;->c(Lpu4;I)Z

    invoke-virtual {p1}, Lpu4;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lpu4;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Lrb4;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lrb4;

    invoke-virtual {v2}, Lrb4;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    move-object v2, v0

    check-cast v2, Lrb4;

    invoke-virtual {v2, p2}, Lrb4;->l(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    invoke-static {v1, v2}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in completion handler "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lj59;->a:Lj59;

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lpu4;->g()Lpu4;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lsb4;->N(Lkotlinx/coroutines/CompletionHandlerException;)V

    :cond_3
    invoke-virtual {p0, p2}, Lsb4;->z(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public b0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c0()V
    .locals 0

    return-void
.end method

.method public cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lsb4;->A()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lsb4;)V

    :cond_0
    invoke-virtual {p0, p1}, Lsb4;->x(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final d0(Lex2;)V
    .locals 8

    new-instance v0, Lbo5;

    invoke-direct {v0}, Lbo5;-><init>()V

    iget-boolean v1, p1, Lex2;->b:Z

    if-eqz v1, :cond_0

    move-object v7, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lz34;

    invoke-direct {v1, v0}, Lz34;-><init>(Lbo5;)V

    move-object v7, v1

    :goto_0
    sget-object v2, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v4, Lsb4;->c:J

    move-object v3, p0

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v6, :cond_2

    :goto_1
    return-void

    :cond_2
    move-object p0, v3

    move-object p1, v6

    goto :goto_0
.end method

.method public final e0(Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, La44;

    if-nez v1, :cond_1

    invoke-interface {p1}, Le02;->getContext()Lo22;

    move-result-object p0

    invoke-static {p0}, Lqb4;->e(Lo22;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Lsb4;->g0(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Lc31;

    invoke-static {p1}, Lzya;->b(Le02;)Le02;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v0}, Lc31;->u()V

    new-instance p1, La67;

    invoke-direct {p1, v0}, La67;-><init>(Lc31;)V

    invoke-static {p0, p1}, Lqb4;->g(Lmb4;Lrb4;)Lhp2;

    move-result-object p0

    new-instance p1, Lkp2;

    invoke-direct {p1, p0}, Lkp2;-><init>(Lhp2;)V

    invoke-virtual {v0, p1}, Lc31;->w(Lno5;)V

    invoke-virtual {v0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    :goto_0
    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public f(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsb4;->T(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f0(Lrb4;)V
    .locals 14

    new-instance v5, Lbo5;

    invoke-direct {v5}, Lbo5;-><init>()V

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lpu4;->c:J

    invoke-virtual {v0, v5, v1, v2, p1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    sget-wide v6, Lpu4;->b:J

    invoke-virtual {v0, v5, v6, v7, p1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lpu4;->f()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    move-object v1, p1

    goto :goto_2

    :cond_0
    :goto_1
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lpu4;->b:J

    move-object v4, p1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v5, v1}, Lpu4;->e(Lpu4;)V

    :goto_2
    invoke-virtual {v1}, Lpu4;->g()Lpu4;

    move-result-object v13

    :goto_3
    sget-object v8, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v10, Lsb4;->c:J

    move-object v9, p0

    move-object v12, v1

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v8, v9, v10, v11}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v1, :cond_2

    :goto_4
    return-void

    :cond_2
    move-object p0, v9

    goto :goto_3

    :cond_3
    move-object v9, p0

    invoke-virtual {v0, v1, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    move-object p1, v1

    if-eq p0, v1, :cond_4

    move-object p0, v9

    goto :goto_0

    :cond_4
    move-object p0, v9

    goto :goto_1
.end method

.method public final fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lbm3<",
            "-TR;-",
            "Lo22$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-interface {p2, p1, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lnl3;)Lhp2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Throwable;",
            "Lj59;",
            ">;)",
            "Lhp2;"
        }
    .end annotation

    new-instance v0, Lia4;

    invoke-direct {v0, p1}, Lia4;-><init>(Lnl3;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lsb4;->R(ZLrb4;)Lhp2;

    move-result-object p0

    return-object p0
.end method

.method public final g0(Ljava/lang/Object;)I
    .locals 9

    instance-of v0, p1, Lex2;

    sget-wide v6, Lsb4;->c:J

    const/4 v8, 0x1

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lex2;

    iget-boolean v0, v0, Lex2;->b:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v5, Lvp2;->i:Lex2;

    :cond_1
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lsb4;->c:J

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lsb4;->c0()V

    return v8

    :cond_2
    invoke-virtual {v0, p0, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lz34;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lz34;

    iget-object v5, v0, Lz34;->b:Lbo5;

    :cond_4
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lsb4;->c:J

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lsb4;->c0()V

    return v8

    :cond_5
    invoke-virtual {v0, p0, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_4

    :goto_0
    const/4 v0, -0x1

    return v0

    :cond_6
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public final get(Lo22$b;)Lo22$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo22$a;",
            ">(",
            "Lo22$b<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lo22$a$a;->b(Lo22$a;Lo22$b;)Lo22$a;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Lo22$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo22$b<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lmb4$a;->b:Lmb4$a;

    return-object p0
.end method

.method public final i0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, La44;

    if-nez v0, :cond_0

    sget-object p0, Lvp2;->c:Lbh8;

    return-object p0

    :cond_0
    instance-of v0, p1, Lex2;

    if-nez v0, :cond_2

    instance-of v0, p1, Lrb4;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    goto :goto_2

    :cond_2
    :goto_0
    instance-of v0, p1, Lhi1;

    if-nez v0, :cond_1

    instance-of v0, p2, Lyq1;

    if-nez v0, :cond_1

    move-object v5, p1

    check-cast v5, La44;

    instance-of p1, p2, La44;

    if-eqz p1, :cond_3

    new-instance p1, Le44;

    move-object v0, p2

    check-cast v0, La44;

    invoke-direct {p1, v0}, Le44;-><init>(La44;)V

    move-object v6, p1

    goto :goto_1

    :cond_3
    move-object v6, p2

    :goto_1
    sget-object v1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v3, Lsb4;->c:J

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v2, p2}, Lsb4;->b0(Ljava/lang/Object;)V

    invoke-virtual {v2, v5, p2}, Lsb4;->C(La44;Ljava/lang/Object;)V

    return-object p2

    :cond_4
    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v5, :cond_5

    sget-object p0, Lvp2;->e:Lbh8;

    return-object p0

    :cond_5
    move-object p0, v2

    goto :goto_1

    :goto_2
    move-object v11, p1

    check-cast v11, La44;

    invoke-virtual {v2, v11}, Lsb4;->K(La44;)Lbo5;

    move-result-object p0

    if-nez p0, :cond_6

    sget-object p0, Lvp2;->e:Lbh8;

    return-object p0

    :cond_6
    instance-of p1, v11, Lsb4$c;

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    move-object p1, v11

    check-cast p1, Lsb4$c;

    goto :goto_3

    :cond_7
    move-object p1, v0

    :goto_3
    if-nez p1, :cond_8

    new-instance p1, Lsb4$c;

    invoke-direct {p1, p0, v0}, Lsb4$c;-><init>(Lbo5;Ljava/lang/Throwable;)V

    :cond_8
    move-object v12, p1

    new-instance p1, Lr07;

    invoke-direct {p1}, Lr07;-><init>()V

    monitor-enter v12

    :try_start_0
    invoke-virtual {v12}, Lsb4$c;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object p0, Lvp2;->c:Lbh8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :cond_9
    :try_start_1
    sget-object v1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v3, Lsb4$c;->d:J

    const/4 v5, 0x1

    invoke-virtual {v1, v12, v3, v4, v5}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    if-eq v12, v11, :cond_c

    :cond_a
    sget-object v7, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v9, Lsb4;->c:J

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    move-object v2, v8

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v11, :cond_a

    sget-object p0, Lvp2;->e:Lbh8;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v12

    return-object p0

    :cond_c
    :goto_4
    :try_start_2
    invoke-virtual {v12}, Lsb4$c;->d()Z

    move-result v1

    instance-of v3, p2, Lyq1;

    if-eqz v3, :cond_d

    move-object v3, p2

    check-cast v3, Lyq1;

    goto :goto_5

    :cond_d
    move-object v3, v0

    :goto_5
    if-eqz v3, :cond_e

    iget-object v3, v3, Lyq1;->a:Ljava/lang/Throwable;

    invoke-virtual {v12, v3}, Lsb4$c;->a(Ljava/lang/Throwable;)V

    :cond_e
    invoke-virtual {v12}, Lsb4$c;->c()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v1, :cond_f

    move-object v0, v3

    :cond_f
    iput-object v0, p1, Lr07;->b:Ljava/lang/Object;

    sget-object p1, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v12

    if-eqz v0, :cond_10

    invoke-virtual {v2, p0, v0}, Lsb4;->a0(Lbo5;Ljava/lang/Throwable;)V

    :cond_10
    invoke-static {p0}, Lsb4;->Y(Lpu4;)Lhi1;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {v2, v12, p1, p2}, Lsb4;->j0(Lsb4$c;Lhi1;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p0, Lvp2;->d:Lbh8;

    return-object p0

    :cond_11
    new-instance p1, Lbr4;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lbr4;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lpu4;->c(Lpu4;I)Z

    invoke-static {p0}, Lsb4;->Y(Lpu4;)Lhi1;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {v2, v12, p0, p2}, Lsb4;->j0(Lsb4$c;Lhi1;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Lvp2;->d:Lbh8;

    return-object p0

    :cond_12
    invoke-virtual {v2, v12, p2}, Lsb4;->F(Lsb4$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_6
    monitor-exit v12

    throw p0
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, La44;

    if-eqz v0, :cond_0

    check-cast p0, La44;

    invoke-interface {p0}, La44;->isActive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isCancelled()Z
    .locals 1

    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lyq1;

    if-nez v0, :cond_1

    instance-of v0, p0, Lsb4$c;

    if-eqz v0, :cond_0

    check-cast p0, Lsb4$c;

    invoke-virtual {p0}, Lsb4$c;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final j0(Lsb4$c;Lhi1;Ljava/lang/Object;)Z
    .locals 4

    :cond_0
    iget-object v0, p2, Lhi1;->f:Lsb4;

    new-instance v1, Lsb4$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lsb4$b;-><init>(Lsb4;Lsb4$c;Lhi1;Ljava/lang/Object;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, v1}, Lsb4;->R(ZLrb4;)Lhp2;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v3, Lpb4;

    invoke-direct {v3, v1}, Lpb4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v2, v3}, Lsb4;->a(ZZLpb4;)Lhp2;

    move-result-object v0

    :goto_0
    sget-object v1, Lgo5;->b:Lgo5;

    if-eq v0, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-static {p2}, Lsb4;->Y(Lpu4;)Lhi1;

    move-result-object p2

    if-nez p2, :cond_0

    return v2
.end method

.method public m()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lsb4;->G()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final minusKey(Lo22$b;)Lo22;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22$b<",
            "*>;)",
            "Lo22;"
        }
    .end annotation

    invoke-static {p0, p1}, Lo22$a$a;->c(Lo22$a;Lo22$b;)Lo22;

    move-result-object p0

    return-object p0
.end method

.method public final p()Lvl7;
    .locals 3

    new-instance v0, Lvl7;

    sget-object v1, Lsb4$g;->c:Lsb4$g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lv39;->c(ILjava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lvl7;-><init>(Ljava/lang/Object;Ldm3;)V

    return-object v0
.end method

.method public final plus(Lo22;)Lo22;
    .locals 0

    invoke-static {p0, p1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p0

    return-object p0
.end method

.method public s(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final start()Z
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsb4;->g0(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public t(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lsb4;->s(Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsb4;->X()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lsb4;->h0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcd2;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, La44;

    if-nez v1, :cond_2

    instance-of p0, v0, Lyq1;

    if-nez p0, :cond_1

    invoke-static {v0}, Lvp2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast v0, Lyq1;

    iget-object p0, v0, Lyq1;->a:Ljava/lang/Throwable;

    throw p0

    :cond_2
    invoke-virtual {p0, v0}, Lsb4;->g0(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Lsb4$a;

    invoke-static {p1}, Lzya;->b(Le02;)Le02;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lsb4$a;-><init>(Le02;Lsb4;)V

    invoke-virtual {v0}, Lc31;->u()V

    new-instance p1, Lz57;

    invoke-direct {p1, v0}, Lz57;-><init>(Lsb4$a;)V

    invoke-static {p0, p1}, Lqb4;->g(Lmb4;Lrb4;)Lhp2;

    move-result-object p0

    new-instance p1, Lkp2;

    invoke-direct {p1, p0}, Lkp2;-><init>(Lhp2;)V

    invoke-virtual {v0, p1}, Lc31;->w(Lno5;)V

    invoke-virtual {v0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method

.method public final v()Lzo7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzo7<",
            "Lmb4;",
            ">;"
        }
    .end annotation

    new-instance v0, Lsb4$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lsb4$f;-><init>(Le02;Lsb4;)V

    new-instance p0, Lcp7;

    invoke-direct {p0, v0}, Lcp7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public final w(Ljava/lang/Object;)Z
    .locals 12

    sget-object v0, Lvp2;->c:Lbh8;

    invoke-virtual {p0}, Lsb4;->J()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, La44;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lsb4$c;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lsb4$c;

    invoke-virtual {v1}, Lsb4$c;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lyq1;

    invoke-virtual {p0, p1}, Lsb4;->D(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lyq1;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v0, v1}, Lsb4;->i0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lvp2;->e:Lbh8;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lvp2;->c:Lbh8;

    :goto_1
    sget-object v1, Lvp2;->d:Lbh8;

    if-ne v0, v1, :cond_3

    goto/16 :goto_9

    :cond_3
    sget-object v1, Lvp2;->c:Lbh8;

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lsb4$c;

    if-eqz v5, :cond_a

    monitor-enter v4

    :try_start_0
    move-object v5, v4

    check-cast v5, Lsb4$c;

    sget-object v6, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v7, Lsb4$c;->c:J

    invoke-virtual {v6, v5, v7, v8}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lvp2;->g:Lbh8;

    if-ne v5, v6, :cond_4

    sget-object p1, Lvp2;->f:Lbh8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    :goto_3
    move-object v6, p0

    move-object v0, p1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_4
    :try_start_1
    move-object v5, v4

    check-cast v5, Lsb4$c;

    invoke-virtual {v5}, Lsb4$c;->d()Z

    move-result v5

    if-nez p1, :cond_5

    if-nez v5, :cond_7

    :cond_5
    if-nez v1, :cond_6

    invoke-virtual {p0, p1}, Lsb4;->D(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_6
    move-object p1, v4

    check-cast p1, Lsb4$c;

    invoke-virtual {p1, v1}, Lsb4$c;->a(Ljava/lang/Throwable;)V

    :cond_7
    move-object p1, v4

    check-cast p1, Lsb4$c;

    invoke-virtual {p1}, Lsb4$c;->c()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_8

    move-object v0, p1

    :cond_8
    monitor-exit v4

    if-eqz v0, :cond_9

    check-cast v4, Lsb4$c;

    iget-object p1, v4, Lsb4$c;->b:Lbo5;

    invoke-virtual {p0, p1, v0}, Lsb4;->a0(Lbo5;Ljava/lang/Throwable;)V

    :cond_9
    sget-object p1, Lvp2;->c:Lbh8;

    goto :goto_3

    :goto_4
    monitor-exit v4

    throw p0

    :cond_a
    instance-of v5, v4, La44;

    if-eqz v5, :cond_12

    if-nez v1, :cond_b

    invoke-virtual {p0, p1}, Lsb4;->D(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_b
    move-object v9, v4

    check-cast v9, La44;

    invoke-interface {v9}, La44;->isActive()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {p0, v9}, Lsb4;->K(La44;)Lbo5;

    move-result-object v11

    if-nez v11, :cond_c

    move-object v6, p0

    goto :goto_7

    :cond_c
    new-instance v10, Lsb4$c;

    invoke-direct {v10, v11, v1}, Lsb4$c;-><init>(Lbo5;Ljava/lang/Throwable;)V

    :goto_5
    sget-object v5, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v7, Lsb4;->c:J

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {v6, v11, v1}, Lsb4;->a0(Lbo5;Ljava/lang/Throwable;)V

    sget-object p0, Lvp2;->c:Lbh8;

    :goto_6
    move-object v0, p0

    goto :goto_8

    :cond_d
    invoke-virtual {v5, v6, v7, v8}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v9, :cond_e

    goto :goto_7

    :cond_e
    move-object p0, v6

    goto :goto_5

    :cond_f
    move-object v6, p0

    new-instance p0, Lyq1;

    invoke-direct {p0, v1, v2}, Lyq1;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {v6, v4, p0}, Lsb4;->i0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v5, Lvp2;->c:Lbh8;

    if-eq p0, v5, :cond_11

    sget-object v4, Lvp2;->e:Lbh8;

    if-eq p0, v4, :cond_10

    goto :goto_6

    :cond_10
    :goto_7
    move-object p0, v6

    goto/16 :goto_2

    :cond_11
    const-string p0, "Cannot happen in "

    invoke-static {v4, p0}, Lad2;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v2

    :cond_12
    move-object v6, p0

    sget-object p0, Lvp2;->f:Lbh8;

    goto :goto_6

    :cond_13
    move-object v6, p0

    :goto_8
    sget-object p0, Lvp2;->c:Lbh8;

    if-ne v0, p0, :cond_14

    goto :goto_9

    :cond_14
    sget-object p0, Lvp2;->d:Lbh8;

    if-ne v0, p0, :cond_15

    :goto_9
    return v3

    :cond_15
    sget-object p0, Lvp2;->f:Lbh8;

    if-ne v0, p0, :cond_16

    return v2

    :cond_16
    invoke-virtual {v6, v0}, Lsb4;->s(Ljava/lang/Object;)V

    return v3
.end method

.method public x(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lsb4;->w(Ljava/lang/Object;)Z

    return-void
.end method

.method public final y()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lsb4$c;

    const-string v2, "Job is still new or active: "

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    check-cast v0, Lsb4$c;

    invoke-virtual {v0}, Lsb4$c;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " is cancelling"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v3, :cond_1

    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    invoke-direct {v2, v1, v0, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lsb4;)V

    return-object v2

    :cond_1
    return-object v3

    :cond_2
    invoke-static {p0, v2}, Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :cond_3
    instance-of v1, v0, La44;

    if-nez v1, :cond_7

    instance-of v1, v0, Lyq1;

    if-eqz v1, :cond_6

    check-cast v0, Lyq1;

    iget-object v0, v0, Lyq1;->a:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_4

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CancellationException;

    :cond_4
    if-nez v3, :cond_5

    new-instance v1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lsb4;->A()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lsb4;)V

    return-object v1

    :cond_5
    return-object v3

    :cond_6
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " has completed normally"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lsb4;)V

    return-object v0

    :cond_7
    invoke-static {p0, v2}, Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method public final z(Ljava/lang/Throwable;)Z
    .locals 5

    invoke-virtual {p0}, Lsb4;->S()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    sget-object v2, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v3, Lsb4;->b:J

    invoke-virtual {v2, p0, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgi1;

    if-eqz p0, :cond_4

    sget-object v2, Lgo5;->b:Lgo5;

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Lgi1;->a(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method
