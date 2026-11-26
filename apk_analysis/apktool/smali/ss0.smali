.class public final synthetic Lss0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lss0;->b:I

    iput-object p1, p0, Lss0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lss0;->b:I

    iget-object p0, p0, Lss0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/lifecycle/MediatorLiveData;

    invoke-static {p0, p1}, Landroidx/lifecycle/Transformations$switchMap$2;->a(Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lnl3;

    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->b(Lnl3;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/window/embedding/OverlayControllerImpl;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Landroidx/window/embedding/OverlayControllerImpl;->b(Landroidx/window/embedding/OverlayControllerImpl;Ljava/util/List;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/BorderModifierNode;

    check-cast p1, Landroidx/compose/ui/draw/CacheDrawScope;

    invoke-static {p0, p1}, Landroidx/compose/foundation/BorderModifierNode;->b(Landroidx/compose/foundation/BorderModifierNode;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
