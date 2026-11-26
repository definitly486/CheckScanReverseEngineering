.class public final Lsp1$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lls5;
.implements Lmq1;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsp1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcp2;",
        ">;",
        "Lls5<",
        "TR;>;",
        "Lmq1;",
        "Lcp2;"
    }
.end annotation


# instance fields
.field public final b:Lls5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls5<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public c:Lwr5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwr5<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lls5;Ltq5;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lsp1$a;->c:Lwr5;

    iput-object p1, p0, Lsp1$a;->b:Lls5;

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

    iget-object v0, p0, Lsp1$a;->c:Lwr5;

    if-nez v0, :cond_0

    iget-object p0, p0, Lsp1$a;->b:Lls5;

    invoke-interface {p0}, Lls5;->onComplete()V

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lsp1$a;->c:Lwr5;

    invoke-interface {v0, p0}, Lwr5;->a(Lls5;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lsp1$a;->b:Lls5;

    invoke-interface {p0, p1}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object p0, p0, Lsp1$a;->b:Lls5;

    invoke-interface {p0, p1}, Lls5;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    invoke-static {p0, p1}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method
