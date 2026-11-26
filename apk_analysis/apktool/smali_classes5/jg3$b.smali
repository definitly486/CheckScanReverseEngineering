.class public abstract Ljg3$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrh3;
.implements Ljg3$f;
.implements Lbc8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrh3<",
        "TT;>;",
        "Ljg3$f<",
        "TR;>;",
        "Lbc8;"
    }
.end annotation


# instance fields
.field public final b:Ljg3$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg3$e<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;+",
            "Ldt6<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public f:Lbc8;

.field public g:I

.field public h:Liz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liz7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile i:Z

.field public volatile j:Z

.field public final k:Lpt;

.field public volatile l:Z

.field public m:I


# direct methods
.method public constructor <init>(Lxl3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxl3<",
            "-TT;+",
            "Ldt6<",
            "+TR;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ljg3$b;->c:Lxl3;

    iput p2, p0, Ljg3$b;->d:I

    iput p2, p0, Ljg3$b;->e:I

    new-instance p1, Ljg3$e;

    invoke-direct {p1, p0}, Ljg3$e;-><init>(Ljg3$b;)V

    iput-object p1, p0, Ljg3$b;->b:Ljg3$e;

    new-instance p1, Lpt;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ljg3$b;->k:Lpt;

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 3

    iget-object v0, p0, Ljg3$b;->f:Lbc8;

    invoke-static {v0, p1}, Lhc8;->f(Lbc8;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Ljg3$b;->f:Lbc8;

    instance-of v0, p1, Lmw6;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lmw6;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ldw6;->d(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, Ljg3$b;->m:I

    iput-object v0, p0, Ljg3$b;->h:Liz7;

    iput-boolean v2, p0, Ljg3$b;->i:Z

    invoke-virtual {p0}, Ljg3$b;->g()V

    invoke-virtual {p0}, Ljg3$b;->f()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, Ljg3$b;->m:I

    iput-object v0, p0, Ljg3$b;->h:Liz7;

    invoke-virtual {p0}, Ljg3$b;->g()V

    iget p0, p0, Ljg3$b;->d:I

    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    return-void

    :cond_1
    new-instance v0, Lm68;

    iget v1, p0, Ljg3$b;->d:I

    invoke-direct {v0, v1}, Lm68;-><init>(I)V

    iput-object v0, p0, Ljg3$b;->h:Liz7;

    invoke-virtual {p0}, Ljg3$b;->g()V

    iget p0, p0, Ljg3$b;->d:I

    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    :cond_2
    return-void
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljg3$b;->i:Z

    invoke-virtual {p0}, Ljg3$b;->f()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Ljg3$b;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljg3$b;->h:Liz7;

    invoke-interface {v0, p1}, Liz7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ljg3$b;->f:Lbc8;

    invoke-interface {p1}, Lbc8;->cancel()V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljg3$b;->f()V

    return-void
.end method
