.class public final Liq1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liq1$a;
    }
.end annotation


# instance fields
.field public final b:[Lqq1;


# direct methods
.method public constructor <init>([Lqq1;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Liq1;->b:[Lqq1;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 5

    new-instance v0, Lfu1;

    invoke-direct {v0}, Lfu1;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v2, Liq1$a;

    iget-object v3, p0, Liq1;->b:[Lqq1;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, p1, v1, v0, v3}, Liq1$a;-><init>(Lmq1;Ljava/util/concurrent/atomic/AtomicBoolean;Lfu1;I)V

    invoke-interface {p1, v0}, Lmq1;->onSubscribe(Lcp2;)V

    iget-object p0, p0, Liq1;->b:[Lqq1;

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v3, p0, v1

    iget-boolean v4, v0, Lfu1;->c:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    if-nez v3, :cond_1

    invoke-virtual {v0}, Lfu1;->dispose()V

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "A completable source is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Liq1$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-interface {v3, v2}, Lqq1;->b(Lmq1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Liq1$a;->onComplete()V

    return-void
.end method
