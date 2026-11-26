.class public final Lwg3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwg3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lk0<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final d:Lrm3$i;

.field public final e:I


# direct methods
.method public constructor <init>(Ldh3;I)V
    .locals 0

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    sget-object p1, Lrm3;->a:Lrm3$i;

    iput-object p1, p0, Lwg3;->d:Lrm3$i;

    iput p2, p0, Lwg3;->e:I

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lk0;->c:Lgg3;

    instance-of v1, v0, Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lwg3;->d:Lrm3$i;

    if-eqz v1, :cond_1

    :try_start_0
    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_0

    sget-object p0, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p1, p0}, Lwb8;->a(Lbc8;)V

    invoke-interface {p1}, Lwb8;->onComplete()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1, p0}, Lzg3;->i(Lwb8;Ljava/util/Iterator;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object v0, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p1, v0}, Lwb8;->a(Lbc8;)V

    invoke-interface {p1, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object v0, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p1, v0}, Lwb8;->a(Lbc8;)V

    invoke-interface {p1, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    new-instance v1, Lwg3$a;

    iget p0, p0, Lwg3;->e:I

    invoke-direct {v1, p1, v2, p0}, Lwg3$a;-><init>(Lwb8;Lrm3$i;I)V

    invoke-virtual {v0, v1}, Lgg3;->f(Lrh3;)V

    return-void
.end method
