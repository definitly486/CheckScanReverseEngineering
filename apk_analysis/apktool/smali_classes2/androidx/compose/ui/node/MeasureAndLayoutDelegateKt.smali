.class public final Landroidx/compose/ui/node/MeasureAndLayoutDelegateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final traceMeasureLayout(Ljava/lang/String;Lll3;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lll3<",
            "+TT;>;)TT;"
        }
    .end annotation

    sget-boolean v0, Landroidx/compose/runtime/tooling/ComposeToolingFlags;->isVerboseTracingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_0
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final traceMeasureLayoutIf(ZLjava/lang/String;Lll3;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/lang/String;",
            "Lll3<",
            "+TT;>;)TT;"
        }
    .end annotation

    sget-boolean v0, Landroidx/compose/runtime/tooling/ComposeToolingFlags;->isVerboseTracingEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_0
    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
