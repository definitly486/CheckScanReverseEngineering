.class public final Lcom/my/target/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf5a;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/my/target/n$a;
.implements Lcom/my/target/f0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/f1$a;
    }
.end annotation


# instance fields
.field public b:Lcom/my/target/yj;

.field public c:Lcom/my/target/n;

.field public d:Lcom/my/target/f0;

.field public e:Lcom/my/target/k0;

.field public f:Lcom/my/target/o1;

.field public g:Lkha;

.field public h:F

.field public i:Z

.field public j:Lcom/my/target/o;

.field public k:Lv2a;

.field public final l:Lkn9;


# direct methods
.method public constructor <init>(Lcom/my/target/w1$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/f1;->h:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/f1;->i:Z

    iput-object p1, p0, Lcom/my/target/f1;->l:Lkn9;

    iput-object p0, p1, Lcom/my/target/w1$a;->a:Lcom/my/target/f1;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/f1;->b:Lcom/my/target/yj;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/my/target/yj;->a(F)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/my/target/f1;->b:Lcom/my/target/yj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DoubleInterstitialCardPresenter: Video playing error - "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/my/target/f1;->e:Lcom/my/target/k0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/my/target/k0;->j()V

    :cond_1
    iget-boolean p1, p0, Lcom/my/target/f1;->i:Z

    if-eqz p1, :cond_2

    const-string p1, "DoubleInterstitialCardPresenter: Try to play video stream from URL"

    invoke-static {v0, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/my/target/f1;->i:Z

    iget-object p1, p0, Lcom/my/target/f1;->g:Lkha;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lkha;->h0:Lxha;

    check-cast p1, Lrn9;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    iget-object p1, p1, Lxha;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/my/target/n;->c(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/my/target/f1;->b:Lcom/my/target/yj;

    invoke-virtual {p1}, Lcom/my/target/yj;->c()V

    iget-object p1, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {p1}, Lcom/my/target/n;->stop()V

    iget-object p0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {p0}, Lcom/my/target/n;->destroy()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    const-string v0, "DoubleInterstitialCardPresenter: Video completed"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/my/target/f1;->e:Lcom/my/target/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/k0;->g()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/f1;->b:Lcom/my/target/yj;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/my/target/yj;->b()V

    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->stop()V

    iget-object v0, p0, Lcom/my/target/f1;->k:Lv2a;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lv2a;->f:Z

    iget-object p0, p0, Lcom/my/target/f1;->l:Lkn9;

    check-cast p0, Lcom/my/target/w1$a;

    iget-object p0, p0, Lcom/my/target/w1$a;->b:Lcom/my/target/w1;

    iget-object p0, p0, Lcom/my/target/w1;->g:Lcom/my/target/p0$a;

    iget-object p0, p0, Lcom/my/target/p0$a;->a:Lcom/my/target/p0;

    iget-object p0, p0, Lcom/my/target/r;->b:Lcom/my/target/b3$a;

    if-eqz p0, :cond_2

    check-cast p0, Lz94$b;

    iget-object p0, p0, Lz94$b;->b:Lz94;

    iget-object v0, p0, Lz94;->h:Lz94$a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lz94$a;->b(Lz94;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final c(Lao9;ILpfa;Lcom/my/target/o4;)V
    .locals 2

    .line 63
    iget-object p0, p0, Lcom/my/target/f1;->l:Lkn9;

    check-cast p0, Lcom/my/target/w1$a;

    .line 64
    iget-object v0, p0, Lcom/my/target/w1$a;->b:Lcom/my/target/w1;

    .line 65
    iget-object v1, v0, Lcom/my/target/w1;->k:Lv2a;

    if-nez v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, v0, Lcom/my/target/w1;->g:Lcom/my/target/p0$a;

    .line 67
    invoke-static {p3}, Ly14;->j(Lpfa;)Lcha;

    move-result-object p3

    .line 68
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    .line 69
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/my/target/p0$a;->a(Lao9;ILcha;Landroid/content/Context;)V

    .line 70
    iget-boolean p1, v0, Lcom/my/target/w1;->l:Z

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {v0}, Lcom/my/target/w1;->e()V

    .line 72
    :cond_1
    iget-object p0, p0, Lcom/my/target/w1$a;->a:Lcom/my/target/f1;

    if-eqz p0, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/my/target/f1;->i()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final d(FF)V
    .locals 3

    iget-object v0, p0, Lcom/my/target/f1;->b:Lcom/my/target/yj;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/my/target/f1;->h:F

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_4

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoControlView()Lcom/my/target/zj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/zj;->getProgressView()Lc9a;

    move-result-object v0

    invoke-interface {v0, p1}, Lc9a;->setTimeChanged(F)V

    iget-object v0, p0, Lcom/my/target/f1;->e:Lcom/my/target/k0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/my/target/k0;->c(FF)V

    :cond_1
    iget-object v0, p0, Lcom/my/target/f1;->k:Lv2a;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/my/target/f1;->f:Lcom/my/target/o1;

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Lv2a;->f:Z

    if-nez v0, :cond_2

    invoke-virtual {v1, p1, p2}, Lcom/my/target/o1;->c(FF)V

    :cond_2
    cmpl-float p1, p1, p2

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {p1}, Lcom/my/target/n;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/my/target/f1;->c()V

    :cond_3
    iget-object p0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {p0}, Lcom/my/target/n;->stop()V

    return-void

    :cond_4
    invoke-virtual {p0, p2, v1}, Lcom/my/target/f1;->d(FF)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final e(Lv2a;Lcom/my/target/o4;)V
    .locals 4

    iput-object p1, p0, Lcom/my/target/f1;->k:Lv2a;

    iget-object v0, p1, Lv2a;->a:Lxda;

    iget-object v0, v0, Lxda;->Z:Lkha;

    iput-object v0, p0, Lcom/my/target/f1;->g:Lkha;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/my/target/f1;->b:Lcom/my/target/yj;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    if-eqz v2, :cond_3

    iget v2, v0, Lao9;->z:F

    iput v2, p0, Lcom/my/target/f1;->h:F

    iget-boolean v0, v0, Lkha;->e0:Z

    invoke-virtual {v1, v0}, Lcom/my/target/yj;->setPauseEnabled(Z)V

    iget-object v0, p0, Lcom/my/target/f1;->g:Lkha;

    iget-object v1, p1, Lv2a;->b:Lcom/my/target/e3;

    iget-object v2, p0, Lcom/my/target/f1;->b:Lcom/my/target/yj;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lp5;

    invoke-direct {v3, p0, p1}, Lp5;-><init>(Lcom/my/target/f1;Lv2a;)V

    invoke-static {v0, v1, v3, v2}, Lcom/my/target/k0;->a(Lkha;Lcom/my/target/e3;Lcom/my/target/m1$b;Landroid/content/Context;)Lcom/my/target/k0;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/f1;->e:Lcom/my/target/k0;

    iget-object v0, p0, Lcom/my/target/f1;->g:Lkha;

    iget-object v0, v0, Lao9;->a:Ln4a;

    new-instance v1, Lud0;

    invoke-direct {v1, p0, p1}, Lud0;-><init>(Lcom/my/target/f1;Lv2a;)V

    invoke-static {v0, v1}, Lcom/my/target/o1;->a(Ln4a;Lcom/my/target/m1$b;)Lcom/my/target/o1;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/f1;->f:Lcom/my/target/o1;

    iget-object v0, p0, Lcom/my/target/f1;->g:Lkha;

    iget-boolean v0, v0, Lkha;->X:Z

    iget-object v1, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/my/target/n;->setVolume(F)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {v1, v0}, Lcom/my/target/n;->setVolume(F)V

    :goto_0
    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/my/target/n;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/my/target/f1;->g:Lkha;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/f1;->b:Lcom/my/target/yj;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/my/target/yj;->e()V

    iget-object v0, p0, Lcom/my/target/f1;->b:Lcom/my/target/yj;

    iget v1, p0, Lcom/my/target/f1;->h:F

    invoke-virtual {v0, v1}, Lcom/my/target/yj;->setDuration(F)V

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/my/target/f1;->l:Lkn9;

    check-cast p0, Lcom/my/target/w1$a;

    iget-object p0, p0, Lcom/my/target/w1$a;->b:Lcom/my/target/w1;

    iget-object p0, p0, Lcom/my/target/w1;->g:Lcom/my/target/p0$a;

    invoke-virtual {p0, p1, p2}, Lcom/my/target/p0$a;->b(Lv2a;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final f()V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/my/target/f1;->b:Lcom/my/target/yj;

    if-nez p0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/my/target/yj;->d()V

    return-void
.end method

.method public final f(Lrn9;)V
    .locals 2

    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lxha;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/my/target/f1;->i:Z

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/my/target/n;->c(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/my/target/f1;->i:Z

    iget-object p1, p1, Lxha;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/my/target/n;->c(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_2
    :goto_0
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

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    iget-object p0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {p0}, Lcom/my/target/n;->pause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 2

    const-string v0, "DoubleInterstitialCardPresenter: Video playing timeout"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/my/target/f1;->e:Lcom/my/target/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/k0;->k()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/f1;->b:Lcom/my/target/yj;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/my/target/yj;->c()V

    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->stop()V

    iget-object p0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {p0}, Lcom/my/target/n;->destroy()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final k()V
    .locals 0

    iget-object p0, p0, Lcom/my/target/f1;->b:Lcom/my/target/yj;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/yj;->f()V

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
    invoke-virtual {p0}, Lcom/my/target/f1;->i()V

    const-string p0, "DoubleInterstitialCardPresenter: Audiofocus loss, pausing"

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Li6a;

    invoke-direct {v0, p0, p1}, Li6a;-><init>(Lcom/my/target/f1;I)V

    invoke-static {v0}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/my/target/n;->resume()V

    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->c()Z

    move-result v0

    const-string v1, "audio"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final r()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    instance-of v0, v0, Lcom/my/target/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/my/target/f0;->setViewMode(I)V

    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    iget-object v2, p0, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    invoke-interface {v0, v2}, Lcom/my/target/n;->b(Lcom/my/target/f0;)V

    :cond_0
    iget-object v0, p0, Lcom/my/target/f1;->g:Lkha;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lkha;->h0:Lxha;

    check-cast v0, Lrn9;

    iget-object v2, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {v2}, Lcom/my/target/n;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, v0, Lxha;->d:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/my/target/f1;->i:Z

    :cond_1
    invoke-virtual {p0, v0}, Lcom/my/target/f1;->f(Lrn9;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "DoubleInterstitialCardPresenter: Playback within no hardware accelerated view is available only with ExoPlayer"

    invoke-virtual {p0, v0}, Lcom/my/target/f1;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final s()V
    .locals 0

    return-void
.end method
