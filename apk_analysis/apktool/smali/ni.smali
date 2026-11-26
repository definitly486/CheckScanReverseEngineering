.class public final synthetic Lni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lni;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lni;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/wu1;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lyads/k35;

    invoke-static {p1}, Lyads/vh0;->a(Lyads/k35;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lyads/s11;->b(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lyads/l12;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    invoke-static {p1}, Landroidx/compose/animation/core/SuspendAnimationKt;->b(Landroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/navigation/NavDestination;

    invoke-static {p1}, Landroidx/navigation/internal/NavControllerImpl;->m(Landroidx/navigation/NavDestination;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/material3/ModalWideNavigationRailState;->a(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->d(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentNavigator;->k(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/navigation/fragment/FragmentNavigator$ClearEntryStateViewModel;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Landroid/animation/Animator;

    invoke-static {p1}, Landroidx/core/animation/AnimatorKt;->a(Landroid/animation/Animator;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Landroid/view/TextureView;

    invoke-static {p1}, Landroidx/compose/foundation/AndroidExternalSurface_androidKt;->a(Landroid/view/TextureView;)Lj59;

    move-result-object p0

    return-object p0

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
