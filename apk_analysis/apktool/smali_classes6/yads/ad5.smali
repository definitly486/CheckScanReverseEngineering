.class public abstract Lyads/ad5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/ViewGroup;Landroidx/transition/TransitionSet;)V
    .locals 2

    new-instance v0, Lyads/yc5;

    invoke-direct {v0, p0}, Lyads/yc5;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v1, Lyads/zc5;

    invoke-direct {v1, p1, p0, v0}, Lyads/zc5;-><init>(Landroidx/transition/TransitionSet;Landroid/view/ViewGroup;Lyads/yc5;)V

    invoke-virtual {p1, v1}, Landroidx/transition/TransitionSet;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method
