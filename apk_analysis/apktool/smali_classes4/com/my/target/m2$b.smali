.class public final Lcom/my/target/m2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/my/target/m2;


# direct methods
.method public constructor <init>(Lcom/my/target/m2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/m2$b;->a:Lcom/my/target/m2;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    iget-object p0, p0, Lcom/my/target/m2$b;->a:Lcom/my/target/m2;

    iget-object v0, p0, Lcom/my/target/r;->b:Lcom/my/target/b3$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/my/target/m2;->m:Lxda;

    iget-object p0, p0, Lao9;->B:Ljava/lang/String;

    check-cast v0, Lz94$b;

    iget p0, v0, Lz94$b;->a:F

    invoke-static {p0, p1}, Ly14;->a(FF)I

    move-result p0

    if-eqz p0, :cond_0

    iput p1, v0, Lz94$b;->a:F

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 8

    iget-object p0, p0, Lcom/my/target/m2$b;->a:Lcom/my/target/m2;

    iget-object v0, p0, Lcom/my/target/r;->b:Lcom/my/target/b3$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/my/target/m2;->m:Lxda;

    iget-object v1, v1, Lao9;->B:Ljava/lang/String;

    check-cast v0, Lz94$b;

    iget-object v0, v0, Lz94$b;->b:Lz94;

    iget-object v1, v0, Lz94;->h:Lz94$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lz94$a;->b(Lz94;)V

    :cond_0
    iget-boolean v0, p0, Lcom/my/target/r;->e:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/r;->e:Z

    :goto_0
    iget-object v0, p0, Lcom/my/target/m2;->m:Lxda;

    iget-object v0, v0, Lxda;->a0:Ljia;

    invoke-virtual {p0}, Lcom/my/target/m2;->w()Lcom/my/target/t1;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/my/target/t1;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v0, :cond_d

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/my/target/m2;->m:Lxda;

    iget v3, v3, Lxda;->f0:I

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/my/target/m2;->w()Lcom/my/target/t1;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/my/target/t1;->destroy()V

    :cond_3
    instance-of v4, v0, Lwv9;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v4, p0, Lcom/my/target/m2;->l:Lcom/my/target/e3;

    if-ne v3, v5, :cond_5

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/my/target/e3;->f()V

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v6, v2, v3}, Lcom/my/target/e3;->a(Lao9;ILkha;Landroid/content/Context;)Lcom/my/target/e3;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/m2;->l:Lcom/my/target/e3;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/my/target/s;

    invoke-direct {v4, v2, v3}, Lcom/my/target/s;-><init>(Lcom/my/target/e3;Landroid/content/Context;)V

    check-cast v0, Lwv9;

    new-instance v2, Lcom/my/target/m2$a;

    invoke-direct {v2, p0}, Lcom/my/target/m2$a;-><init>(Lcom/my/target/m2;)V

    new-instance v3, Lcom/my/target/b0;

    invoke-direct {v3, v4, v0, v2}, Lcom/my/target/b0;-><init>(Lcom/my/target/s;Lwv9;Lcom/my/target/m2$a;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/my/target/m2;->n:Ljava/lang/ref/WeakReference;

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, v3, Lcom/my/target/b0;->b:Lcom/my/target/ib;

    invoke-virtual {v1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/my/target/e3;->f()V

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v6, v2, v3}, Lcom/my/target/e3;->a(Lao9;ILkha;Landroid/content/Context;)Lcom/my/target/e3;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/m2;->l:Lcom/my/target/e3;

    iget-object v2, v0, Lao9;->A:Ljava/lang/String;

    const-string v3, "mraid"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/my/target/w0;

    invoke-direct {v3, v2}, Lcom/my/target/w0;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/my/target/w;

    invoke-direct {v3, v2}, Lcom/my/target/w;-><init>(Landroid/content/Context;)V

    :goto_2
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/my/target/m2;->n:Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/my/target/m2$a;

    invoke-direct {v2, p0}, Lcom/my/target/m2$a;-><init>(Lcom/my/target/m2;)V

    invoke-interface {v3, v2}, Lcom/my/target/g1;->e(Lcom/my/target/g1$a;)V

    check-cast v0, Lwv9;

    invoke-interface {v3, v0}, Lcom/my/target/g1;->f(Lwv9;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-interface {v3}, Lcom/my/target/t1;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_8
    instance-of v4, v0, Lvy9;

    if-eqz v4, :cond_c

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v4, p0, Lcom/my/target/m2;->l:Lcom/my/target/e3;

    if-ne v3, v5, :cond_a

    check-cast v0, Lvy9;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/my/target/e3;->f()V

    :cond_9
    iget-object v3, p0, Lcom/my/target/m2;->l:Lcom/my/target/e3;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/my/target/s;

    invoke-direct {v5, v3, v4}, Lcom/my/target/s;-><init>(Lcom/my/target/e3;Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v6, v2, v3}, Lcom/my/target/e3;->a(Lao9;ILkha;Landroid/content/Context;)Lcom/my/target/e3;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/m2;->l:Lcom/my/target/e3;

    new-instance v2, Lcom/my/target/m2$a;

    invoke-direct {v2, p0}, Lcom/my/target/m2$a;-><init>(Lcom/my/target/m2;)V

    new-instance v3, Lcom/my/target/j0;

    invoke-direct {v3, v5, v0, v2}, Lcom/my/target/j0;-><init>(Lcom/my/target/s;Lvy9;Lcom/my/target/m2$a;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/my/target/m2;->n:Ljava/lang/ref/WeakReference;

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, v3, Lcom/my/target/j0;->g:Lcom/my/target/lb;

    invoke-virtual {v1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_a
    check-cast v0, Lvy9;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/my/target/e3;->f()V

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v6, v2, v3}, Lcom/my/target/e3;->a(Lao9;ILkha;Landroid/content/Context;)Lcom/my/target/e3;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/m2;->l:Lcom/my/target/e3;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/my/target/m2$a;

    invoke-direct {v3, p0}, Lcom/my/target/m2$a;-><init>(Lcom/my/target/m2;)V

    new-instance v4, Lcom/my/target/ha;

    invoke-direct {v4, v2}, Lcom/my/target/ha;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/my/target/a0;

    invoke-direct {v2, v4, v3}, Lcom/my/target/a0;-><init>(Lwy9;Lcom/my/target/t1$a;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/my/target/m2;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v0}, Lcom/my/target/a0;->a(Lvy9;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, v2, Lcom/my/target/a0;->c:Lwy9;

    invoke-interface {v0}, Lwy9;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_c
    instance-of v2, v0, Lxda;

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    check-cast v0, Lxda;

    invoke-virtual {p0, v0, v1}, Lcom/my/target/m2;->v(Lxda;Landroid/view/ViewGroup;)V

    :cond_d
    return-void
.end method
