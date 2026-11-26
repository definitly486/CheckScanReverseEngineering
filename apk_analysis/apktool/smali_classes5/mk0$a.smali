.class public final Lmk0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lls5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmk0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lls5<",
        "La57<",
        "TR;>;>;"
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

.field public c:Z


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

    iput-object p1, p0, Lmk0$a;->b:Lls5;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lmk0$a;->c:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lmk0$a;->b:Lls5;

    invoke-interface {p0}, Lls5;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lmk0$a;->c:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lmk0$a;->b:Lls5;

    invoke-interface {p0, p1}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "This should never happen! Report as a bug with the full stacktrace."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, La57;

    iget-object v0, p1, La57;->a:Lz47;

    invoke-virtual {v0}, Lz47;->o()Z

    move-result v0

    iget-object v1, p0, Lmk0$a;->b:Lls5;

    if-eqz v0, :cond_0

    iget-object p0, p1, La57;->b:Ljava/lang/Object;

    invoke-interface {v1, p0}, Lls5;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmk0$a;->c:Z

    new-instance p0, Lretrofit2/adapter/rxjava2/HttpException;

    invoke-direct {p0, p1}, Lretrofit2/HttpException;-><init>(La57;)V

    :try_start_0
    invoke-interface {v1, p0}, Lls5;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    aput-object p1, v2, v0

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    iget-object p0, p0, Lmk0$a;->b:Lls5;

    invoke-interface {p0, p1}, Lls5;->onSubscribe(Lcp2;)V

    return-void
.end method
