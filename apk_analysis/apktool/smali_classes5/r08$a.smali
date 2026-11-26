.class public final Lr08$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lt08;
.implements Lcp2;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr08;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcp2;",
        ">;",
        "Lt08<",
        "TT;>;",
        "Lcp2;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final b:Lt08;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt08<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lhe7;

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lt08;Lhe7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TT;>;",
            "Lhe7;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lr08$a;->b:Lt08;

    iput-object p2, p0, Lr08$a;->c:Lhe7;

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

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lr08$a;->e:Ljava/lang/Throwable;

    iget-object p1, p0, Lr08$a;->c:Lhe7;

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

    iget-object p1, p0, Lr08$a;->b:Lt08;

    invoke-interface {p1, p0}, Lt08;->onSubscribe(Lcp2;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lr08$a;->d:Ljava/lang/Object;

    iget-object p1, p0, Lr08$a;->c:Lhe7;

    invoke-virtual {p1, p0}, Lhe7;->c(Ljava/lang/Runnable;)Lcp2;

    move-result-object p1

    invoke-static {p0, p1}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lr08$a;->e:Ljava/lang/Throwable;

    iget-object v1, p0, Lr08$a;->b:Lt08;

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Lt08;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p0, p0, Lr08$a;->d:Ljava/lang/Object;

    invoke-interface {v1, p0}, Lt08;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
