.class public abstract Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/control/Toggle;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->a:Ljava/lang/String;

    iput-boolean p1, p0, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->b:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getActualState()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->a:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized registerObserver(Lio/appmetrica/analytics/coreapi/internal/control/ToggleObserver;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->getActualState()Z

    move-result p2

    invoke-interface {p1, p2}, Lio/appmetrica/analytics/coreapi/internal/control/ToggleObserver;->onStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeObserver(Lio/appmetrica/analytics/coreapi/internal/control/ToggleObserver;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized updateState(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->getActualState()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->b:Z

    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/coreapi/internal/control/ToggleObserver;

    invoke-interface {v1, p1}, Lio/appmetrica/analytics/coreapi/internal/control/ToggleObserver;->onStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
