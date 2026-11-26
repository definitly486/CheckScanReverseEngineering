.class public final Ljq1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljq1$a;
    }
.end annotation


# instance fields
.field public final b:[Lqq1;


# direct methods
.method public constructor <init>([Lqq1;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Ljq1;->b:[Lqq1;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 7

    new-instance v0, Lfu1;

    invoke-direct {v0}, Lfu1;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Ljq1;->b:[Lqq1;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v2, Lpt;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-interface {p1, v0}, Lmq1;->onSubscribe(Lcp2;)V

    iget-object p0, p0, Ljq1;->b:[Lqq1;

    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p0, v4

    iget-boolean v6, v0, Lfu1;->c:Z

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "A completable source is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_1

    :cond_1
    new-instance v6, Ljq1$a;

    invoke-direct {v6, p1, v0, v2, v1}, Ljq1$a;-><init>(Lmq1;Lfu1;Lpt;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v5, v6}, Lqq1;->b(Lmq1;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_4

    invoke-static {v2}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-interface {p1}, Lmq1;->onComplete()V

    return-void

    :cond_3
    invoke-interface {p1, p0}, Lmq1;->onError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method
