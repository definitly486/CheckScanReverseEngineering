.class public abstract Lyads/gr4;
.super Landroidx/transition/Visibility;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object v1, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v2, v1, Lyads/r16;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lyads/r16;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Lyads/r16;->b(Landroid/view/View;)V

    :cond_2
    new-instance v1, Lyads/er4;

    invoke-direct {v1, p0, v0, p4}, Lyads/er4;-><init>(Lyads/gr4;Lyads/r16;Landroidx/transition/TransitionValues;)V

    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    invoke-super/range {p0 .. p5}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public final onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v2, v1, Lyads/r16;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lyads/r16;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Lyads/r16;->b(Landroid/view/View;)V

    :cond_2
    new-instance v1, Lyads/fr4;

    invoke-direct {v1, p0, v0, p2}, Lyads/fr4;-><init>(Lyads/gr4;Lyads/r16;Landroidx/transition/TransitionValues;)V

    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    invoke-super/range {p0 .. p5}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method
