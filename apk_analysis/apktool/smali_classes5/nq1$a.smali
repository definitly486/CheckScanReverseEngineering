.class public final Lnq1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmq1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnq1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lmq1;

.field public final synthetic c:Lnq1;


# direct methods
.method public constructor <init>(Lnq1;Lmq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnq1$a;->c:Lnq1;

    iput-object p2, p0, Lnq1$a;->b:Lmq1;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 0

    iget-object p0, p0, Lnq1$a;->b:Lmq1;

    invoke-interface {p0}, Lmq1;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lnq1$a;->b:Lmq1;

    :try_start_0
    iget-object p0, p0, Lnq1$a;->c:Lnq1;

    iget-object p0, p0, Lnq1;->c:Lrm3$m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lmq1;->onComplete()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, p0}, [Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lmq1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    iget-object p0, p0, Lnq1$a;->b:Lmq1;

    invoke-interface {p0, p1}, Lmq1;->onSubscribe(Lcp2;)V

    return-void
.end method
