.class public final Lcom/my/target/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/my/target/n$a;
.implements Lcom/my/target/f0$a;


# instance fields
.field public final b:Lcom/my/target/c3;

.field public final c:Lkha;

.field public final d:Lcom/my/target/n;

.field public final e:Lcom/my/target/o1;

.field public final f:Lcom/my/target/m2$b;

.field public final g:Lcom/my/target/k0;

.field public final h:F

.field public final i:Lcom/my/target/f0;

.field public j:Z


# direct methods
.method public constructor <init>(Lkha;Lcom/my/target/f0;Lcom/my/target/c3;Lcom/my/target/m2$b;Lcom/my/target/f3;Lcom/my/target/n;Lrd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/my/target/t2;->b:Lcom/my/target/c3;

    iput-object p2, p0, Lcom/my/target/t2;->i:Lcom/my/target/f0;

    iput-object p6, p0, Lcom/my/target/t2;->d:Lcom/my/target/n;

    iput-object p4, p0, Lcom/my/target/t2;->f:Lcom/my/target/m2$b;

    invoke-virtual {p2, p0}, Lcom/my/target/f0;->setAdVideoViewListener(Lcom/my/target/f0$a;)V

    iput-object p1, p0, Lcom/my/target/t2;->c:Lkha;

    iget-object p3, p1, Lao9;->a:Ln4a;

    invoke-static {p3, p7}, Lcom/my/target/o1;->a(Ln4a;Lcom/my/target/m1$b;)Lcom/my/target/o1;

    move-result-object p3

    iput-object p3, p0, Lcom/my/target/t2;->e:Lcom/my/target/o1;

    iget-object p4, p5, Lcom/my/target/f3;->b:Lcom/my/target/e3;

    iget-object p5, p5, Lcom/my/target/f3;->c:Landroid/content/Context;

    invoke-static {p1, p4, p7, p5}, Lcom/my/target/k0;->a(Lkha;Lcom/my/target/e3;Lcom/my/target/m1$b;Landroid/content/Context;)Lcom/my/target/k0;

    move-result-object p4

    iput-object p4, p0, Lcom/my/target/t2;->g:Lcom/my/target/k0;

    invoke-virtual {p3, p2}, Lcom/my/target/o1;->d(Landroid/view/View;)V

    iget p2, p1, Lao9;->z:F

    iput p2, p0, Lcom/my/target/t2;->h:F

    invoke-interface {p6, p0}, Lcom/my/target/n;->a(Lcom/my/target/n$a;)V

    iget-boolean p0, p1, Lkha;->X:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p6, p0}, Lcom/my/target/n;->setVolume(F)V

    return-void

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-interface {p6, p0}, Lcom/my/target/n;->setVolume(F)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    iget-object p0, p0, Lcom/my/target/t2;->b:Lcom/my/target/c3;

    iget-object p0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lgw9;->setSoundState(Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "InterstitialPromoMediaPresenterS2: Video playing error - "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/my/target/t2;->g:Lcom/my/target/k0;

    invoke-virtual {p1}, Lcom/my/target/k0;->j()V

    iget-boolean p1, p0, Lcom/my/target/t2;->j:Z

    iget-object v1, p0, Lcom/my/target/t2;->d:Lcom/my/target/n;

    if-eqz p1, :cond_0

    const-string p1, "InterstitialPromoMediaPresenterS2: Try to play video stream from URL"

    invoke-static {v0, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/my/target/t2;->j:Z

    iget-object p1, p0, Lcom/my/target/t2;->c:Lkha;

    iget-object p1, p1, Lkha;->h0:Lxha;

    check-cast p1, Lrn9;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lxha;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/my/target/t2;->i:Lcom/my/target/f0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v1, p0, p1}, Lcom/my/target/n;->c(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/my/target/t2;->b:Lcom/my/target/c3;

    invoke-virtual {p0}, Lcom/my/target/c3;->j()V

    invoke-interface {v1}, Lcom/my/target/n;->stop()V

    invoke-interface {v1}, Lcom/my/target/n;->destroy()V

    return-void
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lcom/my/target/t2;->g:Lcom/my/target/k0;

    invoke-virtual {v0}, Lcom/my/target/k0;->g()V

    iget-object v0, p0, Lcom/my/target/t2;->b:Lcom/my/target/c3;

    iget-object v1, v0, Lcom/my/target/c3;->g:Lcom/my/target/dg;

    iget-object v2, v0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    iget-object v3, v0, Lcom/my/target/c3;->b:Lxda;

    iget-object v3, v3, Lxda;->Z:Lkha;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-boolean v5, v3, Lkha;->a0:Z

    if-eqz v5, :cond_1

    iget-object v5, v3, Lkha;->U:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v3, v3, Lkha;->U:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x2

    invoke-virtual {v2, v5, v3}, Lcom/my/target/hg;->a(ILjava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/my/target/hg;->d(Z)V

    goto :goto_1

    :cond_1
    iput-boolean v4, v0, Lcom/my/target/c3;->r:Z

    :cond_2
    :goto_1
    invoke-virtual {v2, v4}, Lcom/my/target/hg;->b(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/my/target/hg;->e(Z)V

    invoke-interface {v1, v3}, Liq9;->setVisible(Z)V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Liq9;->setTimeChanged(F)V

    iget-object v1, v0, Lcom/my/target/c3;->h:Lcom/my/target/m2$b;

    invoke-virtual {v1}, Lcom/my/target/m2$b;->b()V

    iget-boolean v1, v0, Lcom/my/target/c3;->t:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/my/target/c3;->m()V

    iput-boolean v4, v0, Lcom/my/target/c3;->s:Z

    :goto_2
    iget-object p0, p0, Lcom/my/target/t2;->d:Lcom/my/target/n;

    invoke-interface {p0}, Lcom/my/target/n;->stop()V

    return-void
.end method

.method public final c(Lrn9;)V
    .locals 4

    .line 79
    iget-object v0, p1, Lxha;->d:Ljava/lang/Object;

    .line 80
    check-cast v0, Ljava/lang/String;

    .line 81
    iget v1, p1, Lxha;->b:I

    .line 82
    iget v2, p1, Lxha;->c:I

    .line 83
    iget-object v3, p0, Lcom/my/target/t2;->i:Lcom/my/target/f0;

    invoke-virtual {v3, v1, v2}, Lcom/my/target/f0;->b(II)V

    iget-object v1, p0, Lcom/my/target/t2;->d:Lcom/my/target/n;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/my/target/t2;->j:Z

    .line 85
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v1, p1, p0}, Lcom/my/target/n;->c(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/my/target/t2;->j:Z

    .line 87
    iget-object p0, p1, Lxha;->a:Ljava/lang/String;

    .line 88
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v1, p1, p0}, Lcom/my/target/n;->c(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public final d(FF)V
    .locals 4

    iget v0, p0, Lcom/my/target/t2;->h:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    iget-object v1, p0, Lcom/my/target/t2;->d:Lcom/my/target/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/t2;->b:Lcom/my/target/c3;

    iget-object v2, v0, Lcom/my/target/c3;->n:Lcom/my/target/c3$a;

    sget-object v3, Lcom/my/target/c3$a;->c:Lcom/my/target/c3$a;

    if-ne v2, v3, :cond_0

    iget-wide v2, v0, Lcom/my/target/c3;->p:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    float-to-long v2, v2

    iput-wide v2, v0, Lcom/my/target/c3;->o:J

    :cond_0
    iget-object v0, v0, Lcom/my/target/c3;->g:Lcom/my/target/dg;

    invoke-interface {v0, p1}, Liq9;->setTimeChanged(F)V

    iget-object v0, p0, Lcom/my/target/t2;->g:Lcom/my/target/k0;

    invoke-virtual {v0, p1, p2}, Lcom/my/target/k0;->c(FF)V

    iget-object v0, p0, Lcom/my/target/t2;->e:Lcom/my/target/o1;

    invoke-virtual {v0, p1, p2}, Lcom/my/target/o1;->c(FF)V

    iget-object v0, p0, Lcom/my/target/t2;->f:Lcom/my/target/m2$b;

    invoke-interface {v1}, Lcom/my/target/n;->getVolume()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/my/target/m2$b;->a(F)V

    :cond_1
    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    invoke-interface {v1}, Lcom/my/target/n;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/my/target/t2;->c()V

    :cond_2
    invoke-interface {v1}, Lcom/my/target/n;->stop()V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, p2, v0}, Lcom/my/target/t2;->d(FF)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/t2;->i:Lcom/my/target/f0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    iget-object p0, p0, Lcom/my/target/t2;->d:Lcom/my/target/n;

    invoke-interface {p0}, Lcom/my/target/n;->pause()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object p0, p0, Lcom/my/target/t2;->b:Lcom/my/target/c3;

    iget-object p0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/my/target/hg;->d(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/my/target/hg;->a(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/my/target/hg;->e(Z)V

    return-void
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Lcom/my/target/t2;->b:Lcom/my/target/c3;

    invoke-virtual {p0}, Lcom/my/target/c3;->l()V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object p0, p0, Lcom/my/target/t2;->b:Lcom/my/target/c3;

    iget-object p0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/my/target/hg;->d(Z)V

    invoke-virtual {p0, v0}, Lcom/my/target/hg;->b(Z)V

    invoke-virtual {p0}, Lcom/my/target/hg;->f()V

    invoke-virtual {p0, v0}, Lcom/my/target/hg;->e(Z)V

    return-void
.end method

.method public final i()V
    .locals 6

    iget-object v0, p0, Lcom/my/target/t2;->c:Lkha;

    iget-object v0, v0, Lkha;->h0:Lxha;

    check-cast v0, Lrn9;

    iget-object v1, p0, Lcom/my/target/t2;->g:Lcom/my/target/k0;

    invoke-virtual {v1}, Lcom/my/target/k0;->f()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/my/target/t2;->d:Lcom/my/target/n;

    invoke-interface {v1}, Lcom/my/target/n;->c()Z

    move-result v2

    iget-object v3, p0, Lcom/my/target/t2;->i:Lcom/my/target/f0;

    if-nez v2, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-virtual {v2, p0, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    invoke-interface {v1, p0}, Lcom/my/target/n;->a(Lcom/my/target/n$a;)V

    invoke-interface {v1, v3}, Lcom/my/target/n;->b(Lcom/my/target/f0;)V

    invoke-virtual {p0, v0}, Lcom/my/target/t2;->c(Lrn9;)V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 2

    const-string v0, "InterstitialPromoMediaPresenterS2: Video playing timeout"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/my/target/t2;->g:Lcom/my/target/k0;

    invoke-virtual {v0}, Lcom/my/target/k0;->k()V

    iget-object v0, p0, Lcom/my/target/t2;->b:Lcom/my/target/c3;

    invoke-virtual {v0}, Lcom/my/target/c3;->j()V

    iget-object p0, p0, Lcom/my/target/t2;->d:Lcom/my/target/n;

    invoke-interface {p0}, Lcom/my/target/n;->stop()V

    invoke-interface {p0}, Lcom/my/target/n;->destroy()V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object p0, p0, Lcom/my/target/t2;->b:Lcom/my/target/c3;

    iget-object v0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/hg;->d(Z)V

    invoke-virtual {v0, v1}, Lcom/my/target/hg;->b(Z)V

    invoke-virtual {v0}, Lcom/my/target/hg;->f()V

    invoke-virtual {v0, v1}, Lcom/my/target/hg;->e(Z)V

    iget-object p0, p0, Lcom/my/target/c3;->g:Lcom/my/target/dg;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Liq9;->setVisible(Z)V

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

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/t2;->e()V

    const-string p0, "InterstitialPromoMediaPresenterS2: Audiofocus loss, pausing"

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lyfa;

    invoke-direct {v0, p0, p1}, Lyfa;-><init>(Lcom/my/target/t2;I)V

    invoke-static {v0}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p()V
    .locals 4

    iget-object v0, p0, Lcom/my/target/t2;->d:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->resume()V

    invoke-interface {v0}, Lcom/my/target/n;->c()Z

    move-result v1

    const-string v2, "audio"

    iget-object v3, p0, Lcom/my/target/t2;->i:Lcom/my/target/f0;

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/my/target/n;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_1
    return-void
.end method

.method public final r()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/t2;->d:Lcom/my/target/n;

    instance-of v1, v0, Lcom/my/target/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/my/target/t2;->i:Lcom/my/target/f0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/my/target/f0;->setViewMode(I)V

    check-cast v0, Lcom/my/target/h;

    invoke-virtual {v0, v1}, Lcom/my/target/h;->b(Lcom/my/target/f0;)V

    iget-object v1, p0, Lcom/my/target/t2;->c:Lkha;

    iget-object v1, v1, Lkha;->h0:Lxha;

    check-cast v1, Lrn9;

    invoke-virtual {v0}, Lcom/my/target/h;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lxha;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/my/target/t2;->j:Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/my/target/t2;->c(Lrn9;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "Playback within no hardware accelerated view is available only with ExoPlayer"

    invoke-virtual {p0, v0}, Lcom/my/target/t2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final s()V
    .locals 0

    return-void
.end method
