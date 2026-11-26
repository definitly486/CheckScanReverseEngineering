.class public final Lcom/my/target/p0;
.super Lcom/my/target/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/p0$a;
    }
.end annotation


# instance fields
.field public j:Ljava/util/ArrayList;

.field public k:Ljava/lang/ref/WeakReference;


# virtual methods
.method public final b(Lao9;)V
    .locals 3

    iget-object v0, p1, Lao9;->Q:Lpp9;

    const/16 v1, 0x138c

    invoke-virtual {v0, v1}, Lpp9;->c(I)V

    iget-object p1, p1, Lao9;->a:Ln4a;

    new-instance v0, Lud;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "closedByUser"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    iget-object p1, p0, Lcom/my/target/p0;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2a;

    iget-boolean v0, v0, Lv2a;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/my/target/r;->t()V

    return-void
.end method

.method public final f(Lcom/my/target/common/MyTargetActivity;Landroid/content/Intent;Landroid/widget/FrameLayout;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/my/target/r;->f(Lcom/my/target/common/MyTargetActivity;Landroid/content/Intent;Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/my/target/p0;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2a;

    iget-object v1, v0, Lv2a;->a:Lxda;

    iget-object v2, v1, Lao9;->Q:Lpp9;

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Lpp9;->c(I)V

    iget-object v2, v0, Lv2a;->b:Lcom/my/target/e3;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/my/target/e3;->f()V

    iget-object v2, v1, Lxda;->Z:Lkha;

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v3, v2, v4}, Lcom/my/target/e3;->a(Lao9;ILkha;Landroid/content/Context;)Lcom/my/target/e3;

    move-result-object v1

    iput-object v1, v0, Lv2a;->b:Lcom/my/target/e3;

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/my/target/j1;

    invoke-direct {v0, p2}, Lcom/my/target/j1;-><init>(Landroid/content/Context;)V

    new-instance p2, Lcom/my/target/p0$a;

    invoke-direct {p2, p0}, Lcom/my/target/p0$a;-><init>(Lcom/my/target/p0;)V

    new-instance v1, Lcom/my/target/w1;

    invoke-direct {v1, v0, p1, p2}, Lcom/my/target/w1;-><init>(Lcom/my/target/j1;Ljava/util/ArrayList;Lcom/my/target/p0$a;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/my/target/p0;->k:Ljava/lang/ref/WeakReference;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, v1, Lcom/my/target/w1;->i:Lcom/my/target/w4;

    invoke-interface {v0}, Lefa;->getRootLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/my/target/p0;->j:Ljava/util/ArrayList;

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-virtual {p0}, Lcom/my/target/p0;->v()Lcom/my/target/t1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/my/target/t1;->stop()V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/r;->d:Z

    invoke-virtual {p0}, Lcom/my/target/p0;->v()Lcom/my/target/t1;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/my/target/t1;->resume()V

    iget-object p0, p0, Lcom/my/target/p0;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2a;

    iget-object v2, v1, Lv2a;->d:Lcom/my/target/x0;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/my/target/t1;->i()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/my/target/x0;->c(Landroid/view/View;)V

    :cond_0
    iget-object v1, v1, Lv2a;->c:Lcom/my/target/n0;

    invoke-interface {v0}, Lcom/my/target/t1;->i()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/n0;->b(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/my/target/n0;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final p()V
    .locals 5

    invoke-super {p0}, Lcom/my/target/r;->p()V

    iget-object v0, p0, Lcom/my/target/p0;->k:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/t1;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/my/target/t1;->i()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-interface {v0}, Lcom/my/target/t1;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/my/target/p0;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iput-object v1, p0, Lcom/my/target/p0;->k:Ljava/lang/ref/WeakReference;

    :cond_2
    iget-object p0, p0, Lcom/my/target/p0;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2a;

    iget-object v2, v0, Lv2a;->d:Lcom/my/target/x0;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/my/target/x0;->e()V

    iput-object v1, v0, Lv2a;->d:Lcom/my/target/x0;

    :cond_4
    iget-object v0, v0, Lv2a;->b:Lcom/my/target/e3;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/my/target/e3;->f()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final q()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/r;->d:Z

    invoke-virtual {p0}, Lcom/my/target/p0;->v()Lcom/my/target/t1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/my/target/t1;->pause()V

    :cond_0
    iget-object p0, p0, Lcom/my/target/p0;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2a;

    iget-object v1, v0, Lv2a;->d:Lcom/my/target/x0;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/my/target/x0;->e()V

    :cond_1
    iget-object v0, v0, Lv2a;->c:Lcom/my/target/n0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/n0;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final u()Z
    .locals 1

    iget-object p0, p0, Lcom/my/target/p0;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2a;

    iget-boolean v0, v0, Lv2a;->g:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final v()Lcom/my/target/t1;
    .locals 0

    iget-object p0, p0, Lcom/my/target/p0;->k:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/my/target/t1;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
