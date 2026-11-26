.class public final Lwp1;
.super Lqp1;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lqq1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lqq1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lwp1;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lwp1;->b:Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "The completableSupplier returned a null CompletableSource"

    invoke-static {p0, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lqq1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0, p1}, Lqq1;->b(Lmq1;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object v0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, v0}, Lmq1;->onSubscribe(Lcp2;)V

    invoke-interface {p1, p0}, Lmq1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
