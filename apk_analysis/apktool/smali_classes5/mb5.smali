.class public final Lmb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb5;


# virtual methods
.method public final a(Landroid/content/Context;Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Lla3;)Landroidx/camera/core/ImageAnalysis$Analyzer;
    .locals 1

    :try_start_0
    new-instance p0, Lnb5;

    invoke-direct {p0, p2, p3}, Lnb5;-><init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Lla3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Lk57$a;

    invoke-direct {v0, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    :try_start_1
    sget-object p0, Ljb5;->b:Ljava/lang/Object;

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0}, Ljb5;->d(Landroid/content/Context;Ljava/util/concurrent/Executor;)Ljb5;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance p0, Lnb5;

    invoke-direct {p0, p2, p3}, Lnb5;-><init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Lla3;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    nop

    instance-of p1, p0, Lk57$a;

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    check-cast p0, Lnb5;

    :goto_3
    check-cast p0, Landroidx/camera/core/ImageAnalysis$Analyzer;

    return-object p0
.end method
