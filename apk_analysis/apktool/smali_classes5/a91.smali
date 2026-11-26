.class public La91;
.super La0;
.source "SourceFile"

# interfaces
.implements Lx81;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "La0<",
        "Lj59;",
        ">;",
        "Lx81<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final f:Lmu0;


# direct methods
.method public constructor <init>(Lo22;Lmu0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, La0;-><init>(Lo22;ZZ)V

    iput-object p2, p0, La91;->f:Lmu0;

    return-void
.end method


# virtual methods
.method public final b(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, La91;->f:Lmu0;

    invoke-virtual {p0, p1}, Lmu0;->b(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lco1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, La91;->f:Lmu0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lmu0;->C(Lmu0;Lf02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-virtual {p0}, Lsb4;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, La0;->A()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lsb4;)V

    :cond_1
    invoke-virtual {p0, p1}, La91;->x(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final close(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object p0, p0, La91;->f:Lmu0;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmu0;->d(Ljava/lang/Throwable;Z)Z

    move-result p0

    return p0
.end method

.method public final getOnSend()Lxl7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxl7<",
            "TE;",
            "Lno7<",
            "TE;>;>;"
        }
    .end annotation

    iget-object p0, p0, La91;->f:Lmu0;

    invoke-virtual {p0}, Lmu0;->getOnSend()Lxl7;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lwl7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwl7;"
        }
    .end annotation

    iget-object p0, p0, La91;->f:Lmu0;

    invoke-virtual {p0}, Lmu0;->h()Lwl7;

    move-result-object p0

    return-object p0
.end method

.method public final i()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, La91;->f:Lmu0;

    invoke-virtual {p0}, Lmu0;->i()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeOnClose(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Throwable;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, La91;->f:Lmu0;

    invoke-virtual {p0, p1}, Lmu0;->invokeOnClose(Lnl3;)V

    return-void
.end method

.method public final isClosedForSend()Z
    .locals 0

    iget-object p0, p0, La91;->f:Lmu0;

    invoke-virtual {p0}, Lmu0;->isClosedForSend()Z

    move-result p0

    return p0
.end method

.method public final iterator()Lk91;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk91<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, La91;->f:Lmu0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lmu0$a;

    invoke-direct {v0, p0}, Lmu0$a;-><init>(Lmu0;)V

    return-object v0
.end method

.method public final l()Lwl7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwl7;"
        }
    .end annotation

    iget-object p0, p0, La91;->f:Lmu0;

    invoke-virtual {p0}, Lmu0;->l()Lwl7;

    move-result-object p0

    return-object p0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    iget-object p0, p0, La91;->f:Lmu0;

    invoke-interface {p0, p1}, Lno7;->offer(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final send(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, La91;->f:Lmu0;

    invoke-interface {p0, p1, p2}, Lno7;->send(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, La91;->f:Lmu0;

    invoke-interface {p0, p1}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    iget-object v0, p0, La91;->f:Lmu0;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmu0;->d(Ljava/lang/Throwable;Z)Z

    invoke-virtual {p0, p1}, Lsb4;->w(Ljava/lang/Object;)Z

    return-void
.end method
