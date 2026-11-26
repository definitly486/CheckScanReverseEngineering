.class public final synthetic Lrf;
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

    iput p2, p0, Lrf;->b:I

    iput-object p1, p0, Lrf;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lrf;->b:I

    iget-object p0, p0, Lrf;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/animation/core/AnimationSpec;

    check-cast p1, Landroidx/compose/material3/WideNavigationRailValue;

    invoke-static {p0, p1}, Landroidx/compose/material3/WideNavigationRailStateImpl$Companion;->b(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/material3/WideNavigationRailValue;)Landroidx/compose/material3/WideNavigationRailState;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lr07;

    check-cast p1, Landroidx/compose/ui/layout/Placeable;

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlowLayoutKt;->d(Lr07;Landroidx/compose/ui/layout/Placeable;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lnl3;

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;->g(Lnl3;Ljava/lang/Object;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
