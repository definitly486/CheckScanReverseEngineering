.class public final Las5$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lls5;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Las5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Las5$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lls5<",
        "TT;>;",
        "Lcp2;"
    }
.end annotation


# static fields
.field public static final i:Las5$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Las5$a$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lls5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls5<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;+",
            "Lc18<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:Lpt;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Las5$a$a<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public f:Lcp2;

.field public volatile g:Z

.field public volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Las5$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Las5$a$a;-><init>(Las5$a;)V

    sput-object v0, Las5$a;->i:Las5$a$a;

    return-void
.end method

.method public constructor <init>(Lls5;Lx3;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Las5$a;->b:Lls5;

    iput-object p2, p0, Las5$a;->c:Lxl3;

    new-instance p1, Lpt;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Las5$a;->d:Lpt;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Las5$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Las5$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Las5$a;->i:Las5$a$a;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Las5$a$a;

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 8

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p0, Las5$a;->b:Lls5;

    iget-object v1, p0, Las5$a;->d:Lpt;

    iget-object v2, p0, Las5$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    :goto_0
    iget-boolean v5, p0, Las5$a;->h:Z

    if-eqz v5, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v1}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v0, p0}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-boolean v5, p0, Las5$a;->g:Z

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Las5$a$a;

    if-nez v6, :cond_4

    move v7, v3

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    invoke-static {v1}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {v0, p0}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    invoke-interface {v0}, Lls5;->onComplete()V

    return-void

    :cond_6
    if-nez v7, :cond_9

    iget-object v5, v6, Las5$a$a;->c:Ljava/lang/Object;

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v6, :cond_7

    :goto_2
    iget-object v5, v6, Las5$a$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v5}, Lls5;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    :goto_3
    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    :goto_4
    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Las5$a;->h:Z

    iget-object v0, p0, Las5$a;->f:Lcp2;

    invoke-interface {v0}, Lcp2;->dispose()V

    invoke-virtual {p0}, Las5$a;->a()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Las5$a;->h:Z

    return p0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Las5$a;->g:Z

    invoke-virtual {p0}, Las5$a;->b()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Las5$a;->d:Lpt;

    invoke-static {v0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Las5$a;->a()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Las5$a;->g:Z

    invoke-virtual {p0}, Las5$a;->b()V

    return-void

    :cond_0
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-object v0, Las5$a;->i:Las5$a$a;

    iget-object v1, p0, Las5$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Las5$a$a;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Las5$a;->c:Lxl3;

    invoke-interface {v2, p1}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The mapper returned a null SingleSource"

    invoke-static {p1, v2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lc18;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Las5$a$a;

    invoke-direct {v2, p0}, Las5$a$a;-><init>(Las5$a;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Las5$a$a;

    if-ne v3, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1, v2}, Lc18;->d(Lt08;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v2, p0, Las5$a;->f:Lcp2;

    invoke-interface {v2}, Lcp2;->dispose()V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Las5$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 1

    iget-object v0, p0, Las5$a;->f:Lcp2;

    invoke-static {v0, p1}, Lip2;->i(Lcp2;Lcp2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Las5$a;->f:Lcp2;

    iget-object p1, p0, Las5$a;->b:Lls5;

    invoke-interface {p1, p0}, Lls5;->onSubscribe(Lcp2;)V

    :cond_0
    return-void
.end method
