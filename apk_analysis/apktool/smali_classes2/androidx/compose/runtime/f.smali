.class public final synthetic Landroidx/compose/runtime/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/f;->b:Ljava/util/Set;

    iput-object p2, p0, Landroidx/compose/runtime/f;->c:Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/f;->b:Ljava/util/Set;

    iget-object p0, p0, Landroidx/compose/runtime/f;->c:Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    invoke-static {v0, p0, p1}, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->c(Ljava/util/Set;Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
