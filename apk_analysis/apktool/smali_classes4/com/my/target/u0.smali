.class public final Lcom/my/target/u0;
.super Lcom/my/target/r;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/s1;


# instance fields
.field public final j:Lcom/my/target/n0;

.field public final k:Lj1a;

.field public final l:Lcom/my/target/e2;

.field public m:Lcom/my/target/x0;

.field public n:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lz94;Lj1a;Lz94$b;Lz94$b;)V
    .locals 1

    invoke-direct {p0, p3, p1, p4}, Lcom/my/target/r;-><init>(Lz94$b;Lz94;Lz94$b;)V

    iput-object p2, p0, Lcom/my/target/u0;->k:Lj1a;

    iget-object p4, p2, Lao9;->a:Ln4a;

    new-instance v0, Ll2;

    invoke-direct {v0, p3, p2}, Ll2;-><init>(Lz94$b;Lj1a;)V

    invoke-static {p4, v0}, Lcom/my/target/n0;->a(Ln4a;Lcom/my/target/m1$b;)Lcom/my/target/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/my/target/u0;->j:Lcom/my/target/n0;

    iget-object p1, p1, Lzc0;->a:Lz2a;

    iget-object p1, p1, Lz2a;->a:Lf72;

    new-instance p2, Lcom/my/target/e2;

    invoke-direct {p2, p1}, Lcom/my/target/e2;-><init>(Lf72;)V

    iput-object p2, p0, Lcom/my/target/u0;->l:Lcom/my/target/e2;

    return-void
.end method


# virtual methods
.method public final e(Lao9;)V
    .locals 3

    iget-object v0, p1, Lao9;->Q:Lpp9;

    const/16 v1, 0x138c

    invoke-virtual {v0, v1}, Lpp9;->c(I)V

    iget-object p1, p1, Lao9;->a:Ln4a;

    new-instance v0, Lm2;

    invoke-direct {v0, p0}, Lm2;-><init>(Lcom/my/target/u0;)V

    const-string v1, "closedByUser"

    const/16 v2, 0x3e7

    invoke-static {p1, v1, v2, v0}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    invoke-virtual {p0}, Lcom/my/target/r;->t()V

    return-void
.end method

.method public final f(Lcom/my/target/common/MyTargetActivity;Landroid/content/Intent;Landroid/widget/FrameLayout;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p3}, Lcom/my/target/r;->f(Lcom/my/target/common/MyTargetActivity;Landroid/content/Intent;Landroid/widget/FrameLayout;)V

    iget-object v1, v0, Lcom/my/target/u0;->k:Lj1a;

    iget-object v2, v1, Lao9;->Q:Lpp9;

    iget-object v3, v1, Lj1a;->Z:Lev9;

    const/16 v4, 0x1388

    invoke-virtual {v2, v4}, Lpp9;->c(I)V

    new-instance v2, Lk2;

    invoke-direct {v2, v0, v1}, Lk2;-><init>(Lcom/my/target/u0;Lj1a;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/my/target/k1;

    invoke-direct {v5, v1, v0, v2, v4}, Lcom/my/target/k1;-><init>(Lj1a;Lcom/my/target/u0;Lk2;Landroid/content/Context;)V

    iget-object v2, v5, Lcom/my/target/k1;->b:Lcom/my/target/ra;

    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget v4, v5, Lcom/my/target/k1;->i:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v7, v1, Lj1a;->a0:Ly8a;

    if-eqz v7, :cond_8

    if-eq v4, v6, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v4, v2, Lcom/my/target/ra;->b:Lcom/my/target/qa;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    iget-object v8, v2, Lcom/my/target/ra;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v4, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_0
    const/4 v4, 0x0

    iput v4, v5, Lcom/my/target/k1;->i:I

    iget-object v6, v7, Ly8a;->g:Lrn9;

    if-nez v6, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v8, v5, Lcom/my/target/k1;->g:Lcom/my/target/k0;

    if-nez v8, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/my/target/ra;->getVideoView()Lcom/my/target/qa;

    move-result-object v8

    invoke-virtual {v8}, Lcom/my/target/qa;->getVideoPlayer()Lcom/my/target/n;

    move-result-object v9

    invoke-virtual {v8}, Lcom/my/target/qa;->getAdVideoView()Lcom/my/target/f0;

    move-result-object v10

    invoke-virtual {v8}, Lcom/my/target/qa;->getAdIcon()Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v8}, Lcom/my/target/qa;->getCtaButton()Landroid/widget/Button;

    move-result-object v12

    invoke-virtual {v8}, Lcom/my/target/qa;->getVolumeButton()Lcom/my/target/e6;

    move-result-object v13

    new-instance v14, Lj3a;

    const/4 v15, 0x1

    invoke-direct {v14, v5, v15}, Lj3a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v11, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8}, Lcom/my/target/qa;->getProgressView()Lcom/my/target/dg;

    move-result-object v14

    iget v4, v7, Ly8a;->h:I

    int-to-float v4, v4

    invoke-virtual {v14, v4}, Lcom/my/target/dg;->setMaxTime(F)V

    new-instance v4, Lcom/my/target/k1$b;

    iget-object v15, v5, Lcom/my/target/k1;->g:Lcom/my/target/k0;

    iget-object v0, v5, Lcom/my/target/k1;->c:Lcom/my/target/u0;

    invoke-direct {v4, v14, v15, v0}, Lcom/my/target/k1$b;-><init>(Lcom/my/target/dg;Lcom/my/target/k0;Lcom/my/target/s1;)V

    invoke-virtual {v8, v4}, Lcom/my/target/qa;->setPlayableVideoListener(Lcom/my/target/zf$a;)V

    iget-boolean v4, v7, Ly8a;->e:Z

    if-eqz v4, :cond_5

    invoke-interface {v9}, Lcom/my/target/n;->f()V

    :cond_5
    invoke-interface {v9, v10}, Lcom/my/target/n;->b(Lcom/my/target/f0;)V

    iget v4, v6, Lxha;->b:I

    iget v14, v6, Lxha;->c:I

    invoke-virtual {v10, v4, v14}, Lcom/my/target/f0;->b(II)V

    iget-object v4, v6, Lxha;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v9, v6, v4}, Lcom/my/target/n;->c(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v4, v7, Ly8a;->d:Lh14;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lxha;->d:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_6
    iget v4, v3, Lev9;->a:I

    invoke-virtual {v12, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget v4, v3, Lev9;->c:I

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Lao9;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lsn9;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lsn9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v4, v7, Ly8a;->e:Z

    const/16 v6, 0x1a4

    if-eqz v4, :cond_7

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    const-string v4, "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"

    invoke-static {v6, v4}, Lwfa;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    const-string v4, "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"

    invoke-static {v6, v4}, Lwfa;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    :goto_2
    invoke-virtual {v13, v4, v6}, Lcom/my/target/e6;->a(Landroid/graphics/Bitmap;Z)V

    new-instance v4, Ls7a;

    invoke-direct {v4, v9, v13}, Ls7a;-><init>(Lcom/my/target/n;Lcom/my/target/e6;)V

    invoke-virtual {v13, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v4, v7, Ly8a;->c:I

    invoke-virtual {v5, v4}, Lcom/my/target/k1;->b(I)V

    invoke-virtual {v0, v1, v8}, Lcom/my/target/u0;->o(Lao9;Landroid/view/View;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Lcom/my/target/k1;->d()V

    :goto_3
    iget-object v0, v1, Lao9;->H:Lcom/my/target/q;

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Lcom/my/target/ra;->getAdChoicesButton()Lcom/my/target/e6;

    move-result-object v1

    new-instance v4, Lr7a;

    invoke-direct {v4, v5, v0}, Lr7a;-><init>(Lcom/my/target/k1;Lcom/my/target/q;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/my/target/q;->c:Ljava/util/List;

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    new-instance v1, Lex0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/my/target/v;

    invoke-direct {v4, v0, v1}, Lcom/my/target/v;-><init>(Lcom/my/target/q;Lex0;)V

    iput-object v4, v5, Lcom/my/target/k1;->j:Lcom/my/target/v;

    new-instance v0, Lz3;

    const/4 v1, 0x5

    invoke-direct {v0, v5, v1}, Lz3;-><init>(Ljava/lang/Object;I)V

    iput-object v0, v4, Lcom/my/target/v;->c:Lgv9;

    :goto_4
    iget v0, v3, Lev9;->d:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/my/target/u0;->n:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V
    .locals 0

    iget-object p1, p0, Lcom/my/target/u0;->l:Lcom/my/target/e2;

    iget-object p2, p0, Lcom/my/target/u0;->k:Lj1a;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/my/target/e2;->a(Lao9;ILcha;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/my/target/r;->a:Lz94$b;

    iget-object p0, p0, Lz94$b;->b:Lz94;

    iget-object p1, p0, Lz94;->h:Lz94$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lz94$a;->f(Lz94;)V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/r;->d:Z

    iget-object v0, p0, Lcom/my/target/u0;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/k1;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/my/target/k1;->b:Lcom/my/target/ra;

    iget-object v2, p0, Lcom/my/target/u0;->m:Lcom/my/target/x0;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/my/target/x0;->c(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/my/target/u0;->j:Lcom/my/target/n0;

    invoke-virtual {p0, v1}, Lcom/my/target/n0;->b(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/my/target/n0;->c()V

    invoke-virtual {v0}, Lcom/my/target/k1;->resume()V

    :cond_1
    return-void
.end method

.method public final n(D)V
    .locals 0

    return-void
.end method

.method public final o(Lao9;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/my/target/u0;->m:Lcom/my/target/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/x0;->e()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/u0;->k:Lj1a;

    iget-object v1, v0, Lao9;->b:La0a;

    iget-object v0, v0, Lao9;->a:Ln4a;

    new-instance v2, Lm2;

    invoke-direct {v2, p0}, Lm2;-><init>(Lcom/my/target/u0;)V

    new-instance v3, Lcom/my/target/x0;

    invoke-direct {v3, v1, v0, v2}, Lcom/my/target/x0;-><init>(La0a;Ln4a;Lcom/my/target/m1$b;)V

    iput-object v3, p0, Lcom/my/target/u0;->m:Lcom/my/target/x0;

    iget-boolean p0, p0, Lcom/my/target/r;->d:Z

    if-eqz p0, :cond_1

    invoke-virtual {v3, p2}, Lcom/my/target/x0;->c(Landroid/view/View;)V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "InterstitialAdImagineEngine: Ad shown, banner Id = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lao9;->B:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Li01;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final p()V
    .locals 0

    invoke-super {p0}, Lcom/my/target/r;->p()V

    iget-object p0, p0, Lcom/my/target/u0;->n:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/my/target/k1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/k1;->destroy()V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/r;->d:Z

    iget-object v0, p0, Lcom/my/target/u0;->m:Lcom/my/target/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/x0;->e()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/u0;->j:Lcom/my/target/n0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/n0;->b(Landroid/view/View;)V

    iget-object p0, p0, Lcom/my/target/u0;->n:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/my/target/k1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/my/target/k1;->pause()V

    :cond_1
    return-void
.end method

.method public final u()Z
    .locals 3

    iget-object p0, p0, Lcom/my/target/u0;->n:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/my/target/k1;

    if-eqz p0, :cond_1

    iget v1, p0, Lcom/my/target/k1;->i:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/my/target/k1;->b:Lcom/my/target/ra;

    iget-object p0, p0, Lcom/my/target/ra;->h:Lcom/my/target/e6;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method
