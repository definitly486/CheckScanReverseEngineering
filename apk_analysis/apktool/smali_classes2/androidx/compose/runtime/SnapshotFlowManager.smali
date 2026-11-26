.class public final Landroidx/compose/runtime/SnapshotFlowManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private managerImpl:Landroidx/compose/runtime/SnapshotFlowManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    invoke-direct {v0}, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SnapshotFlowManager;->managerImpl:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/SnapshotFlowManager;->managerImpl:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "Called dispose on a manager that has been disposed of"

    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->dispose$runtime()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/SnapshotFlowManager;->managerImpl:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    return-void
.end method

.method public final reportSnapshotFlowCancellation$runtime(Lno7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lno7<",
            "-",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/SnapshotFlowManager;->managerImpl:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->reportSnapshotFlowCancellation$runtime(Lno7;)V

    :cond_0
    return-void
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

    iget-object v0, p0, Landroidx/compose/runtime/SnapshotFlowManager;->managerImpl:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Called runAndWatch on a manager that has been disposed of"

    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotFlowManager;->managerImpl:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    instance-of v1, v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    invoke-virtual {v0}, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->getSubscribedChannel()Lno7;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->promote()Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SnapshotFlowManager;->managerImpl:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    :cond_2
    iget-object p0, p0, Landroidx/compose/runtime/SnapshotFlowManager;->managerImpl:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->runAndWatch$runtime(Lno7;Lll3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
