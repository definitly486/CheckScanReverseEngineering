.class public final Ler5$a;
.super Lve0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ler5;
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
        "Lve0<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final f:Lze6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lze6<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lls5;Lze6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TT;>;",
            "Lze6<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lve0;-><init>(Lls5;)V

    iput-object p2, p0, Ler5$a;->f:Lze6;

    return-void
.end method


# virtual methods
.method public final d(I)I
    .locals 0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lve0;->a(I)I

    move-result p0

    return p0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ler5$a;->f:Lze6;

    invoke-interface {v0, p1}, Lze6;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lve0;->b:Lls5;

    invoke-interface {p0, p1}, Lls5;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lve0;->c:Lcp2;

    invoke-interface {v0}, Lcp2;->dispose()V

    invoke-virtual {p0, p1}, Lve0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lve0;->d:Lyv6;

    invoke-interface {v0}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Ler5$a;->f:Lze6;

    invoke-interface {v1, v0}, Lze6;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v0
.end method
