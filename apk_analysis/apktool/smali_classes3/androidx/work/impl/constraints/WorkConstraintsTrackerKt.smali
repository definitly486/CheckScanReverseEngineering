.class public final Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DefaultNetworkRequestTimeoutMs:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkConstraintsTracker"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final NetworkRequestConstraintController(Landroid/content/Context;)Landroidx/work/impl/constraints/NetworkRequestConstraintController;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    check-cast v1, Landroid/net/ConnectivityManager;

    new-instance v0, Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/constraints/NetworkRequestConstraintController;-><init>(Landroid/net/ConnectivityManager;JILjh2;)V

    return-object v0
.end method

.method public static final synthetic access$createControllers(Landroidx/work/impl/constraints/trackers/Trackers;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->createControllers(Landroidx/work/impl/constraints/trackers/Trackers;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static final createControllers(Landroidx/work/impl/constraints/trackers/Trackers;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/constraints/trackers/Trackers;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/constraints/controllers/ConstraintController;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/work/impl/constraints/controllers/BatteryChargingController;

    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/Trackers;->getBatteryChargingTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/work/impl/constraints/controllers/BatteryChargingController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    new-instance v1, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;

    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/Trackers;->getBatteryNotLowTracker()Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;-><init>(Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;)V

    new-instance v2, Landroidx/work/impl/constraints/controllers/StorageNotLowController;

    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/Trackers;->getStorageNotLowTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/work/impl/constraints/controllers/StorageNotLowController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    const/4 v3, 0x3

    new-array v4, v3, [Landroidx/work/impl/constraints/controllers/ConstraintController;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    aput-object v2, v4, v1

    invoke-static {v4}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v4, v6, :cond_0

    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/Trackers;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->NetworkRequestConstraintController(Landroid/content/Context;)Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_0
    new-instance v4, Landroidx/work/impl/constraints/controllers/NetworkConnectedControllerPre28;

    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v6}, Landroidx/work/impl/constraints/controllers/NetworkConnectedControllerPre28;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    new-instance v6, Landroidx/work/impl/constraints/controllers/NetworkUnmeteredControllerPre28;

    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/work/impl/constraints/controllers/NetworkUnmeteredControllerPre28;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    new-instance v7, Landroidx/work/impl/constraints/controllers/NetworkNotRoamingControllerPre28;

    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/work/impl/constraints/controllers/NetworkNotRoamingControllerPre28;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    new-instance v8, Landroidx/work/impl/constraints/controllers/NetworkMeteredControllerPre28;

    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object p0

    invoke-direct {v8, p0}, Landroidx/work/impl/constraints/controllers/NetworkMeteredControllerPre28;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    const/4 p0, 0x4

    new-array p0, p0, [Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    aput-object v4, p0, v5

    aput-object v6, p0, v0

    aput-object v7, p0, v1

    aput-object v8, p0, v3

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public static final listen(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lr22;Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;)Lmb4;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p2

    new-instance v0, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt$listen$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt$listen$1;-><init>(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;Le02;)V

    const/4 p0, 0x3

    invoke-static {p2, v1, v1, v0, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    return-object p0
.end method
