.class public final Ltr5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltr5$a;,
        Ltr5$b;
    }
.end annotation


# direct methods
.method public static a(Lwr5;Lls5;Lxl3;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lwr5<",
            "TT;>;",
            "Lls5<",
            "-TR;>;",
            "Lxl3<",
            "-TT;+",
            "Lwr5<",
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

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, p0}, Lls5;->onSubscribe(Lcp2;)V

    invoke-interface {p1}, Lls5;->onComplete()V

    return v0

    :cond_0
    :try_start_1
    invoke-interface {p2, p0}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "The mapper returned a null ObservableSource"

    invoke-static {p0, p2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lwr5;
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

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, p0}, Lls5;->onSubscribe(Lcp2;)V

    invoke-interface {p1}, Lls5;->onComplete()V

    return v0

    :cond_1
    new-instance p2, Ltr5$a;

    invoke-direct {p2, p1, p0}, Ltr5$a;-><init>(Lls5;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lls5;->onSubscribe(Lcp2;)V

    invoke-virtual {p2}, Ltr5$a;->run()V

    return v0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object p2, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, p2}, Lls5;->onSubscribe(Lcp2;)V

    invoke-interface {p1, p0}, Lls5;->onError(Ljava/lang/Throwable;)V

    return v0

    :cond_2
    invoke-interface {p0, p1}, Lwr5;->a(Lls5;)V

    return v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object p2, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, p2}, Lls5;->onSubscribe(Lcp2;)V

    invoke-interface {p1, p0}, Lls5;->onError(Ljava/lang/Throwable;)V

    return v0

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object p2, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, p2}, Lls5;->onSubscribe(Lcp2;)V

    invoke-interface {p1, p0}, Lls5;->onError(Ljava/lang/Throwable;)V

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
