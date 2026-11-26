.class public final Lcom/my/target/m2;
.super Lcom/my/target/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/m2$a;,
        Lcom/my/target/m2$b;
    }
.end annotation


# instance fields
.field public final j:Ls5a;

.field public final k:Lcom/my/target/n0;

.field public l:Lcom/my/target/e3;

.field public m:Lxda;

.field public n:Ljava/lang/ref/WeakReference;

.field public o:Lcom/my/target/x0;


# direct methods
.method public constructor <init>(Lz94;Lxda;Lkia;Lz94$b;Lz94$b;)V
    .locals 0

    invoke-direct {p0, p4, p1, p5}, Lcom/my/target/r;-><init>(Lz94$b;Lz94;Lz94$b;)V

    iput-object p2, p0, Lcom/my/target/m2;->m:Lxda;

    iget-object p1, p2, Lao9;->a:Ln4a;

    new-instance p3, Li01;

    invoke-direct {p3, p4, p2}, Li01;-><init>(Lz94$b;Lxda;)V

    invoke-static {p1, p3}, Lcom/my/target/n0;->a(Ln4a;Lcom/my/target/m1$b;)Lcom/my/target/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/my/target/m2;->k:Lcom/my/target/n0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p1, Ln4a;->c:Ljava/util/HashSet;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p3, Ls5a;

    iget-object p1, p1, Ln4a;->a:Lpp9;

    const/4 p4, 0x0

    invoke-direct {p3, p2, p1, p4}, Ls5a;-><init>(Ljava/util/List;Lpp9;Lik0;)V

    iput-object p3, p0, Lcom/my/target/m2;->j:Ls5a;

    return-void
.end method


# virtual methods
.method public final f(Lcom/my/target/common/MyTargetActivity;Landroid/content/Intent;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/my/target/r;->f(Lcom/my/target/common/MyTargetActivity;Landroid/content/Intent;Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/my/target/m2;->m:Lxda;

    invoke-virtual {p0, p1, p3}, Lcom/my/target/m2;->v(Lxda;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-virtual {p0}, Lcom/my/target/m2;->w()Lcom/my/target/t1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/my/target/t1;->stop()V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/r;->d:Z

    invoke-virtual {p0}, Lcom/my/target/m2;->w()Lcom/my/target/t1;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/my/target/t1;->resume()V

    iget-object v1, p0, Lcom/my/target/m2;->o:Lcom/my/target/x0;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/my/target/t1;->i()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/x0;->c(Landroid/view/View;)V

    :cond_0
    invoke-interface {v0}, Lcom/my/target/t1;->i()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/my/target/m2;->k:Lcom/my/target/n0;

    invoke-virtual {p0, v0}, Lcom/my/target/n0;->b(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/my/target/n0;->c()V

    :cond_1
    return-void
.end method

.method public final p()V
    .locals 5

    invoke-super {p0}, Lcom/my/target/r;->p()V

    iget-object v0, p0, Lcom/my/target/m2;->m:Lxda;

    iget v0, v0, Ljia;->S:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/my/target/r;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/r;->e:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/my/target/m2;->n:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/t1;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/my/target/t1;->i()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-interface {v0}, Lcom/my/target/t1;->destroy()V

    :cond_3
    iget-object v0, p0, Lcom/my/target/m2;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iput-object v1, p0, Lcom/my/target/m2;->n:Ljava/lang/ref/WeakReference;

    :cond_4
    iget-object v0, p0, Lcom/my/target/m2;->o:Lcom/my/target/x0;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/my/target/x0;->e()V

    iput-object v1, p0, Lcom/my/target/m2;->o:Lcom/my/target/x0;

    :cond_5
    iget-object p0, p0, Lcom/my/target/m2;->l:Lcom/my/target/e3;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/my/target/e3;->f()V

    :cond_6
    return-void
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/r;->d:Z

    invoke-virtual {p0}, Lcom/my/target/m2;->w()Lcom/my/target/t1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/my/target/t1;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/m2;->o:Lcom/my/target/x0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/my/target/x0;->e()V

    :cond_1
    iget-object p0, p0, Lcom/my/target/m2;->k:Lcom/my/target/n0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/my/target/n0;->b(Landroid/view/View;)V

    return-void
.end method

.method public final u()Z
    .locals 0

    iget-object p0, p0, Lcom/my/target/m2;->m:Lxda;

    iget-boolean p0, p0, Ljia;->W:Z

    return p0
.end method

.method public final v(Lxda;Landroid/view/ViewGroup;)V
    .locals 11

    iget-object v0, p0, Lcom/my/target/m2;->l:Lcom/my/target/e3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/e3;->f()V

    :cond_0
    iget-object v0, p1, Lao9;->Q:Lpp9;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lpp9;->c(I)V

    iget-object v0, p1, Lxda;->Z:Lkha;

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1, v3, v0, v4}, Lcom/my/target/e3;->a(Lao9;ILkha;Landroid/content/Context;)Lcom/my/target/e3;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/m2;->l:Lcom/my/target/e3;

    iget v3, p1, Lxda;->f0:I

    if-ne v3, v1, :cond_3

    iget-object v1, p1, Lxda;->X:Lev9;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lcom/my/target/f3;

    invoke-direct {v4, v1, v0, v2}, Lcom/my/target/f3;-><init>(Lev9;Lcom/my/target/e3;Landroid/content/Context;)V

    new-instance v6, Lcom/my/target/m2$a;

    invoke-direct {v6, p0}, Lcom/my/target/m2$a;-><init>(Lcom/my/target/m2;)V

    new-instance v7, Lcom/my/target/m2$b;

    invoke-direct {v7, p0}, Lcom/my/target/m2$b;-><init>(Lcom/my/target/m2;)V

    new-instance v8, Lrd0;

    invoke-direct {v8, p0, p1}, Lrd0;-><init>(Lcom/my/target/m2;Lxda;)V

    new-instance v3, Lcom/my/target/c3;

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/my/target/c3;-><init>(Lcom/my/target/f3;Lxda;Lcom/my/target/m2$a;Lcom/my/target/m2$b;Lrd0;)V

    move-object v6, v5

    iget-object p1, v3, Lcom/my/target/c3;->l:Lcom/my/target/t2;

    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/my/target/t2;->c:Lkha;

    iget-boolean v0, v0, Lkha;->Y:Z

    iget-object v1, p1, Lcom/my/target/t2;->b:Lcom/my/target/c3;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/my/target/c3;->l()V

    invoke-virtual {p1}, Lcom/my/target/t2;->i()V

    goto/16 :goto_2

    :cond_2
    iget-object p1, v1, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/my/target/hg;->d(Z)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/my/target/hg;->a(ILjava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/my/target/hg;->e(Z)V

    iget-object p1, v1, Lcom/my/target/c3;->g:Lcom/my/target/dg;

    invoke-interface {p1, v2}, Liq9;->setVisible(Z)V

    goto :goto_2

    :cond_3
    move-object v6, p1

    if-ne v3, v2, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v5, Lcom/my/target/s;

    invoke-direct {v5, v0, p1}, Lcom/my/target/s;-><init>(Lcom/my/target/e3;Landroid/content/Context;)V

    new-instance v7, Lcom/my/target/m2$a;

    invoke-direct {v7, p0}, Lcom/my/target/m2$a;-><init>(Lcom/my/target/m2;)V

    new-instance v8, Lcom/my/target/m2$b;

    invoke-direct {v8, p0}, Lcom/my/target/m2$b;-><init>(Lcom/my/target/m2;)V

    new-instance v9, Lm5;

    invoke-direct {v9, p0, v6}, Lm5;-><init>(Lcom/my/target/m2;Lxda;)V

    new-instance v4, Lcom/my/target/z1;

    invoke-direct/range {v4 .. v9}, Lcom/my/target/z1;-><init>(Lcom/my/target/s;Lxda;Lcom/my/target/m2$a;Lcom/my/target/m2$b;Lm5;)V

    iget-object p1, v4, Lcom/my/target/z1;->n:Lkha;

    if-eqz p1, :cond_6

    iget-object v0, v4, Lcom/my/target/z1;->o:Lcom/my/target/yj;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean p1, p1, Lkha;->Y:Z

    if-eqz p1, :cond_5

    invoke-virtual {v4}, Lcom/my/target/z1;->v()V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/my/target/yj;->e()V

    :cond_6
    :goto_1
    move-object v3, v4

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v5, Lcom/my/target/x2;

    invoke-direct {v5, v0, p1}, Lcom/my/target/x2;-><init>(Lcom/my/target/e3;Landroid/content/Context;)V

    new-instance v7, Lcom/my/target/m2$a;

    invoke-direct {v7, p0}, Lcom/my/target/m2$a;-><init>(Lcom/my/target/m2;)V

    new-instance v8, Lcom/my/target/m2$b;

    invoke-direct {v8, p0}, Lcom/my/target/m2$b;-><init>(Lcom/my/target/m2;)V

    new-instance v9, Ln5;

    invoke-direct {v9, p0, v6}, Ln5;-><init>(Lcom/my/target/m2;Lxda;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v4, Lcom/my/target/w2;

    invoke-direct/range {v4 .. v10}, Lcom/my/target/w2;-><init>(Lcom/my/target/x2;Lxda;Lcom/my/target/m2$a;Lcom/my/target/m2$b;Ln5;Landroid/content/Context;)V

    goto :goto_1

    :cond_8
    :goto_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/my/target/m2;->n:Ljava/lang/ref/WeakReference;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-interface {v3}, Lcom/my/target/t1;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v6, p0, Lcom/my/target/m2;->m:Lxda;

    return-void
.end method

.method public final w()Lcom/my/target/t1;
    .locals 0

    iget-object p0, p0, Lcom/my/target/m2;->n:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/my/target/t1;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
