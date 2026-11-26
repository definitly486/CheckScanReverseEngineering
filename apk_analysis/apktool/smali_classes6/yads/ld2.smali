.class public final Lyads/ld2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vq0;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Z


# direct methods
.method public constructor <init>(Lyads/vq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ld2;->a:Lyads/vq0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/ld2;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/ld2;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static final a(Lyads/ld2;)V
    .locals 2

    .line 124
    iget-boolean v0, p0, Lyads/ld2;->d:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lyads/ld2;->a:Lyads/vq0;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lyads/ld2;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lyads/ld2;->d:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 127
    iget-boolean v0, p0, Lyads/ld2;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lyads/ld2;->d:Z

    .line 129
    iget-object v0, p0, Lyads/ld2;->a:Lyads/vq0;

    new-instance v1, Lan3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lan3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lyads/ld2;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroidx/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    :cond_1
    new-instance p2, Landroidx/transition/TransitionSet;

    invoke-direct {p2}, Landroidx/transition/TransitionSet;-><init>()V

    iget-object v0, p0, Lyads/ld2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/jd2;

    iget-object v1, v1, Lyads/jd2;->a:Landroidx/transition/Transition;

    invoke-virtual {p2, v1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    goto :goto_0

    :cond_2
    new-instance v0, Lyads/kd2;

    invoke-direct {v0, p2, p0}, Lyads/kd2;-><init>(Landroidx/transition/TransitionSet;Lyads/ld2;)V

    invoke-virtual {p2, v0}, Landroidx/transition/TransitionSet;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    invoke-static {p1, p2}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    iget-object p1, p0, Lyads/ld2;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/jd2;

    iget-object v0, p2, Lyads/jd2;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/id2;

    iget-object v2, p2, Lyads/jd2;->b:Landroid/view/View;

    iget v3, v1, Lyads/id2;->a:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p2, Lyads/jd2;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lyads/ld2;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lyads/ld2;->c:Ljava/util/ArrayList;

    iget-object p2, p0, Lyads/ld2;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lyads/ld2;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
