.class public final Lcom/my/target/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/t1;


# instance fields
.field public final b:Lcom/my/target/ib;

.field public final c:Lwv9;

.field public d:J

.field public final e:Landroid/os/Handler;

.field public final f:Ljj2;

.field public final g:Lcom/my/target/o;

.field public final h:Lcom/my/target/m2$a;


# direct methods
.method public constructor <init>(Lcom/my/target/s;Lwv9;Lcom/my/target/m2$a;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/my/target/b0;->h:Lcom/my/target/m2$a;

    iput-object p2, p0, Lcom/my/target/b0;->c:Lwv9;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/my/target/b0;->e:Landroid/os/Handler;

    new-instance v2, Lcom/my/target/ib;

    new-instance v3, Lcom/my/target/i0;

    iget-object v0, p1, Lcom/my/target/s;->b:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/my/target/i0;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/my/target/r1;

    invoke-direct {v4, v0}, Lcom/my/target/r1;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/my/target/e1;

    invoke-direct {v5, v0}, Lcom/my/target/e1;-><init>(Landroid/content/Context;)V

    iget-object v7, p1, Lcom/my/target/s;->b:Landroid/content/Context;

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/my/target/ib;-><init>(Lcom/my/target/i0;Lcom/my/target/r1;Lcom/my/target/e1;Lcom/my/target/b0;Landroid/content/Context;)V

    iput-object v2, v6, Lcom/my/target/b0;->b:Lcom/my/target/ib;

    invoke-virtual {v2, p2}, Lcom/my/target/ib;->setHtmlSource(Lwv9;)V

    iget-object p0, p2, Lao9;->H:Lcom/my/target/q;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/my/target/q;->a:Lh14;

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    invoke-virtual {v6}, Lcom/my/target/b0;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-nez p0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget-object v5, v2, Lcom/my/target/ib;->c:Lcom/my/target/i0;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5}, Lcom/my/target/i0;->getAgeRestrictionsTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p0, :cond_2

    invoke-virtual {v5}, Lcom/my/target/i0;->getAdsIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lxha;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object p0, p2, Lao9;->Q:Lpp9;

    iget-boolean p0, p0, Lpp9;->c:Z

    iget-object v0, p2, Lao9;->r:Lt2a;

    iput-boolean p0, v2, Lcom/my/target/ib;->f:Z

    if-eqz p0, :cond_3

    iget-object p0, v2, Lcom/my/target/ib;->g:Lcom/my/target/c1;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    iget-boolean p0, v0, Lt2a;->m:Z

    if-eqz p0, :cond_4

    invoke-virtual {v2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5}, Lcom/my/target/i0;->getAdsIcon()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_4
    iget-boolean p0, v0, Lt2a;->l:Z

    if-eqz p0, :cond_5

    move-object p0, v2

    goto :goto_2

    :cond_5
    move-object p0, p1

    :goto_2
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p0, v0, Lt2a;->h:Z

    if-nez p0, :cond_7

    iget-boolean p0, v0, Lt2a;->i:Z

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move-object p0, p1

    goto :goto_4

    :cond_7
    :goto_3
    move-object p0, v2

    :goto_4
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5}, Lcom/my/target/i0;->getAdsIcon()Landroid/widget/ImageView;

    move-result-object p0

    iget-boolean v0, v0, Lt2a;->c:Z

    if-eqz v0, :cond_8

    move-object v0, v2

    goto :goto_5

    :cond_8
    move-object v0, p1

    :goto_5
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    new-instance p0, Ljj2;

    const/4 v0, 0x5

    invoke-direct {p0, v6, v0}, Ljj2;-><init>(Ljava/lang/Object;I)V

    iput-object p0, v6, Lcom/my/target/b0;->f:Ljj2;

    iget-object p0, p2, Lao9;->H:Lcom/my/target/q;

    const/4 v0, 0x1

    if-nez p0, :cond_9

    invoke-virtual {v2, v3}, Lcom/my/target/ib;->setShowingChoiceButton(Z)V

    goto :goto_7

    :cond_9
    invoke-virtual {v2, v0}, Lcom/my/target/ib;->setShowingChoiceButton(Z)V

    iget-object v4, p0, Lcom/my/target/q;->c:Ljava/util/List;

    if-nez v4, :cond_a

    goto :goto_7

    :cond_a
    new-instance v4, Lcom/my/target/o;

    invoke-virtual {v6}, Lcom/my/target/b0;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, p0, v5, v7}, Lcom/my/target/o;-><init>(Lcom/my/target/q;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v4, v6, Lcom/my/target/b0;->g:Lcom/my/target/o;

    new-instance p0, Lyf2;

    invoke-direct {p0, v6, p2}, Lyf2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p0, v4, Lcom/my/target/o;->e:Lgv9;

    :goto_7
    iget-boolean p0, p2, Ljia;->V:Z

    if-eqz p0, :cond_c

    iget p0, p2, Ljia;->S:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v1

    float-to-long v4, p0

    iput-wide v4, v6, Lcom/my/target/b0;->d:J

    const-wide/16 v7, 0x0

    cmp-long p0, v4, v7

    if-lez p0, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "InterstitialPresenterS4: Banner will be allowed to close in "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, v6, Lcom/my/target/b0;->d:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " millis"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/my/target/b0;->c()V

    goto :goto_8

    :cond_b
    const-string p0, "InterstitialPresenterS4: CloseDelayState.DISABLED: Banner is allowed to close"

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/my/target/b0;->a()V

    move v3, v0

    goto :goto_8

    :cond_c
    iget-object p0, v2, Lcom/my/target/ib;->d:Lcom/my/target/r1;

    invoke-virtual {p0}, Lcom/my/target/r1;->getProgressFrame()Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    iget-object p0, p3, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    iput-boolean v3, p0, Lcom/my/target/r;->i:Z

    invoke-virtual {p3, p2, v2}, Lcom/my/target/m2$a;->o(Lao9;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/b0;->b:Lcom/my/target/ib;

    iget-object v0, v0, Lcom/my/target/ib;->d:Lcom/my/target/r1;

    invoke-virtual {v0}, Lcom/my/target/r1;->getCloseButton()Lcom/my/target/e6;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/my/target/r1;->getSkipButton()Lcom/my/target/e6;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/my/target/r1;->getProgressFrame()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/b0;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/b0;->f:Ljj2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    iget-object p0, p0, Lcom/my/target/b0;->h:Lcom/my/target/m2$a;

    invoke-virtual {p0, v0, v1}, Lcom/my/target/m2$a;->n(D)V

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    iput-boolean v0, p0, Lcom/my/target/r;->i:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/my/target/b0;->c:Lwv9;

    iget-object v0, p0, Lao9;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lao9;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lao9;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lao9;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/my/target/b0;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/b0;->f:Ljj2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-wide v0, p0, Lcom/my/target/b0;->d:J

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/my/target/b0;->h:Lcom/my/target/m2$a;

    invoke-virtual {v2, v0, v1}, Lcom/my/target/m2$a;->n(D)V

    iget-wide v0, p0, Lcom/my/target/b0;->d:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    iget-object p0, p0, Lcom/my/target/b0;->b:Lcom/my/target/ib;

    invoke-virtual {p0, v0}, Lcom/my/target/ib;->setRemainingAllowCloseDelay(I)V

    return-void
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/b0;->e:Landroid/os/Handler;

    iget-object p0, p0, Lcom/my/target/b0;->f:Ljj2;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getCloseButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/b0;->b:Lcom/my/target/ib;

    invoke-virtual {p0}, Lcom/my/target/ib;->getCloseButton()Lcom/my/target/e6;

    move-result-object p0

    return-object p0
.end method

.method public final i()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/b0;->b:Lcom/my/target/ib;

    return-object p0
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method public final resume()V
    .locals 0

    return-void
.end method

.method public final stop()V
    .locals 0

    return-void
.end method
