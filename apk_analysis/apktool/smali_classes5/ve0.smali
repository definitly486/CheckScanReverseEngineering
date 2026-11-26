.class public abstract Lve0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lls5;
.implements Lyv6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lls5<",
        "TT;>;",
        "Lyv6<",
        "TR;>;"
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

.field public c:Lcp2;

.field public d:Lyv6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyv6<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(Lls5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lve0;->b:Lls5;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lve0;->d:Lyv6;

    invoke-interface {p0}, Liz7;->clear()V

    return-void
.end method

.method public final dispose()V
    .locals 0

    iget-object p0, p0, Lve0;->c:Lcp2;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lve0;->c:Lcp2;

    invoke-interface {p0}, Lcp2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lve0;->d:Lyv6;

    invoke-interface {p0}, Liz7;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Should not be called!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lve0;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lve0;->e:Z

    iget-object p0, p0, Lve0;->b:Lls5;

    invoke-interface {p0}, Lls5;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lve0;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lve0;->e:Z

    iget-object p0, p0, Lve0;->b:Lls5;

    invoke-interface {p0, p1}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 1

    iget-object v0, p0, Lve0;->c:Lcp2;

    invoke-static {v0, p1}, Lip2;->i(Lcp2;Lcp2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lve0;->c:Lcp2;

    instance-of v0, p1, Lyv6;

    if-eqz v0, :cond_0

    check-cast p1, Lyv6;

    iput-object p1, p0, Lve0;->d:Lyv6;

    :cond_0
    iget-object p1, p0, Lve0;->b:Lls5;

    invoke-interface {p1, p0}, Lls5;->onSubscribe(Lcp2;)V

    :cond_1
    return-void
.end method
