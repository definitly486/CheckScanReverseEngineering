.class public final Lbs5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lls5;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbs5;
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

.field public c:Z

.field public d:Lcp2;

.field public e:J


# direct methods
.method public constructor <init>(Lls5;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbs5$a;->b:Lls5;

    iput-wide p2, p0, Lbs5$a;->e:J

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    iget-object p0, p0, Lbs5$a;->d:Lcp2;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lbs5$a;->d:Lcp2;

    invoke-interface {p0}, Lcp2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lbs5$a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbs5$a;->c:Z

    iget-object v0, p0, Lbs5$a;->d:Lcp2;

    invoke-interface {v0}, Lcp2;->dispose()V

    iget-object p0, p0, Lbs5$a;->b:Lls5;

    invoke-interface {p0}, Lls5;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lbs5$a;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbs5$a;->c:Z

    iget-object v0, p0, Lbs5$a;->d:Lcp2;

    invoke-interface {v0}, Lcp2;->dispose()V

    iget-object p0, p0, Lbs5$a;->b:Lls5;

    invoke-interface {p0, p1}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lbs5$a;->c:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lbs5$a;->e:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lbs5$a;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbs5$a;->b:Lls5;

    invoke-interface {v1, p1}, Lls5;->onNext(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbs5$a;->onComplete()V

    :cond_1
    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 4

    iget-object v0, p0, Lbs5$a;->d:Lcp2;

    invoke-static {v0, p1}, Lip2;->i(Lcp2;Lcp2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lbs5$a;->d:Lcp2;

    iget-wide v0, p0, Lbs5$a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    iget-object v1, p0, Lbs5$a;->b:Lls5;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbs5$a;->c:Z

    invoke-interface {p1}, Lcp2;->dispose()V

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {v1, p0}, Lls5;->onSubscribe(Lcp2;)V

    invoke-interface {v1}, Lls5;->onComplete()V

    return-void

    :cond_0
    invoke-interface {v1, p0}, Lls5;->onSubscribe(Lcp2;)V

    :cond_1
    return-void
.end method
