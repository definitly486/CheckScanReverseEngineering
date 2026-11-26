.class public final Ltp1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lmq1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltp1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lmq1;

.field public final c:[Lqq1;

.field public d:I

.field public final e:Lkp7;


# direct methods
.method public constructor <init>(Lmq1;[Lqq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ltp1$a;->b:Lmq1;

    iput-object p2, p0, Ltp1$a;->c:[Lqq1;

    new-instance p1, Lkp7;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ltp1$a;->e:Lkp7;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Ltp1$a;->e:Lkp7;

    invoke-virtual {v0}, Lkp7;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lkp7;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Ltp1$a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ltp1$a;->d:I

    iget-object v2, p0, Ltp1$a;->c:[Lqq1;

    array-length v3, v2

    if-ne v1, v3, :cond_3

    iget-object p0, p0, Ltp1$a;->b:Lmq1;

    invoke-interface {p0}, Lmq1;->onComplete()V

    return-void

    :cond_3
    aget-object v1, v2, v1

    invoke-interface {v1, p0}, Lqq1;->b(Lmq1;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void
.end method

.method public final onComplete()V
    .locals 0

    invoke-virtual {p0}, Ltp1$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Ltp1$a;->b:Lmq1;

    invoke-interface {p0, p1}, Lmq1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    iget-object p0, p0, Ltp1$a;->e:Lkp7;

    invoke-static {p0, p1}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method
