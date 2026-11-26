.class public final Loh3$a;
.super Lrk2;
.source "SourceFile"

# interfaces
.implements Lrh3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loh3;
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
        "Lrk2<",
        "TT;>;",
        "Lrh3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Z

.field public e:Lbc8;

.field public f:Z


# direct methods
.method public constructor <init>(Lwb8;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lrk2;-><init>(Lwb8;)V

    iput-boolean p2, p0, Loh3$a;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 2

    iget-object v0, p0, Loh3$a;->e:Lbc8;

    invoke-static {v0, p1}, Lhc8;->f(Lbc8;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Loh3$a;->e:Lbc8;

    iget-object v0, p0, Lrk2;->b:Lwb8;

    invoke-interface {v0, p0}, Lwb8;->a(Lbc8;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 0

    invoke-super {p0}, Lrk2;->cancel()V

    iget-object p0, p0, Loh3$a;->e:Lbc8;

    invoke-interface {p0}, Lbc8;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 2

    iget-boolean v0, p0, Loh3$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Loh3$a;->f:Z

    iget-object v0, p0, Lrk2;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lrk2;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    if-nez v0, :cond_3

    iget-boolean v0, p0, Loh3$a;->d:Z

    iget-object p0, p0, Lrk2;->b:Lwb8;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {p0, v0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-interface {p0}, Lwb8;->onComplete()V

    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lrk2;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Loh3$a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Loh3$a;->f:Z

    iget-object p0, p0, Lrk2;->b:Lwb8;

    invoke-interface {p0, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Loh3$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lrk2;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Loh3$a;->f:Z

    iget-object p1, p0, Loh3$a;->e:Lbc8;

    invoke-interface {p1}, Lbc8;->cancel()V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sequence contains more than one element!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lrk2;->b:Lwb8;

    invoke-interface {p0, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iput-object p1, p0, Lrk2;->c:Ljava/lang/Object;

    return-void
.end method
