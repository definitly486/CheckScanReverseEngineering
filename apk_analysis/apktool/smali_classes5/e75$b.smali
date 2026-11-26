.class public final Le75$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lmq1;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le75;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcp2;",
        ">;",
        "Lmq1;",
        "Lcp2;"
    }
.end annotation


# instance fields
.field public final b:Lt75;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt75<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lx75;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx75<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt75;La75;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Le75$b;->b:Lt75;

    iput-object p2, p0, Le75$b;->c:Lx75;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    invoke-static {p0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcp2;

    invoke-static {p0}, Lip2;->d(Lcp2;)Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 2

    new-instance v0, Le75$a;

    iget-object v1, p0, Le75$b;->b:Lt75;

    invoke-direct {v0, p0, v1}, Le75$a;-><init>(Le75$b;Lt75;)V

    iget-object p0, p0, Le75$b;->c:Lx75;

    invoke-interface {p0, v0}, Lx75;->a(Lt75;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Le75$b;->b:Lt75;

    invoke-interface {p0, p1}, Lt75;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    invoke-static {p0, p1}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le75$b;->b:Lt75;

    invoke-interface {p1, p0}, Lt75;->onSubscribe(Lcp2;)V

    :cond_0
    return-void
.end method
