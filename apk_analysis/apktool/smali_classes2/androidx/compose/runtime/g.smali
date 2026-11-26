.class public final synthetic Landroidx/compose/runtime/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/g;->b:Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Set;

    check-cast p2, Landroidx/compose/runtime/snapshots/Snapshot;

    iget-object p0, p0, Landroidx/compose/runtime/g;->b:Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->b(Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)Lj59;

    move-result-object p0

    return-object p0
.end method
