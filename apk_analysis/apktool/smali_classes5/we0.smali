.class public abstract Lwe0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrh3;
.implements Lmw6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrh3<",
        "TT;>;",
        "Lmw6<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Lwb8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb8<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public c:Lbc8;

.field public d:Lmw6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmw6<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Lwb8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwe0;->b:Lwb8;

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 1

    iget-object v0, p0, Lwe0;->c:Lbc8;

    invoke-static {v0, p1}, Lhc8;->f(Lbc8;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lwe0;->c:Lbc8;

    instance-of v0, p1, Lmw6;

    if-eqz v0, :cond_0

    check-cast p1, Lmw6;

    iput-object p1, p0, Lwe0;->d:Lmw6;

    :cond_0
    iget-object p1, p0, Lwe0;->b:Lwb8;

    invoke-interface {p1, p0}, Lwb8;->a(Lbc8;)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lwe0;->c:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    invoke-virtual {p0, p1}, Lwe0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, Lwe0;->c:Lbc8;

    invoke-interface {p0}, Lbc8;->cancel()V

    return-void
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lwe0;->d:Lmw6;

    invoke-interface {p0}, Liz7;->clear()V

    return-void
.end method

.method public d(I)I
    .locals 2

    iget-object v0, p0, Lwe0;->d:Lmw6;

    if-eqz v0, :cond_0

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Ldw6;->d(I)I

    move-result p1

    if-eqz p1, :cond_1

    iput p1, p0, Lwe0;->f:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lwe0;->d:Lmw6;

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

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lwe0;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lwe0;->e:Z

    iget-object p0, p0, Lwe0;->b:Lwb8;

    invoke-interface {p0}, Lwb8;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lwe0;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lwe0;->e:Z

    iget-object p0, p0, Lwe0;->b:Lwb8;

    invoke-interface {p0, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final request(J)V
    .locals 0

    iget-object p0, p0, Lwe0;->c:Lbc8;

    invoke-interface {p0, p1, p2}, Lbc8;->request(J)V

    return-void
.end method
