.class public final Lcom/my/target/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/e1$a;
.implements Lcom/my/target/g1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/w$a;,
        Lcom/my/target/w$b;
    }
.end annotation


# instance fields
.field public final b:Ld9a;

.field public final c:Lal;

.field public final d:Lcom/my/target/e1;

.field public final e:Lcom/my/target/f6;

.field public final f:Landroid/widget/FrameLayout;

.field public final g:Landroid/os/Handler;

.field public final h:Lcom/my/target/m;

.field public i:Lcom/my/target/w$b;

.field public j:Lcom/my/target/g1$a;

.field public k:J

.field public l:J

.field public m:Lwv9;

.field public n:J

.field public o:J

.field public p:Lcom/my/target/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lw4a;->g:Landroid/os/Handler;

    new-instance v1, Ld9a;

    const/16 v2, 0xc8

    invoke-direct {v1, v2, v0}, Ld9a;-><init>(ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/my/target/w;->b:Ld9a;

    new-instance v0, Lal;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lal;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/my/target/w;->c:Lal;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/my/target/w;->g:Landroid/os/Handler;

    new-instance v0, Lcom/my/target/e1;

    invoke-direct {v0, p1}, Lcom/my/target/e1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/w;->d:Lcom/my/target/e1;

    new-instance v1, Lcom/my/target/f6;

    invoke-direct {v1, p1}, Lcom/my/target/f6;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/w;->e:Lcom/my/target/f6;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/my/target/w;->f:Landroid/widget/FrameLayout;

    const-string v3, "Close"

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v3, "close_button"

    invoke-static {v1, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v5, 0x800005

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x1

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {p1, v5, v0}, Lrk3;->b(Landroid/content/Context;IF)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lkv9;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/my/target/f6;->a(Landroid/graphics/Bitmap;Z)V

    :cond_1
    new-instance v0, Lcom/my/target/m;

    invoke-direct {v0, p1}, Lcom/my/target/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/w;->h:Lcom/my/target/m;

    const/16 p0, 0xa

    invoke-static {p0, p1}, Ll3a;->d(ILandroid/content/Context;)I

    move-result p0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    if-nez p0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-interface {p0}, Lcom/my/target/g1$a;->a()V

    return-void
.end method

.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/my/target/w;->d:Lcom/my/target/e1;

    invoke-virtual {v0}, Lcom/my/target/h1;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const-string v3, "window.playerDestroy && window.playerDestroy();"

    invoke-virtual {v1, v3, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    iget-object p0, p0, Lcom/my/target/w;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Lcom/my/target/h1;->a(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    if-eqz p1, :cond_0

    .line 27
    invoke-interface {p1}, Lcom/my/target/g1$a;->m()V

    .line 28
    iget-object p1, p0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 29
    invoke-interface {p1, v0}, Lcom/my/target/t1$a;->a(Z)V

    .line 30
    iget-object p1, p0, Lcom/my/target/w;->b:Ld9a;

    iget-object p0, p0, Lcom/my/target/w;->c:Lal;

    invoke-virtual {p1, p0}, Ld9a;->e(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/my/target/w;->m:Lwv9;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lao9;->Q:Lpp9;

    iget-boolean v0, v0, Lpp9;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lup9;

    new-instance v1, Ld6a;

    invoke-direct {v1}, Le6a;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lup9;-><init>(ILe6a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lgia;

    invoke-direct {v0}, Lgia;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/my/target/w;->m:Lwv9;

    invoke-static {v0}, Ly14;->j(Lpfa;)Lcha;

    move-result-object v5

    iget-object p0, p0, Lcom/my/target/w;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v4, 0x1

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/my/target/t1$a;->g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final c(Landroid/webkit/WebView;)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/my/target/g1$a;->c(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/my/target/w;->a(I)V

    return-void
.end method

.method public final e(Lcom/my/target/g1$a;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    return-void
.end method

.method public final f(Lwv9;)V
    .locals 8

    iput-object p1, p0, Lcom/my/target/w;->m:Lwv9;

    iget-object v0, p0, Lcom/my/target/w;->d:Lcom/my/target/e1;

    invoke-virtual {v0, p0}, Lcom/my/target/e1;->setBannerWebViewListener(Lcom/my/target/e1$a;)V

    iget-object v1, p1, Lwv9;->X:Ljava/lang/String;

    iget-object v2, p0, Lcom/my/target/w;->c:Lal;

    iget-object v3, p0, Lcom/my/target/w;->b:Ld9a;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lcom/my/target/e1;->setData(Ljava/lang/String;)V

    iget-boolean v1, p1, Lwv9;->Z:Z

    invoke-virtual {v0, v1}, Lcom/my/target/e1;->setForceMediaPlayback(Z)V

    iget-object v0, p1, Ljia;->R:Lh14;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/my/target/w;->e:Lcom/my/target/f6;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lxha;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0, v1}, Lcom/my/target/f6;->a(Landroid/graphics/Bitmap;Z)V

    :cond_0
    new-instance v0, Lcom/my/target/w$a;

    invoke-direct {v0, p0}, Lcom/my/target/w$a;-><init>(Lcom/my/target/w;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p1, Ljia;->S:F

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    const/4 v6, 0x0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "InterstitialHtmlPresenter: Banner will be allowed to close in "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Ljia;->S:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " seconds"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Ljia;->S:F

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v4

    float-to-long v6, v0

    iput-wide v6, p0, Lcom/my/target/w;->l:J

    invoke-virtual {v3, v2}, Ld9a;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/my/target/w;->k:J

    iget-object v0, p0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/my/target/t1$a;->a(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "InterstitialHtmlPresenter: Banner is allowed to close"

    invoke-static {v6, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    iget v0, p1, Lwv9;->Y:F

    cmpl-float v1, v0, v5

    if-lez v1, :cond_3

    new-instance v1, Lcom/my/target/w$b;

    invoke-direct {v1, p0}, Lcom/my/target/w$b;-><init>(Lcom/my/target/w;)V

    iput-object v1, p0, Lcom/my/target/w;->i:Lcom/my/target/w$b;

    float-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/my/target/w;->o:J

    iget-object v0, p0, Lcom/my/target/w;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/my/target/w;->n:J

    iget-object v1, p0, Lcom/my/target/w;->i:Lcom/my/target/w$b;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iget-object v0, p1, Lao9;->H:Lcom/my/target/q;

    iget-object v1, p0, Lcom/my/target/w;->h:Lcom/my/target/m;

    if-nez v0, :cond_4

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/my/target/q;->a:Lh14;

    iget-object v2, v2, Lxha;->d:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/my/target/m;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v2, Lcv9;

    invoke-direct {v2, p0}, Lcv9;-><init>(Lcom/my/target/w;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/my/target/q;->c:Ljava/util/List;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance v1, Lex0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/my/target/v;

    invoke-direct {v2, v0, v1}, Lcom/my/target/v;-><init>(Lcom/my/target/q;Lex0;)V

    iput-object v2, p0, Lcom/my/target/w;->p:Lcom/my/target/v;

    new-instance v0, Lm89;

    invoke-direct {v0, p0, p1}, Lm89;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v2, Lcom/my/target/v;->c:Lgv9;

    :goto_1
    iget-object v0, p0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/my/target/w;->f:Landroid/widget/FrameLayout;

    invoke-interface {v0, p1, p0}, Lcom/my/target/t1$a;->o(Lao9;Landroid/view/View;)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/my/target/g1$a;->m()V

    iget-object p0, p0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    if-eqz p0, :cond_7

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/my/target/t1$a;->a(Z)V

    invoke-virtual {v3, v2}, Ld9a;->e(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public final getCloseButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/w;->e:Lcom/my/target/f6;

    return-object p0
.end method

.method public final i()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/w;->f:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final pause()V
    .locals 7

    iget-wide v0, p0, Lcom/my/target/w;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/my/target/w;->k:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/my/target/w;->l:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/my/target/w;->l:J

    goto :goto_0

    :cond_0
    iput-wide v2, p0, Lcom/my/target/w;->l:J

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/my/target/w;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/my/target/w;->n:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-wide v4, p0, Lcom/my/target/w;->o:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/my/target/w;->o:J

    goto :goto_1

    :cond_2
    iput-wide v2, p0, Lcom/my/target/w;->o:J

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/my/target/w;->i:Lcom/my/target/w$b;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/my/target/w;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v0, p0, Lcom/my/target/w;->b:Ld9a;

    iget-object p0, p0, Lcom/my/target/w;->c:Lal;

    invoke-virtual {v0, p0}, Ld9a;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resume()V
    .locals 6

    iget-wide v0, p0, Lcom/my/target/w;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/w;->b:Ld9a;

    iget-object v1, p0, Lcom/my/target/w;->c:Lal;

    invoke-virtual {v0, v1}, Ld9a;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/my/target/w;->k:J

    iget-object v0, p0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/my/target/t1$a;->a(Z)V

    :cond_0
    iget-wide v0, p0, Lcom/my/target/w;->o:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/my/target/w;->i:Lcom/my/target/w$b;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/my/target/w;->g:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/my/target/w;->n:J

    iget-object p0, p0, Lcom/my/target/w;->i:Lcom/my/target/w$b;

    invoke-virtual {v3, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 0

    return-void
.end method
