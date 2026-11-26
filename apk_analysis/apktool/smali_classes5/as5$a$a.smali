.class public final Las5$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lt08;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Las5$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcp2;",
        ">;",
        "Lt08<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Las5$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Las5$a<",
            "*TR;>;"
        }
    .end annotation
.end field

.field public volatile c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Las5$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Las5$a<",
            "*TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Las5$a$a;->b:Las5$a;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Las5$a$a;->b:Las5$a;

    iget-object v1, v0, Las5$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, v0, Las5$a;->d:Lpt;

    invoke-static {p0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Las5$a;->f:Lcp2;

    invoke-interface {p0}, Lcp2;->dispose()V

    invoke-virtual {v0}, Las5$a;->a()V

    invoke-virtual {v0}, Las5$a;->b()V

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_0

    :cond_2
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    invoke-static {p0, p1}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Las5$a$a;->c:Ljava/lang/Object;

    iget-object p0, p0, Las5$a$a;->b:Las5$a;

    invoke-virtual {p0}, Las5$a;->b()V

    return-void
.end method
