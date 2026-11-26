.class public final Lar5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lls5;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lar5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lls5<",
        "TT;>;",
        "Lcp2;"
    }
.end annotation


# instance fields
.field public final b:Lls5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls5<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public d:Lcp2;

.field public e:J

.field public f:Z


# direct methods
.method public constructor <init>(Lls5;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lar5$a;->b:Lls5;

    iput-boolean p2, p0, Lar5$a;->c:Z

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    iget-object p0, p0, Lar5$a;->d:Lcp2;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lar5$a;->d:Lcp2;

    invoke-interface {p0}, Lcp2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lar5$a;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lar5$a;->f:Z

    iget-boolean v0, p0, Lar5$a;->c:Z

    iget-object p0, p0, Lar5$a;->b:Lls5;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {p0, v0}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lls5;->onComplete()V

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lar5$a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar5$a;->f:Z

    iget-object p0, p0, Lar5$a;->b:Lls5;

    invoke-interface {p0, p1}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lar5$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lar5$a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lar5$a;->f:Z

    iget-object v0, p0, Lar5$a;->d:Lcp2;

    invoke-interface {v0}, Lcp2;->dispose()V

    iget-object p0, p0, Lar5$a;->b:Lls5;

    invoke-interface {p0, p1}, Lls5;->onNext(Ljava/lang/Object;)V

    invoke-interface {p0}, Lls5;->onComplete()V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lar5$a;->e:J

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 1

    iget-object v0, p0, Lar5$a;->d:Lcp2;

    invoke-static {v0, p1}, Lip2;->i(Lcp2;Lcp2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lar5$a;->d:Lcp2;

    iget-object p1, p0, Lar5$a;->b:Lls5;

    invoke-interface {p1, p0}, Lls5;->onSubscribe(Lcp2;)V

    :cond_0
    return-void
.end method
