.class public final Ly87;
.super La0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La0<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lvp1$a;


# direct methods
.method public constructor <init>(Lo22;Lvp1$a;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, La0;-><init>(Lo22;ZZ)V

    iput-object p2, p0, Ly87;->f:Lvp1$a;

    return-void
.end method


# virtual methods
.method public final k0(Ljava/lang/Throwable;Z)V
    .locals 0

    :try_start_0
    iget-object p2, p0, Ly87;->f:Lvp1$a;

    invoke-virtual {p2, p1}, Lvp1$a;->a(Ljava/lang/Throwable;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p1, p2}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_0
    iget-object p0, p0, La0;->e:Lo22;

    invoke-static {p0, p1}, Luc5;->b(Lo22;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final l0(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lj59;

    :try_start_0
    iget-object p1, p0, Ly87;->f:Lvp1$a;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lip2;->DISPOSED:Lip2;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcp2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v0, v1, :cond_1

    :try_start_1
    iget-object p1, p1, Lvp1$a;->b:Lmq1;

    invoke-interface {p1}, Lmq1;->onComplete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Lcp2;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcp2;->dispose()V

    :cond_0
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    iget-object p0, p0, La0;->e:Lo22;

    invoke-static {p0, p1}, Luc5;->b(Lo22;Ljava/lang/Throwable;)V

    return-void
.end method
