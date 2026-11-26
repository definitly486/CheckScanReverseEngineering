.class public final Lyads/yf6;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/ViewGroupOverlay;

.field public final synthetic c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroupOverlay;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lyads/yf6;->a:Landroid/view/View;

    iput-object p2, p0, Lyads/yf6;->b:Landroid/view/ViewGroupOverlay;

    iput-object p3, p0, Lyads/yf6;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 3

    iget-object v0, p0, Lyads/yf6;->a:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->save_overlay_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lyads/yf6;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lyads/yf6;->b:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lyads/yf6;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public final onTransitionPause(Landroidx/transition/Transition;)V
    .locals 0

    iget-object p1, p0, Lyads/yf6;->b:Landroid/view/ViewGroupOverlay;

    iget-object p0, p0, Lyads/yf6;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public final onTransitionResume(Landroidx/transition/Transition;)V
    .locals 0

    iget-object p1, p0, Lyads/yf6;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lyads/yf6;->b:Landroid/view/ViewGroupOverlay;

    iget-object p0, p0, Lyads/yf6;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0

    iget-object p0, p0, Lyads/yf6;->a:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
