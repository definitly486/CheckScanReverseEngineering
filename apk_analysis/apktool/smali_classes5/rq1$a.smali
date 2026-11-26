.class public final Lrq1$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lmq1;
.implements Lcp2;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrq1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcp2;",
        ">;",
        "Lmq1;",
        "Lcp2;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final b:Lmq1;

.field public final c:Lkp7;

.field public final d:Lqq1;


# direct methods
.method public constructor <init>(Lmq1;Lqp1;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lrq1$a;->b:Lmq1;

    iput-object p2, p0, Lrq1$a;->d:Lqq1;

    new-instance p1, Lkp7;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lrq1$a;->c:Lkp7;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    invoke-static {p0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object p0, p0, Lrq1$a;->c:Lkp7;

    invoke-static {p0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcp2;

    invoke-static {p0}, Lip2;->d(Lcp2;)Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 0

    iget-object p0, p0, Lrq1$a;->b:Lmq1;

    invoke-interface {p0}, Lmq1;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lrq1$a;->b:Lmq1;

    invoke-interface {p0, p1}, Lmq1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    invoke-static {p0, p1}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lrq1$a;->d:Lqq1;

    invoke-interface {v0, p0}, Lqq1;->b(Lmq1;)V

    return-void
.end method
