.class public final Lkq1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkq1$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lkq1;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 4

    new-instance v0, Lfu1;

    invoke-direct {v0}, Lfu1;-><init>()V

    invoke-interface {p1, v0}, Lmq1;->onSubscribe(Lcp2;)V

    :try_start_0
    iget-object p0, p0, Lkq1;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, "The source iterator returned is null"

    invoke-static {p0, v1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v2, Lkq1$a;

    invoke-direct {v2, p1, v0, v1}, Lkq1$a;-><init>(Lmq1;Lfu1;Ljava/util/concurrent/atomic/AtomicInteger;)V

    :goto_0
    iget-boolean p1, v0, Lfu1;->c:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_1

    invoke-virtual {v2}, Lkq1$a;->onComplete()V

    return-void

    :cond_1
    iget-boolean p1, v0, Lfu1;->c:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const-string v3, "The iterator returned a null CompletableSource"

    invoke-static {p1, v3}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lqq1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v3, v0, Lfu1;->c:Z

    if-eqz v3, :cond_3

    :goto_1
    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    invoke-interface {p1, v2}, Lqq1;->b(Lmq1;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lfu1;->dispose()V

    invoke-virtual {v2, p0}, Lkq1$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lfu1;->dispose()V

    invoke-virtual {v2, p0}, Lkq1$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-interface {p1, p0}, Lmq1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
