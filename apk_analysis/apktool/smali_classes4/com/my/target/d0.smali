.class public final Lcom/my/target/d0;
.super Lcom/my/target/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/d0$a;
    }
.end annotation


# instance fields
.field public final j:Lwv9;

.field public final k:Ls5a;

.field public l:Ljava/lang/ref/WeakReference;

.field public m:Lcom/my/target/x0;

.field public final n:Lcom/my/target/n0;

.field public o:Lcom/my/target/e3;


# direct methods
.method public constructor <init>(Lz94;Lwv9;Lkia;Lz94$b;Lz94$b;)V
    .locals 0

    invoke-direct {p0, p4, p1, p5}, Lcom/my/target/r;-><init>(Lz94$b;Lz94;Lz94$b;)V

    iput-object p2, p0, Lcom/my/target/d0;->j:Lwv9;

    iget-object p1, p2, Lao9;->a:Ln4a;

    new-instance p3, Lhg;

    invoke-direct {p3, p4, p2}, Lhg;-><init>(Lz94$b;Lwv9;)V

    invoke-static {p1, p3}, Lcom/my/target/n0;->a(Ln4a;Lcom/my/target/m1$b;)Lcom/my/target/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/my/target/d0;->n:Lcom/my/target/n0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p1, Ln4a;->c:Ljava/util/HashSet;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p3, Ls5a;

    iget-object p1, p1, Ln4a;->a:Lpp9;

    const/4 p4, 0x0

    invoke-direct {p3, p2, p1, p4}, Ls5a;-><init>(Ljava/util/List;Lpp9;Lik0;)V

    iput-object p3, p0, Lcom/my/target/d0;->k:Ls5a;

    return-void
.end method


# virtual methods
.method public final f(Lcom/my/target/common/MyTargetActivity;Landroid/content/Intent;Landroid/widget/FrameLayout;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/my/target/r;->f(Lcom/my/target/common/MyTargetActivity;Landroid/content/Intent;Landroid/widget/FrameLayout;)V

    iget-object v2, p0, Lcom/my/target/d0;->j:Lwv9;

    iget-object p1, v2, Lao9;->Q:Lpp9;

    const/16 p2, 0x1388

    invoke-virtual {p1, p2}, Lpp9;->c(I)V

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {v2, v0, p2, p1}, Lcom/my/target/e3;->a(Lao9;ILkha;Landroid/content/Context;)Lcom/my/target/e3;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/d0;->o:Lcom/my/target/e3;

    iget-object p1, v2, Lao9;->A:Ljava/lang/String;

    const-string p2, "mraid"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/my/target/w0;

    invoke-direct {p2, p1}, Lcom/my/target/w0;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/my/target/w;

    invoke-direct {p2, p1}, Lcom/my/target/w;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/my/target/d0;->l:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/my/target/d0$a;

    new-instance v4, Lgg;

    invoke-direct {v4, p0}, Lgg;-><init>(Lcom/my/target/d0;)V

    iget-object p1, p0, Lcom/my/target/r;->c:Lz94;

    iget-object p1, p1, Lzc0;->a:Lz2a;

    iget-object v5, p1, Lz2a;->a:Lf72;

    iget-object v3, p0, Lcom/my/target/r;->a:Lz94$b;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/my/target/d0$a;-><init>(Lcom/my/target/d0;Lwv9;Lz94$b;Lgg;Lf72;)V

    invoke-interface {p2, v0}, Lcom/my/target/g1;->e(Lcom/my/target/g1$a;)V

    invoke-interface {p2, v2}, Lcom/my/target/g1;->f(Lwv9;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-interface {p2}, Lcom/my/target/t1;->i()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p3, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final k()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/r;->d:Z

    iget-object v0, p0, Lcom/my/target/d0;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/g1;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Lcom/my/target/t1;->resume()V

    iget-object v1, p0, Lcom/my/target/d0;->m:Lcom/my/target/x0;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/my/target/t1;->i()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/x0;->c(Landroid/view/View;)V

    :cond_2
    invoke-interface {v0}, Lcom/my/target/t1;->i()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/my/target/d0;->n:Lcom/my/target/n0;

    invoke-virtual {p0, v0}, Lcom/my/target/n0;->b(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/my/target/n0;->c()V

    return-void
.end method

.method public final p()V
    .locals 3

    invoke-super {p0}, Lcom/my/target/r;->p()V

    iget-object v0, p0, Lcom/my/target/d0;->m:Lcom/my/target/x0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/x0;->e()V

    iput-object v1, p0, Lcom/my/target/d0;->m:Lcom/my/target/x0;

    :cond_0
    iget-object v0, p0, Lcom/my/target/d0;->o:Lcom/my/target/e3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/my/target/e3;->f()V

    :cond_1
    iget-object v0, p0, Lcom/my/target/d0;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/g1;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/my/target/d0;->o:Lcom/my/target/e3;

    if-eqz v2, :cond_2

    const/16 v2, 0x1b58

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Lcom/my/target/g1;->a(I)V

    :cond_3
    iput-object v1, p0, Lcom/my/target/d0;->l:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/my/target/d0;->n:Lcom/my/target/n0;

    invoke-virtual {p0, v1}, Lcom/my/target/n0;->b(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/my/target/n0;->d()V

    return-void
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/r;->d:Z

    iget-object v0, p0, Lcom/my/target/d0;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/g1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/my/target/t1;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/d0;->m:Lcom/my/target/x0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/my/target/x0;->e()V

    :cond_1
    iget-object p0, p0, Lcom/my/target/d0;->n:Lcom/my/target/n0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/my/target/n0;->b(Landroid/view/View;)V

    return-void
.end method

.method public final u()Z
    .locals 0

    iget-object p0, p0, Lcom/my/target/d0;->j:Lwv9;

    iget-boolean p0, p0, Ljia;->W:Z

    return p0
.end method
