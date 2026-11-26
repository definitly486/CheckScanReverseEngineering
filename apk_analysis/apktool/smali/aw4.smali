.class public final synthetic Law4;
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

    iput p2, p0, Law4;->b:I

    iput-object p1, p0, Law4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Law4;->b:I

    iget-object p0, p0, Law4;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/za2;

    invoke-static {p0}, Lyads/za2;->c(Lyads/za2;)Lyads/hl5;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/l51;

    invoke-static {p0}, Lyads/l51;->a(Lyads/l51;)Lyads/g51;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/camera/camera2/impl/ZoomControl;

    invoke-static {p0}, Landroidx/camera/camera2/impl/ZoomControl;->a(Landroidx/camera/camera2/impl/ZoomControl;)Landroidx/camera/camera2/adapter/ZoomValue;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/material3/TimePickerState;

    invoke-static {p0}, Landroidx/compose/material3/TimePickerKt;->f(Landroidx/compose/material3/TimePickerState;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;->f(Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/ui/unit/Density;

    invoke-static {p0}, Landroidx/compose/material3/SwipeToDismissBoxState;->b(Landroidx/compose/ui/unit/Density;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    invoke-static {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->b(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Landroidx/navigation/NavDeepLink;

    invoke-static {p0}, Landroidx/navigation/NavDeepLink;->a(Landroidx/navigation/NavDeepLink;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lx81;

    invoke-static {p0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->b(Lx81;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Landroidx/compose/foundation/text/TextDragObserver;

    invoke-static {p0}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt;->b(Landroidx/compose/foundation/text/TextDragObserver;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
