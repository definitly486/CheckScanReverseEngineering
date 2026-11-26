.class public final synthetic Lt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lt2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lt2;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/lh1;->b(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lyads/e;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->a(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->c0(Ljava/lang/Object;)Landroidx/compose/ui/text/style/BaselineShift;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-static {p1}, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {p1}, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt;->c(Landroidx/lifecycle/Lifecycle$Event;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
