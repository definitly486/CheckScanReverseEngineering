.class final Landroidx/concurrent/futures/ToContinuation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final continuation:La31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La31<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final futureToObserve:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;La31;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;",
            "La31<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/concurrent/futures/ToContinuation;->futureToObserve:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Landroidx/concurrent/futures/ToContinuation;->continuation:La31;

    return-void
.end method


# virtual methods
.method public final getContinuation()La31;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La31<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/concurrent/futures/ToContinuation;->continuation:La31;

    return-object p0
.end method

.method public final getFutureToObserve()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/concurrent/futures/ToContinuation;->futureToObserve:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/concurrent/futures/ToContinuation;->futureToObserve:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    iget-object v1, p0, Landroidx/concurrent/futures/ToContinuation;->continuation:La31;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {v1, p0}, La31;->d(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/concurrent/futures/ToContinuation;->futureToObserve:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Le02;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Landroidx/concurrent/futures/ToContinuation;->continuation:La31;

    invoke-static {v0}, Landroidx/concurrent/futures/ListenableFutureKt;->access$nonNullCause(Ljava/util/concurrent/ExecutionException;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lr57;->a(Ljava/lang/Throwable;)Lk57$a;

    move-result-object v0

    invoke-interface {p0, v0}, Le02;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
