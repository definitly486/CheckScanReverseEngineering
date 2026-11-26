.class public final synthetic Log8;
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

    iput p2, p0, Log8;->b:I

    iput-object p1, p0, Log8;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Log8;->b:I

    iget-object p0, p0, Log8;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/wr1;

    invoke-static {p0}, Lyads/wr1;->a(Lyads/wr1;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/ry2;

    invoke-static {p0}, Lyads/ry2;->a(Lyads/ry2;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->e(Lyads/nq0;)Lyads/ys0;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lx81;

    invoke-static {p0}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->a(Lx81;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->j(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/animation/core/AnimationState;

    invoke-static {p0}, Landroidx/compose/animation/core/SuspendAnimationKt;->j(Landroidx/compose/animation/core/AnimationState;)Lj59;

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
