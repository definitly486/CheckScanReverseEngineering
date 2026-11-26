.class public final Lb85$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lt75;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb85;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcp2;",
        ">;",
        "Lt75<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lb85$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb85$b<",
            "TT;*>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Lb85$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb85$b<",
            "TT;*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lb85$c;->b:Lb85$b;

    iput p2, p0, Lb85$c;->c:I

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lb85$c;->b:Lb85$b;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    iget p0, p0, Lb85$c;->c:I

    invoke-virtual {v1, p0}, Lb85$b;->a(I)V

    iget-object p0, v1, Lb85$b;->b:Lt75;

    invoke-interface {p0}, Lt75;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lb85$c;->b:Lb85$b;

    iget p0, p0, Lb85$c;->c:I

    invoke-virtual {v0, p1, p0}, Lb85$b;->b(Ljava/lang/Throwable;I)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    invoke-static {p0, p1}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lb85$c;->b:Lb85$b;

    iget-object v1, v0, Lb85$b;->b:Lt75;

    iget-object v2, v0, Lb85$b;->e:[Ljava/lang/Object;

    iget p0, p0, Lb85$c;->c:I

    aput-object p1, v2, p0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_0

    :try_start_0
    iget-object p0, v0, Lb85$b;->c:Lxl3;

    invoke-interface {p0, v2}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The zipper returned a null value"

    invoke-static {p0, p1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, p0}, Lt75;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-interface {v1, p0}, Lt75;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
