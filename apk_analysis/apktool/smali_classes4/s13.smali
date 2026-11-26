.class public final synthetic Ls13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ln39;

.field public final synthetic c:Lnr7;

.field public final synthetic d:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic e:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic f:Lt13$c;


# direct methods
.method public synthetic constructor <init>(Ln39;Lnr7;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lt13$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls13;->b:Ln39;

    iput-object p2, p0, Ls13;->c:Lnr7;

    iput-object p3, p0, Ls13;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p4, p0, Ls13;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p5, p0, Ls13;->f:Lt13$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ls13;->b:Ln39;

    invoke-virtual {v0}, Ll0;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ls13;->c:Lnr7;

    iget-object p0, p0, Ls13;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, p0}, Ll0;->n(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void

    :cond_0
    iget-object v1, p0, Ls13;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lt13$c;->f:I

    sget-object v1, Lt13$b;->NOT_RUN:Lt13$b;

    sget-object v2, Lt13$b;->CANCELLED:Lt13$b;

    iget-object p0, p0, Ls13;->f:Lt13$c;

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ll0;->cancel(Z)Z

    :cond_1
    return-void
.end method
