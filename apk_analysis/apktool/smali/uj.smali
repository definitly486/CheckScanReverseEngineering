.class public final synthetic Luj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Luj;->b:I

    iput-object p1, p0, Luj;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Luj;->b:I

    iget-object p0, p0, Luj;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/sc3;

    invoke-static {p0}, Lyads/sc3;->a(Lyads/sc3;)Lyads/un4;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->x(Lyads/nq0;)Lyads/cs1;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/lb;

    invoke-static {p0}, Lyads/lb;->a(Lyads/lb;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/text/selection/SelectionManager;

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->a(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lnl3;

    invoke-static {p0}, Landroidx/compose/runtime/retain/RetainedEffectKt;->c(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/runtime/State;

    invoke-static {p0}, Landroidx/compose/material3/NavigationRailKt;->e(Landroidx/compose/runtime/State;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/room/InvalidationTracker;

    invoke-static {p0}, Landroidx/room/InvalidationTracker;->b(Landroidx/room/InvalidationTracker;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Landroidx/compose/material3/DrawerState;

    invoke-static {p0}, Landroidx/compose/material3/DrawerState;->c(Landroidx/compose/material3/DrawerState;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lfs1;

    iget-object v0, p0, Lfs1;->e:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lll3;

    invoke-interface {v4}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v1}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lkx2;->b:Lkx2;

    iput-object v0, p0, Lfs1;->e:Ljava/util/List;

    return-object v1

    :pswitch_8
    check-cast p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->b(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Landroidx/compose/foundation/text/selection/OffsetProvider;

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->i(Landroidx/compose/foundation/text/selection/OffsetProvider;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
