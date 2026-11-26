.class public final synthetic Landroidx/compose/runtime/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

.field public final synthetic c:Lno7;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;Lno7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/e;->b:Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    iput-object p2, p0, Landroidx/compose/runtime/e;->c:Lno7;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/e;->b:Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    iget-object p0, p0, Landroidx/compose/runtime/e;->c:Lno7;

    invoke-static {v0, p0, p1}, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->a(Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;Lno7;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
