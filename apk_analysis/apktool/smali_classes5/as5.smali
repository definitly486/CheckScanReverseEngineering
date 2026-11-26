.class public final Las5;
.super Ltq5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Las5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ltq5<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Ltq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltq5<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lx3;


# direct methods
.method public constructor <init>(Ltq5;Lx3;)V
    .locals 0

    invoke-direct {p0}, Ltq5;-><init>()V

    iput-object p1, p0, Las5;->b:Ltq5;

    iput-object p2, p0, Las5;->c:Lx3;

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Las5;->b:Ltq5;

    instance-of v1, v0, Ljava/util/concurrent/Callable;

    iget-object p0, p0, Las5;->c:Lx3;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/concurrent/Callable;

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lx3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc18;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, p0}, Lls5;->onSubscribe(Lcp2;)V

    invoke-interface {p1}, Lls5;->onComplete()V

    return-void

    :cond_1
    new-instance v0, Li18$a;

    invoke-direct {v0, p1}, Lqk2;-><init>(Lls5;)V

    invoke-interface {p0, v0}, Lc18;->d(Lt08;)V

    return-void

    :goto_1
    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object v0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, v0}, Lls5;->onSubscribe(Lcp2;)V

    invoke-interface {p1, p0}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    new-instance v1, Las5$a;

    invoke-direct {v1, p1, p0}, Las5$a;-><init>(Lls5;Lx3;)V

    invoke-virtual {v0, v1}, Ltq5;->a(Lls5;)V

    return-void
.end method
