.class public final Lcom/my/target/m0;
.super Lcom/my/target/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/m0$a;
    }
.end annotation


# instance fields
.field public final j:Lvy9;

.field public final k:Lcom/my/target/n0;

.field public l:Lcom/my/target/x0;

.field public m:Ljava/lang/ref/WeakReference;

.field public n:Lcom/my/target/e3;


# direct methods
.method public constructor <init>(Lz94;Lvy9;Lz94$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, v0}, Lcom/my/target/r;-><init>(Lz94$b;Lz94;Lz94$b;)V

    iput-object p2, p0, Lcom/my/target/m0;->j:Lvy9;

    iget-object p1, p2, Lao9;->a:Ln4a;

    new-instance p2, Leh;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/my/target/n0;->a(Ln4a;Lcom/my/target/m1$b;)Lcom/my/target/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/m0;->k:Lcom/my/target/n0;

    return-void
.end method


# virtual methods
.method public final f(Lcom/my/target/common/MyTargetActivity;Landroid/content/Intent;Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/my/target/r;->f(Lcom/my/target/common/MyTargetActivity;Landroid/content/Intent;Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/my/target/m0;->j:Lvy9;

    iget-object p2, p1, Lao9;->Q:Lpp9;

    const/16 v0, 0x1388

    invoke-virtual {p2, v0}, Lpp9;->c(I)V

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lcom/my/target/e3;->a(Lao9;ILkha;Landroid/content/Context;)Lcom/my/target/e3;

    move-result-object p2

    iput-object p2, p0, Lcom/my/target/m0;->n:Lcom/my/target/e3;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/my/target/m0$a;

    invoke-direct {v0, p0}, Lcom/my/target/m0$a;-><init>(Lcom/my/target/m0;)V

    iget-object v1, p1, Lao9;->P:Lzn9;

    iget-boolean v1, v1, Lzn9;->b:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/my/target/ja;

    invoke-direct {v1, p2}, Lcom/my/target/ja;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/my/target/ha;

    invoke-direct {v1, p2}, Lcom/my/target/ha;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance p2, Lcom/my/target/a0;

    invoke-direct {p2, v1, v0}, Lcom/my/target/a0;-><init>(Lwy9;Lcom/my/target/t1$a;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/my/target/m0;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2, p1}, Lcom/my/target/a0;->a(Lvy9;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p1, p2, Lcom/my/target/a0;->c:Lwy9;

    invoke-interface {p1}, Lwy9;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p3, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final k()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/r;->d:Z

    iget-object v0, p0, Lcom/my/target/m0;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/a0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/my/target/a0;->c:Lwy9;

    iget-object v1, p0, Lcom/my/target/m0;->l:Lcom/my/target/x0;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lwy9;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/x0;->c(Landroid/view/View;)V

    :cond_0
    invoke-interface {v0}, Lwy9;->a()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/my/target/m0;->k:Lcom/my/target/n0;

    invoke-virtual {p0, v0}, Lcom/my/target/n0;->b(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/my/target/n0;->c()V

    :cond_1
    return-void
.end method

.method public final p()V
    .locals 1

    invoke-super {p0}, Lcom/my/target/r;->p()V

    iget-object v0, p0, Lcom/my/target/m0;->l:Lcom/my/target/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/x0;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/m0;->l:Lcom/my/target/x0;

    :cond_0
    iget-object p0, p0, Lcom/my/target/m0;->n:Lcom/my/target/e3;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/my/target/e3;->f()V

    :cond_1
    return-void
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/r;->d:Z

    iget-object v0, p0, Lcom/my/target/m0;->l:Lcom/my/target/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/x0;->e()V

    :cond_0
    iget-object p0, p0, Lcom/my/target/m0;->k:Lcom/my/target/n0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/my/target/n0;->b(Landroid/view/View;)V

    return-void
.end method

.method public final u()Z
    .locals 0

    iget-object p0, p0, Lcom/my/target/m0;->j:Lvy9;

    iget-boolean p0, p0, Ljia;->W:Z

    return p0
.end method
