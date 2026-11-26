.class public final Lup1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lmq1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lup1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lmq1;

.field public final c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lqq1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lkp7;


# direct methods
.method public constructor <init>(Lmq1;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmq1;",
            "Ljava/util/Iterator<",
            "+",
            "Lqq1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lup1$a;->b:Lmq1;

    iput-object p2, p0, Lup1$a;->c:Ljava/util/Iterator;

    new-instance p1, Lkp7;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lup1$a;->d:Lkp7;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lup1$a;->b:Lmq1;

    iget-object v1, p0, Lup1$a;->d:Lkp7;

    invoke-virtual {v1}, Lkp7;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lup1$a;->c:Ljava/util/Iterator;

    :cond_2
    invoke-virtual {v1}, Lkp7;->isDisposed()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_4

    invoke-interface {v0}, Lmq1;->onComplete()V

    return-void

    :cond_4
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "The CompletableSource returned is null"

    invoke-static {v3, v4}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lqq1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v3, p0}, Lqq1;->b(Lmq1;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-interface {v0, p0}, Lmq1;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-interface {v0, p0}, Lmq1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onComplete()V
    .locals 0

    invoke-virtual {p0}, Lup1$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lup1$a;->b:Lmq1;

    invoke-interface {p0, p1}, Lmq1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    iget-object p0, p0, Lup1$a;->d:Lkp7;

    invoke-static {p0, p1}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method
