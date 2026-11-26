.class public final synthetic Landroidx/compose/runtime/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/m;->b:Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Set;

    check-cast p2, Landroidx/compose/runtime/snapshots/Snapshot;

    iget-object p0, p0, Landroidx/compose/runtime/m;->b:Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->a(Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)Lj59;

    move-result-object p0

    return-object p0
.end method
