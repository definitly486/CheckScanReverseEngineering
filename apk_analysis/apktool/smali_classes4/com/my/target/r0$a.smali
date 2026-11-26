.class public final Lcom/my/target/r0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/zf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcom/my/target/r0;


# direct methods
.method public constructor <init>(Lcom/my/target/r0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/r0$a;->b:Lcom/my/target/r0;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    iget-object p0, p0, Lcom/my/target/r0$a;->b:Lcom/my/target/r0;

    iget-object p0, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/my/target/c;->b(Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InterstitialMediaPresenter$MyMediaViewListener: Video playing error: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/target/r0$a;->b:Lcom/my/target/r0;

    iget-object p1, p0, Lcom/my/target/r0;->f:Lcom/my/target/k0;

    invoke-virtual {p1}, Lcom/my/target/k0;->j()V

    iget-boolean p1, p0, Lcom/my/target/r0;->n:Z

    if-eqz p1, :cond_0

    const-string p1, "InterstitialMediaPresenter$MyMediaViewListener: Try to play video stream from URL"

    invoke-static {v0, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/my/target/r0;->n:Z

    iget-object p0, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    invoke-interface {p0, p1}, Lcom/my/target/c;->c(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/r0;->d()V

    iget-object p0, p0, Lcom/my/target/r0;->h:Lv51;

    invoke-virtual {p0}, Lv51;->a()V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object p0, p0, Lcom/my/target/r0$a;->b:Lcom/my/target/r0;

    iget-object v0, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    iget-object v1, p0, Lcom/my/target/r0;->f:Lcom/my/target/k0;

    iget-boolean v2, p0, Lcom/my/target/r0;->m:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/my/target/r0;->m:Z

    const-string v2, "InterstitialMediaPresenter$MyMediaViewListener: Video playing complete"

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/my/target/k0;->g()V

    invoke-virtual {p0}, Lcom/my/target/r0;->c()V

    invoke-interface {v0}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/my/target/r0;->b(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/my/target/r0;->a:Lkha;

    iget-boolean v2, v2, Lkha;->a0:Z

    invoke-interface {v0, v2}, Lcom/my/target/c;->a(Z)V

    iget-object v2, p0, Lcom/my/target/r0;->c:Lcom/my/target/m2$b;

    invoke-virtual {v2}, Lcom/my/target/m2$b;->b()V

    invoke-virtual {p0}, Lcom/my/target/r0;->c()V

    invoke-interface {v0}, Lcom/my/target/c;->d()V

    invoke-virtual {v1}, Lcom/my/target/k0;->f()V

    return-void
.end method

.method public final d(FF)V
    .locals 6

    iget-object v0, p0, Lcom/my/target/r0$a;->b:Lcom/my/target/r0;

    iget-object v1, v0, Lcom/my/target/r0;->a:Lkha;

    iget-object v2, v0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    invoke-interface {v2, p1}, Lcom/my/target/c;->setTimeChanged(F)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/my/target/r0;->m:Z

    iget-boolean v2, v0, Lcom/my/target/r0;->l:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/my/target/r0;->l:Z

    :cond_0
    iget-boolean v2, v0, Lcom/my/target/r0;->k:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lkha;->Y:Z

    if-eqz v2, :cond_2

    iget v2, v1, Lkha;->f0:F

    sub-float/2addr v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_1

    iget-object v4, v0, Lcom/my/target/r0;->g:Lcom/my/target/m2$a;

    invoke-virtual {v4, v2, v3}, Lcom/my/target/m2$a;->n(D)V

    :cond_1
    iget v1, v1, Lkha;->f0:F

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_2

    invoke-virtual {v0}, Lcom/my/target/r0;->c()V

    :cond_2
    iget v1, v0, Lcom/my/target/r0;->i:F

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_4

    iget-object v1, v0, Lcom/my/target/r0;->e:Lcom/my/target/o1;

    invoke-virtual {v1, p1, p2}, Lcom/my/target/o1;->c(FF)V

    iget-object v1, v0, Lcom/my/target/r0;->f:Lcom/my/target/k0;

    invoke-virtual {v1, p1, p2}, Lcom/my/target/k0;->c(FF)V

    iget p2, v0, Lcom/my/target/r0;->i:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/my/target/r0$a;->c()V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, v1, v1}, Lcom/my/target/r0$a;->d(FF)V

    return-void
.end method

.method public final e()V
    .locals 5

    iget-object p0, p0, Lcom/my/target/r0$a;->b:Lcom/my/target/r0;

    iget-object v0, p0, Lcom/my/target/r0;->f:Lcom/my/target/k0;

    iget-boolean v1, p0, Lcom/my/target/r0;->j:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    invoke-interface {v1}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/my/target/r0;->b(Landroid/content/Context;)V

    invoke-interface {v1, v3}, Lcom/my/target/c;->a(I)V

    invoke-virtual {v0, v3}, Lcom/my/target/k0;->d(Z)V

    iput-boolean v2, p0, Lcom/my/target/r0;->j:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/r0;->g()V

    invoke-virtual {v0, v2}, Lcom/my/target/k0;->d(Z)V

    iput-boolean v3, p0, Lcom/my/target/r0;->j:Z

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object p0, p0, Lcom/my/target/r0$a;->b:Lcom/my/target/r0;

    iget-object v0, p0, Lcom/my/target/r0;->f:Lcom/my/target/k0;

    invoke-virtual {v0}, Lcom/my/target/k0;->k()V

    invoke-virtual {p0}, Lcom/my/target/r0;->d()V

    const-string v0, "InterstitialMediaPresenter$MyMediaViewListener: Video playing timeout"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/target/r0;->h:Lv51;

    invoke-virtual {p0}, Lv51;->a()V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object p0, p0, Lcom/my/target/r0$a;->b:Lcom/my/target/r0;

    iget-boolean v0, p0, Lcom/my/target/r0;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/r0;->a:Lkha;

    iget v0, v0, Lkha;->f0:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/r0;->c()V

    :cond_0
    iget-object p0, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    invoke-interface {p0}, Lcom/my/target/c;->a()V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object p0, p0, Lcom/my/target/r0$a;->b:Lcom/my/target/r0;

    iget-object v0, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    iget-object v1, p0, Lcom/my/target/r0;->a:Lkha;

    iget-boolean v1, v1, Lkha;->e0:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/my/target/r0;->b(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/my/target/r0;->f:Lcom/my/target/k0;

    invoke-virtual {p0}, Lcom/my/target/k0;->i()V

    invoke-interface {v0}, Lcom/my/target/c;->pause()V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object p0, p0, Lcom/my/target/r0$a;->b:Lcom/my/target/r0;

    iget-object v0, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    iget-boolean p0, p0, Lcom/my/target/r0;->n:Z

    invoke-interface {v0, p0}, Lcom/my/target/c;->c(Z)V

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object p0, p0, Lcom/my/target/r0$a;->b:Lcom/my/target/r0;

    iget-object v0, p0, Lcom/my/target/r0;->f:Lcom/my/target/k0;

    invoke-virtual {v0}, Lcom/my/target/k0;->l()V

    iget-object v0, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    invoke-interface {v0}, Lcom/my/target/c;->resume()V

    iget-boolean v1, p0, Lcom/my/target/r0;->j:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/my/target/r0;->b(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Lcom/my/target/c;->a(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/r0;->g()V

    return-void
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final onAudioFocusChange(I)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/my/target/r0$a;->b:Lcom/my/target/r0;

    invoke-virtual {p0, p1}, Lcom/my/target/r0;->a(I)V

    return-void

    :cond_0
    new-instance v0, Ll1a;

    invoke-direct {v0, p0, p1}, Ll1a;-><init>(Lcom/my/target/r0$a;I)V

    invoke-static {v0}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q()V
    .locals 2

    iget-object p0, p0, Lcom/my/target/r0$a;->b:Lcom/my/target/r0;

    iget-object v0, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    iget-boolean v1, p0, Lcom/my/target/r0;->j:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/my/target/r0;->e(Landroid/content/Context;)V

    :cond_0
    iget-boolean p0, p0, Lcom/my/target/r0;->n:Z

    invoke-interface {v0, p0}, Lcom/my/target/c;->c(Z)V

    return-void
.end method

.method public final s()V
    .locals 1

    iget-object p0, p0, Lcom/my/target/r0$a;->b:Lcom/my/target/r0;

    iget-object v0, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    invoke-interface {v0}, Lcom/my/target/c;->getPromoMediaView()Lcom/my/target/zf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/zf;->getVideoPlayer()Lcom/my/target/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/my/target/r0;->c:Lcom/my/target/m2$b;

    invoke-interface {v0}, Lcom/my/target/n;->getVolume()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/my/target/m2$b;->a(F)V

    :cond_0
    return-void
.end method
