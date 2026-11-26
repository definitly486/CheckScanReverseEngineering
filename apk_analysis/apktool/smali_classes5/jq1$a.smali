.class public final Ljq1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmq1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljq1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lmq1;

.field public final c:Lfu1;

.field public final d:Lpt;

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lmq1;Lfu1;Lpt;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljq1$a;->b:Lmq1;

    iput-object p2, p0, Ljq1$a;->c:Lfu1;

    iput-object p3, p0, Ljq1$a;->d:Lpt;

    iput-object p4, p0, Ljq1$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ljq1$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljq1$a;->d:Lpt;

    invoke-static {v0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    iget-object p0, p0, Ljq1$a;->b:Lmq1;

    if-nez v0, :cond_0

    invoke-interface {p0}, Lmq1;->onComplete()V

    return-void

    :cond_0
    invoke-interface {p0, v0}, Lmq1;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final onComplete()V
    .locals 0

    invoke-virtual {p0}, Ljq1$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ljq1$a;->d:Lpt;

    invoke-static {v0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljq1$a;->a()V

    return-void

    :cond_0
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    iget-object p0, p0, Ljq1$a;->c:Lfu1;

    invoke-virtual {p0, p1}, Lfu1;->b(Lcp2;)Z

    return-void
.end method
