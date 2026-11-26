.class public final Lyads/zc5;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/transition/TransitionSet;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Lyads/yc5;


# direct methods
.method public constructor <init>(Landroidx/transition/TransitionSet;Landroid/view/ViewGroup;Lyads/yc5;)V
    .locals 0

    iput-object p1, p0, Lyads/zc5;->a:Landroidx/transition/TransitionSet;

    iput-object p2, p0, Lyads/zc5;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lyads/zc5;->c:Lyads/yc5;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Lyads/zc5;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lyads/zc5;->c:Lyads/yc5;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lyads/zc5;->a:Landroidx/transition/TransitionSet;

    invoke-virtual {p1, p0}, Landroidx/transition/TransitionSet;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method
