.class public final synthetic Landroidx/compose/runtime/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/l;->b:Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/l;->b:Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    invoke-static {p0, p1}, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->b(Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
