.class public final Lu08$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt08;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu08;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt08<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lt08;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt08<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lu08;


# direct methods
.method public constructor <init>(Lu08;Lt08;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu08$a;->c:Lu08;

    iput-object p2, p0, Lu08$a;->b:Lt08;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lu08$a;->c:Lu08;

    iget-object v1, v0, Lu08;->c:Lxl3;

    iget-object p0, p0, Lu08$a;->b:Lt08;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {p0, v1}, Lt08;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, v0, Lu08;->d:Ljava/lang/Object;

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Value supplied was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-interface {p0, v0}, Lt08;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-interface {p0, v0}, Lt08;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    iget-object p0, p0, Lu08$a;->b:Lt08;

    invoke-interface {p0, p1}, Lt08;->onSubscribe(Lcp2;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lu08$a;->b:Lt08;

    invoke-interface {p0, p1}, Lt08;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
