.class public final synthetic Lff;
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

    iput p2, p0, Lff;->b:I

    iput-object p1, p0, Lff;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lff;->b:I

    iget-object p0, p0, Lff;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/zm;

    invoke-static {p0}, Lyads/zm;->a(Lyads/zm;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->B(Lyads/nq0;)Lyads/lz1;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/material3/TimePickerState;

    invoke-static {p0}, Landroidx/compose/material3/TimePickerKt;->b(Landroidx/compose/material3/TimePickerState;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-static {p0}, Landroidx/savedstate/SavedStateRegistryController$Companion;->a(Landroidx/savedstate/SavedStateRegistryOwner;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;

    invoke-static {p0}, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->a(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->f(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/tooling/ComposeStackTrace;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/activity/ComponentDialog;

    invoke-static {p0}, Landroidx/activity/ComponentDialog;->a(Landroidx/activity/ComponentDialog;)Landroidx/navigationevent/DirectNavigationEventInput;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    invoke-static {p0}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->d(Landroidx/compose/foundation/gestures/AnchoredDraggableState;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
