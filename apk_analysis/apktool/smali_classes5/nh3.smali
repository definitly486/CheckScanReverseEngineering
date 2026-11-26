.class public final Lnh3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnh3$a;
    }
.end annotation


# direct methods
.method public static a(Ldt6;Lwb8;Lxl3;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ldt6<",
            "TT;>;",
            "Lwb8<",
            "-TR;>;",
            "Lxl3<",
            "-TT;+",
            "Ldt6<",
            "+TR;>;>;)Z"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :try_start_0
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p0, :cond_0

    sget-object p0, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p1, p0}, Lwb8;->a(Lbc8;)V

    invoke-interface {p1}, Lwb8;->onComplete()V

    return v0

    :cond_0
    :try_start_1
    invoke-interface {p2, p0}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "The mapper returned a null Publisher"

    invoke-static {p0, p2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ldt6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    instance-of p2, p0, Ljava/util/concurrent/Callable;

    if-eqz p2, :cond_2

    :try_start_2
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_1

    sget-object p0, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p1, p0}, Lwb8;->a(Lbc8;)V

    invoke-interface {p1}, Lwb8;->onComplete()V

    return v0

    :cond_1
    new-instance p2, Lld7;

    invoke-direct {p2, p1, p0}, Lld7;-><init>(Lwb8;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lwb8;->a(Lbc8;)V

    return v0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object p2, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p1, p2}, Lwb8;->a(Lbc8;)V

    invoke-interface {p1, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return v0

    :cond_2
    invoke-interface {p0, p1}, Ldt6;->a(Lwb8;)V

    return v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object p2, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p1, p2}, Lwb8;->a(Lbc8;)V

    invoke-interface {p1, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return v0

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object p2, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p1, p2}, Lwb8;->a(Lbc8;)V

    invoke-interface {p1, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
