.class public final Landroidx/compose/ui/text/platform/Synchronization_jvmKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final makeSynchronizedObject(Ljava/lang/Object;)Landroidx/compose/ui/text/platform/SynchronizedObject;
    .locals 0

    new-instance p0, Landroidx/compose/ui/text/platform/SynchronizedObject;

    invoke-direct {p0}, Landroidx/compose/ui/text/platform/SynchronizedObject;-><init>()V

    return-object p0
.end method

.method public static synthetic makeSynchronizedObject$default(Ljava/lang/Object;ILjava/lang/Object;)Landroidx/compose/ui/text/platform/SynchronizedObject;
    .locals 0

    new-instance p0, Landroidx/compose/ui/text/platform/SynchronizedObject;

    invoke-direct {p0}, Landroidx/compose/ui/text/platform/SynchronizedObject;-><init>()V

    return-object p0
.end method

.method public static final synchronized(Landroidx/compose/ui/text/platform/SynchronizedObject;Lll3;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/text/platform/SynchronizedObject;",
            "Lll3<",
            "+TR;>;)TR;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
