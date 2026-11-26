.class public final synthetic Lb03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lb03;->b:I

    iput-object p1, p0, Lb03;->c:Ljava/lang/Object;

    iput-object p2, p0, Lb03;->d:Ljava/lang/Object;

    iput-object p3, p0, Lb03;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lb03;->b:I

    iget-object v1, p0, Lb03;->e:Ljava/lang/Object;

    iget-object v2, p0, Lb03;->d:Ljava/lang/Object;

    iget-object p0, p0, Lb03;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/navigation/fragment/FragmentNavigator;

    check-cast v2, Landroidx/fragment/app/Fragment;

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p0, v2, v1, p1}, Landroidx/navigation/fragment/FragmentNavigator;->e(Landroidx/navigation/fragment/FragmentNavigator;Landroidx/fragment/app/Fragment;Landroidx/navigation/NavBackStackEntry;Landroidx/lifecycle/LifecycleOwner;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lll3;

    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    check-cast v1, Landroidx/compose/animation/core/DecayAnimationSpec;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, v2, v1, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$Companion;->a(Lll3;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Ljava/util/List;)Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
