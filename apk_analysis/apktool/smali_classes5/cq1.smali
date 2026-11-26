.class public final Lcq1;
.super Lqp1;
.source "SourceFile"


# instance fields
.field public final b:Lh6;


# direct methods
.method public constructor <init>(Lh6;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lcq1;->b:Lh6;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 2

    new-instance v0, Lv87;

    sget-object v1, Lrm3;->b:Lrm3$f;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lmq1;->onSubscribe(Lcp2;)V

    :try_start_0
    iget-object p0, p0, Lcq1;->b:Lh6;

    invoke-interface {p0}, Lh6;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lt07;->isDisposed()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1}, Lmq1;->onComplete()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lt07;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Lmq1;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
