.class public final Lhi0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcp2;
.implements Lze6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhi0;
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
        "Ljava/lang/Object;",
        "Lcp2;",
        "Lze6;"
    }
.end annotation


# instance fields
.field public final b:Lls5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls5<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Lmq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public volatile h:Z

.field public i:J


# direct methods
.method public constructor <init>(Lls5;Lhi0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TT;>;",
            "Lhi0<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhi0$a;->b:Lls5;

    iput-object p2, p0, Lhi0$a;->c:Lhi0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .locals 2

    iget-boolean v0, p0, Lhi0$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lhi0$a;->g:Z

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lhi0$a;->h:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lhi0$a;->i:J

    cmp-long p2, v0, p2

    if-nez p2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    iget-boolean p2, p0, Lhi0$a;->e:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lhi0$a;->f:Lmq;

    if-nez p2, :cond_3

    new-instance p2, Lmq;

    invoke-direct {p2}, Lmq;-><init>()V

    iput-object p2, p0, Lhi0$a;->f:Lmq;

    :cond_3
    invoke-virtual {p2, p1}, Lmq;->a(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_4
    const/4 p2, 0x1

    iput-boolean p2, p0, Lhi0$a;->d:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p2, p0, Lhi0$a;->g:Z

    goto :goto_1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lhi0$a;->test(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lhi0$a;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhi0$a;->h:Z

    iget-object v0, p0, Lhi0$a;->c:Lhi0;

    invoke-virtual {v0, p0}, Lhi0;->k(Lhi0$a;)V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lhi0$a;->h:Z

    return p0
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-boolean v0, p0, Lhi0$a;->h:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lhi0$a;->b:Lls5;

    sget-object v0, Lxo5;->COMPLETE:Lxo5;

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Lls5;->onComplete()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lxo5$b;

    if-eqz v0, :cond_1

    check-cast p1, Lxo5$b;

    iget-object p1, p1, Lxo5$b;->b:Ljava/lang/Throwable;

    invoke-interface {p0, p1}, Lls5;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Lls5;->onNext(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
