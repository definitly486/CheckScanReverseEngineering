.class public final Lcom/my/target/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/t1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/k1$a;,
        Lcom/my/target/k1$c;,
        Lcom/my/target/k1$b;
    }
.end annotation


# instance fields
.field public final b:Lcom/my/target/ra;

.field public final c:Lcom/my/target/u0;

.field public final d:Lj1a;

.field public final e:Lcom/my/target/fk;

.field public f:Lcom/my/target/k1$c;

.field public g:Lcom/my/target/k0;

.field public h:Lcom/my/target/n0;

.field public i:I

.field public j:Lcom/my/target/v;


# direct methods
.method public constructor <init>(Lj1a;Lcom/my/target/u0;Lk2;Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/my/target/k1;->i:I

    iput-object p1, p0, Lcom/my/target/k1;->d:Lj1a;

    iget-object v0, p1, Lj1a;->a0:Ly8a;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ly8a;->g:Lrn9;

    if-eqz v1, :cond_0

    iget v2, v1, Lxha;->b:I

    iget v1, v1, Lxha;->c:I

    move v8, v1

    move v7, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v7, v2

    move v8, v7

    :goto_0
    new-instance v3, Lcom/my/target/ra;

    new-instance v6, Lcom/my/target/k1$a;

    iget-object p1, p1, Lao9;->P:Lzn9;

    invoke-direct {v6, p0, p1}, Lcom/my/target/k1$a;-><init>(Lcom/my/target/k1;Lzn9;)V

    move-object v5, p0

    move-object v4, p0

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/my/target/ra;-><init>(Lcom/my/target/k1;Lcom/my/target/k1;Lcom/my/target/k1$a;IILandroid/content/Context;)V

    iput-object v3, v4, Lcom/my/target/k1;->b:Lcom/my/target/ra;

    invoke-virtual {v3}, Lcom/my/target/ra;->getProgressView()Lcom/my/target/fk;

    move-result-object p0

    iput-object p0, v4, Lcom/my/target/k1;->e:Lcom/my/target/fk;

    iput-object p2, v4, Lcom/my/target/k1;->c:Lcom/my/target/u0;

    if-eqz v0, :cond_1

    sget-object p0, Lpp9;->d:Lpp9;

    new-instance p1, Lkha;

    invoke-direct {p1, p0}, Lkha;-><init>(Lpp9;)V

    iget-object p0, v0, Ly8a;->g:Lrn9;

    iput-object p0, p1, Lkha;->h0:Lxha;

    iget-object p0, v0, Lu1;->b:Ljava/lang/Object;

    check-cast p0, Ln4a;

    iget p2, v0, Ly8a;->h:I

    int-to-float p2, p2

    iget-object p4, p1, Lao9;->a:Ln4a;

    invoke-virtual {p4, p0, p2}, Ln4a;->g(Ln4a;F)V

    const/4 p0, 0x0

    invoke-static {p1, p0, p3, v9}, Lcom/my/target/k0;->a(Lkha;Lcom/my/target/e3;Lcom/my/target/m1$b;Landroid/content/Context;)Lcom/my/target/k0;

    move-result-object p0

    iput-object p0, v4, Lcom/my/target/k1;->g:Lcom/my/target/k0;

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    int-to-float v0, p1

    iget-object v1, p0, Lcom/my/target/k1;->e:Lcom/my/target/fk;

    invoke-virtual {v1, v0}, Lcom/my/target/fk;->setMax(F)V

    const/4 v0, 0x0

    iput v0, v1, Lcom/my/target/fk;->h:F

    new-instance v0, Lcom/my/target/k1$c;

    invoke-direct {v0, p1, p0}, Lcom/my/target/k1$c;-><init>(ILcom/my/target/k1;)V

    iput-object v0, p0, Lcom/my/target/k1;->f:Lcom/my/target/k1$c;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public final c()V
    .locals 6

    iget-object v1, p0, Lcom/my/target/k1;->d:Lj1a;

    iget-object v0, v1, Lao9;->Q:Lpp9;

    iget-boolean v0, v0, Lpp9;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ld6a;

    invoke-direct {v0}, Le6a;-><init>()V

    new-instance v2, Lup9;

    const/16 v3, 0x40

    invoke-direct {v2, v3, v0}, Lup9;-><init>(ILe6a;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lgia;

    invoke-direct {v2}, Lgia;-><init>()V

    :goto_0
    iget-object v0, v1, Lao9;->G:Ljava/lang/String;

    invoke-static {v2}, Ly14;->j(Lpfa;)Lcha;

    move-result-object v4

    iget-object v2, p0, Lcom/my/target/k1;->b:Lcom/my/target/ra;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v3, 0x2

    iget-object p0, p0, Lcom/my/target/k1;->c:Lcom/my/target/u0;

    move-object v2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/my/target/u0;->g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    return-void
.end method

.method public final d()V
    .locals 14

    iget v0, p0, Lcom/my/target/k1;->i:I

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/my/target/k1;->b:Lcom/my/target/ra;

    invoke-virtual {v0}, Lcom/my/target/ra;->getVideoView()Lcom/my/target/qa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/qa;->getVideoPlayer()Lcom/my/target/n;

    move-result-object v2

    invoke-interface {v2}, Lcom/my/target/n;->destroy()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/my/target/k1;->g:Lcom/my/target/k0;

    const/4 v3, 0x1

    iput v3, p0, Lcom/my/target/k1;->i:I

    invoke-virtual {v0}, Lcom/my/target/ra;->getInteractiveView()Lcom/my/target/oa;

    move-result-object v4

    iget-object v5, p0, Lcom/my/target/k1;->d:Lj1a;

    iget-object v5, v5, Lj1a;->X:Lj4a;

    iget-object v6, v5, Lj4a;->d:Ljava/lang/String;

    iget-object v9, v5, Lj4a;->c:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/my/target/oa;->getWebView()Landroid/webkit/WebView;

    move-result-object v7

    const/16 v4, 0x8

    const/4 v13, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {v7, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_4

    const-string v11, "UTF-8"

    const/4 v12, 0x0

    const-string v8, "https://ad.mail.ru/"

    const-string v10, "text/html"

    invoke-virtual/range {v7 .. v12}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget v3, v5, Lj4a;->e:I

    iget-object v6, v0, Lcom/my/target/ra;->e:Lcom/my/target/fk;

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v0, Lcom/my/target/ra;->g:Lcom/my/target/e6;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/my/target/k1;->b(I)V

    iget-object v3, v0, Lcom/my/target/ra;->i:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lcom/my/target/ra;->b:Lcom/my/target/qa;

    iget-object v6, v0, Lcom/my/target/ra;->c:Lcom/my/target/oa;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v3, v6, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_1
    iget-object v1, v5, Lu1;->b:Ljava/lang/Object;

    check-cast v1, Ln4a;

    invoke-static {v1, v2}, Lcom/my/target/n0;->a(Ln4a;Lcom/my/target/m1$b;)Lcom/my/target/n0;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/k1;->h:Lcom/my/target/n0;

    invoke-virtual {v0}, Lcom/my/target/ra;->getInteractiveView()Lcom/my/target/oa;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/my/target/n0;->b(Landroid/view/View;)V

    iget-object p0, p0, Lcom/my/target/k1;->h:Lcom/my/target/n0;

    invoke-virtual {p0}, Lcom/my/target/n0;->c()V

    return-void

    :cond_4
    iget-object v1, v0, Lcom/my/target/ra;->e:Lcom/my/target/fk;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/my/target/ra;->g:Lcom/my/target/e6;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/my/target/k1;->c:Lcom/my/target/u0;

    iget-boolean v0, p0, Lcom/my/target/r;->e:Z

    if-eqz v0, :cond_5

    :goto_2
    return-void

    :cond_5
    iput-boolean v3, p0, Lcom/my/target/r;->e:Z

    return-void
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/k1;->f:Lcom/my/target/k1$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/k1;->f:Lcom/my/target/k1$c;

    :cond_0
    return-void
.end method

.method public final getCloseButton()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final i()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/k1;->b:Lcom/my/target/ra;

    return-object p0
.end method

.method public final pause()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/k1;->b:Lcom/my/target/ra;

    invoke-virtual {v0}, Lcom/my/target/ra;->getVideoView()Lcom/my/target/qa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/qa;->getVideoPlayer()Lcom/my/target/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/n;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/my/target/n;->pause()V

    iget-object p0, p0, Lcom/my/target/k1;->g:Lcom/my/target/k0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/k0;->i()V

    :cond_0
    return-void
.end method

.method public final resume()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/k1;->b:Lcom/my/target/ra;

    invoke-virtual {v0}, Lcom/my/target/ra;->getVideoView()Lcom/my/target/qa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/qa;->getVideoPlayer()Lcom/my/target/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/n;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/my/target/n;->resume()V

    iget-object p0, p0, Lcom/my/target/k1;->g:Lcom/my/target/k0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/k0;->l()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 0

    return-void
.end method
