.class public abstract Landroidx/compose/runtime/SnapshotFlowManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract clearWatchSet$runtime(Lno7;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lno7<",
            "-",
            "Lj59;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract commitSubscriptionChanges$runtime()V
.end method

.method public abstract dispose$runtime()V
.end method

.method public final getLock()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public abstract readObserverFor$runtime(Lno7;)Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lno7<",
            "-",
            "Lj59;",
            ">;)",
            "Lnl3<",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reportSnapshotFlowCancellation$runtime(Lno7;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lno7<",
            "-",
            "Lj59;",
            ">;)V"
        }
    .end annotation
.end method

.method public final runAndWatch$runtime(Lno7;Lll3;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lno7<",
            "-",
            "Lj59;",
            ">;",
            "Lll3<",
            "+TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->readObserverFor$runtime(Lno7;)Lnl3;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeSnapshot(Lnl3;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->clearWatchSet$runtime(Lno7;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->commitSubscriptionChanges$runtime()V

    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw p0
.end method

.method public abstract watch$runtime(Lno7;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lno7<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
