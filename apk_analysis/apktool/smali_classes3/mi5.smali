.class public final synthetic Lmi5;
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

    iput p2, p0, Lmi5;->b:I

    iput-object p1, p0, Lmi5;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmi5;->b:I

    iget-object p0, p0, Lmi5;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/transition/TransitionValues;

    check-cast p1, [I

    invoke-static {p0, p1}, Lyads/q96;->a(Landroidx/transition/TransitionValues;[I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lbm3;

    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    invoke-static {p0, p1}, Landroidx/compose/animation/core/SuspendAnimationKt;->h(Lbm3;Landroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/navigationevent/compose/NavigationEventState;

    check-cast p1, Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-static {p0, p1}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->b(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/NavigationEventTransitionState;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/navigation/internal/NavControllerImpl;

    check-cast p1, Landroidx/navigation/NavDestination;

    invoke-static {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->n(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
