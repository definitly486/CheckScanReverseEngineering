.class public final Lcom/androidadvance/topsnackbar/TSnackbar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidadvance/topsnackbar/TSnackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/androidadvance/topsnackbar/TSnackbar;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->b:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->getDragState()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v2, Lsm;->a:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v2, Lcom/androidadvance/topsnackbar/e;

    invoke-direct {v2, p0, p1}, Lcom/androidadvance/topsnackbar/e;-><init>(Lcom/androidadvance/topsnackbar/TSnackbar;I)V

    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/androidadvance/topsnackbar/TSnackbar;->d()V

    return v1

    :cond_3
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/androidadvance/topsnackbar/TSnackbar;

    iget-object p1, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->b:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v3, :cond_4

    new-instance v3, Lcom/androidadvance/topsnackbar/TSnackbar$d;

    invoke-direct {v3, p0}, Lcom/androidadvance/topsnackbar/TSnackbar$d;-><init>(Lcom/androidadvance/topsnackbar/TSnackbar;)V

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v3, v4}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setStartAlphaSwipeDistance(F)V

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v4}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setEndAlphaSwipeDistance(F)V

    invoke-virtual {v3, v0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setSwipeDirection(I)V

    new-instance v0, Lcom/androidadvance/topsnackbar/b;

    invoke-direct {v0, p0}, Lcom/androidadvance/topsnackbar/b;-><init>(Lcom/androidadvance/topsnackbar/TSnackbar;)V

    invoke-virtual {v3, v0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setListener(Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;)V

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    :cond_4
    iget-object v0, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    new-instance v0, Lcom/androidadvance/topsnackbar/c;

    invoke-direct {v0, p0}, Lcom/androidadvance/topsnackbar/c;-><init>(Lcom/androidadvance/topsnackbar/TSnackbar;)V

    invoke-virtual {p1, v0}, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->setOnAttachStateChangeListener(Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout$a;)V

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/androidadvance/topsnackbar/TSnackbar;->a()V

    return v1

    :cond_6
    new-instance v0, Lcom/androidadvance/topsnackbar/d;

    invoke-direct {v0, p0}, Lcom/androidadvance/topsnackbar/d;-><init>(Lcom/androidadvance/topsnackbar/TSnackbar;)V

    invoke-virtual {p1, v0}, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->setOnLayoutChangeListener(Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout$b;)V

    return v1
.end method
