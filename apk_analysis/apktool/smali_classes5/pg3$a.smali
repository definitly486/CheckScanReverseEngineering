.class public final Lpg3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrh3;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg3;
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
        "Lrh3<",
        "TT;>;",
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

.field public c:Lbc8;

.field public d:J

.field public e:Z


# direct methods
.method public constructor <init>(Lt75;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpg3$a;->b:Lt75;

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 2

    iget-object v0, p0, Lpg3$a;->c:Lbc8;

    invoke-static {v0, p1}, Lhc8;->f(Lbc8;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lpg3$a;->c:Lbc8;

    iget-object v0, p0, Lpg3$a;->b:Lt75;

    invoke-interface {v0, p0}, Lt75;->onSubscribe(Lcp2;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lpg3$a;->c:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    sget-object v0, Lhc8;->CANCELLED:Lhc8;

    iput-object v0, p0, Lpg3$a;->c:Lbc8;

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    iget-object p0, p0, Lpg3$a;->c:Lbc8;

    sget-object v0, Lhc8;->CANCELLED:Lhc8;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onComplete()V
    .locals 1

    sget-object v0, Lhc8;->CANCELLED:Lhc8;

    iput-object v0, p0, Lpg3$a;->c:Lbc8;

    iget-boolean v0, p0, Lpg3$a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpg3$a;->e:Z

    iget-object p0, p0, Lpg3$a;->b:Lt75;

    invoke-interface {p0}, Lt75;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lpg3$a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpg3$a;->e:Z

    sget-object v0, Lhc8;->CANCELLED:Lhc8;

    iput-object v0, p0, Lpg3$a;->c:Lbc8;

    iget-object p0, p0, Lpg3$a;->b:Lt75;

    invoke-interface {p0, p1}, Lt75;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lpg3$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lpg3$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpg3$a;->e:Z

    iget-object v0, p0, Lpg3$a;->c:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    sget-object v0, Lhc8;->CANCELLED:Lhc8;

    iput-object v0, p0, Lpg3$a;->c:Lbc8;

    iget-object p0, p0, Lpg3$a;->b:Lt75;

    invoke-interface {p0, p1}, Lt75;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lpg3$a;->d:J

    return-void
.end method
