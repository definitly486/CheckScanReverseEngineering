.class public final Lwh3$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lrh3;
.implements Lbc8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwh3$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrh3<",
        "TT;>;",
        "Lbc8;"
    }
.end annotation


# instance fields
.field public final b:Lwb8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb8<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lhe7;

.field public d:Lbc8;


# direct methods
.method public constructor <init>(Lwb8;Lw13;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lwh3$a;->b:Lwb8;

    iput-object p2, p0, Lwh3$a;->c:Lhe7;

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 1

    iget-object v0, p0, Lwh3$a;->d:Lbc8;

    invoke-static {v0, p1}, Lhc8;->f(Lbc8;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lwh3$a;->d:Lbc8;

    iget-object p1, p0, Lwh3$a;->b:Lwb8;

    invoke-interface {p1, p0}, Lwb8;->a(Lbc8;)V

    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lwh3$a$a;

    invoke-direct {v0, p0}, Lwh3$a$a;-><init>(Lwh3$a;)V

    iget-object p0, p0, Lwh3$a;->c:Lhe7;

    invoke-virtual {p0, v0}, Lhe7;->c(Ljava/lang/Runnable;)Lcp2;

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lwh3$a;->b:Lwb8;

    invoke-interface {p0}, Lwb8;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p0, p0, Lwh3$a;->b:Lwb8;

    invoke-interface {p0, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lwh3$a;->b:Lwb8;

    invoke-interface {p0, p1}, Lwb8;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 0

    iget-object p0, p0, Lwh3$a;->d:Lbc8;

    invoke-interface {p0, p1, p2}, Lbc8;->request(J)V

    return-void
.end method
