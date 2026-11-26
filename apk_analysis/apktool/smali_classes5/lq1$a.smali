.class public final Llq1$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lmq1;
.implements Lcp2;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llq1;
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

.field public final c:Lhe7;

.field public d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lmq1;Lhe7;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Llq1$a;->b:Lmq1;

    iput-object p2, p0, Llq1$a;->c:Lhe7;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

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
    .locals 1

    iget-object v0, p0, Llq1$a;->c:Lhe7;

    invoke-virtual {v0, p0}, Lhe7;->c(Ljava/lang/Runnable;)Lcp2;

    move-result-object v0

    invoke-static {p0, v0}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Llq1$a;->d:Ljava/lang/Throwable;

    iget-object p1, p0, Llq1$a;->c:Lhe7;

    invoke-virtual {p1, p0}, Lhe7;->c(Ljava/lang/Runnable;)Lcp2;

    move-result-object p1

    invoke-static {p0, p1}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    invoke-static {p0, p1}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Llq1$a;->b:Lmq1;

    invoke-interface {p1, p0}, Lmq1;->onSubscribe(Lcp2;)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Llq1$a;->d:Ljava/lang/Throwable;

    iget-object v1, p0, Llq1$a;->b:Lmq1;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Llq1$a;->d:Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lmq1;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-interface {v1}, Lmq1;->onComplete()V

    return-void
.end method
