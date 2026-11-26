.class public final Lsq1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmq1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsq1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Lfu1;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Lmq1;


# direct methods
.method public constructor <init>(Lfu1;Ljava/util/concurrent/atomic/AtomicBoolean;Lmq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsq1$b;->b:Lfu1;

    iput-object p2, p0, Lsq1$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lsq1$b;->d:Lmq1;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lsq1$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsq1$b;->b:Lfu1;

    invoke-virtual {v0}, Lfu1;->dispose()V

    iget-object p0, p0, Lsq1$b;->d:Lmq1;

    invoke-interface {p0}, Lmq1;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lsq1$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsq1$b;->b:Lfu1;

    invoke-virtual {v0}, Lfu1;->dispose()V

    iget-object p0, p0, Lsq1$b;->d:Lmq1;

    invoke-interface {p0, p1}, Lmq1;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    iget-object p0, p0, Lsq1$b;->b:Lfu1;

    invoke-virtual {p0, p1}, Lfu1;->b(Lcp2;)Z

    return-void
.end method
