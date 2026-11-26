.class public final Lcom/my/target/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/t1;


# instance fields
.field public final b:Landroid/os/Handler;

.field public final c:Lom;

.field public final d:Lcom/my/target/m2$a;

.field public final e:Lvy9;

.field public final f:Lcom/my/target/o;

.field public final g:Lcom/my/target/lb;

.field public h:J


# direct methods
.method public constructor <init>(Lcom/my/target/s;Lvy9;Lcom/my/target/m2$a;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/my/target/j0;->e:Lvy9;

    iput-object p3, p0, Lcom/my/target/j0;->d:Lcom/my/target/m2$a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/my/target/j0;->b:Landroid/os/Handler;

    new-instance v2, Lcom/my/target/lb;

    new-instance v3, Lcom/my/target/i0;

    iget-object v0, p1, Lcom/my/target/s;->b:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/my/target/i0;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/my/target/r1;

    invoke-direct {v4, v0}, Lcom/my/target/r1;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/my/target/i6;

    invoke-direct {v5, v0}, Lcom/my/target/i6;-><init>(Landroid/content/Context;)V

    iget-object v7, p1, Lcom/my/target/s;->b:Landroid/content/Context;

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/my/target/lb;-><init>(Lcom/my/target/i0;Lcom/my/target/r1;Lcom/my/target/i6;Lcom/my/target/j0;Landroid/content/Context;)V

    iput-object v2, v6, Lcom/my/target/j0;->g:Lcom/my/target/lb;

    invoke-virtual {v6}, Lcom/my/target/j0;->c()V

    iget-object p0, p2, Lao9;->Q:Lpp9;

    iget-boolean p0, p0, Lpp9;->c:Z

    iget-object p1, p2, Lao9;->r:Lt2a;

    iput-boolean p0, v2, Lcom/my/target/lb;->f:Z

    iget-object v0, v2, Lcom/my/target/lb;->b:Lcom/my/target/i0;

    if-eqz p0, :cond_0

    iget-object p0, v2, Lcom/my/target/lb;->n:Lcom/my/target/c1;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/my/target/s3;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {v1}, Lcom/my/target/s3;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {v1}, Lcom/my/target/s3;->getCtaButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Lcom/my/target/i0;->getAdsIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {v1}, Lcom/my/target/s3;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {v1}, Lcom/my/target/s3;->getLogoImageView()Lcom/my/target/zh;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {v1}, Lcom/my/target/s3;->getLogoImageView()Lcom/my/target/zh;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {v1}, Lcom/my/target/s3;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-boolean p0, p1, Lt2a;->m:Z

    iget-boolean v1, p1, Lt2a;->j:Z

    iget-boolean v3, p1, Lt2a;->g:Z

    const/4 v4, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {v2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/i0;->getAdsIcon()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/my/target/s3;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getCtaButton()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getDomainTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_b

    iget-object p0, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getLogoImageView()Lcom/my/target/zh;

    move-result-object p0

    if-eqz p0, :cond_b

    iget-object p0, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getLogoImageView()Lcom/my/target/zh;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getDomainTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    :cond_1
    iget-boolean p0, p1, Lt2a;->l:Z

    if-eqz p0, :cond_2

    move-object p0, v2

    goto :goto_0

    :cond_2
    move-object p0, v4

    :goto_0
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p0, p1, Lt2a;->h:Z

    if-nez p0, :cond_4

    iget-boolean p0, p1, Lt2a;->i:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v4

    goto :goto_2

    :cond_4
    :goto_1
    move-object p0, v2

    :goto_2
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/i0;->getAdsIcon()Landroid/widget/ImageView;

    move-result-object p0

    iget-boolean v0, p1, Lt2a;->c:Z

    if-eqz v0, :cond_5

    move-object v0, v2

    goto :goto_3

    :cond_5
    move-object v0, v4

    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/my/target/s3;->getCtaButton()Landroid/widget/Button;

    move-result-object p0

    if-eqz v3, :cond_6

    move-object v0, v2

    goto :goto_4

    :cond_6
    move-object v0, v4

    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getCtaButton()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    iget-boolean v0, p1, Lt2a;->a:Z

    if-eqz v0, :cond_7

    move-object v0, v2

    goto :goto_5

    :cond_7
    move-object v0, v4

    :goto_5
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object p0

    iget-boolean p1, p1, Lt2a;->b:Z

    if-eqz p1, :cond_8

    move-object p1, v2

    goto :goto_6

    :cond_8
    move-object p1, v4

    :goto_6
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getDomainTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_b

    iget-object p0, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getLogoImageView()Lcom/my/target/zh;

    move-result-object p0

    if-eqz p0, :cond_b

    iget-object p0, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getLogoImageView()Lcom/my/target/zh;

    move-result-object p0

    if-eqz v1, :cond_9

    move-object p1, v2

    goto :goto_7

    :cond_9
    move-object p1, v4

    :goto_7
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v2, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getDomainTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz v1, :cond_a

    move-object p1, v2

    goto :goto_8

    :cond_a
    move-object p1, v4

    :goto_8
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    :goto_9
    new-instance p0, Lom;

    const/4 p1, 0x4

    invoke-direct {p0, v6, p1}, Lom;-><init>(Ljava/lang/Object;I)V

    iput-object p0, v6, Lcom/my/target/j0;->c:Lom;

    iget-object p0, p2, Lao9;->H:Lcom/my/target/q;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_c

    invoke-virtual {v2, v0}, Lcom/my/target/lb;->setShowingChoiceButton(Z)V

    goto :goto_a

    :cond_c
    invoke-virtual {v2, p1}, Lcom/my/target/lb;->setShowingChoiceButton(Z)V

    iget-object v1, p0, Lcom/my/target/q;->c:Ljava/util/List;

    if-nez v1, :cond_d

    goto :goto_a

    :cond_d
    new-instance v1, Lcom/my/target/o;

    invoke-virtual {p2}, Lao9;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, p0, v3, v5}, Lcom/my/target/o;-><init>(Lcom/my/target/q;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, v6, Lcom/my/target/j0;->f:Lcom/my/target/o;

    new-instance p0, Lq31;

    invoke-direct {p0, v6, p2}, Lq31;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p0, v1, Lcom/my/target/o;->e:Lgv9;

    :goto_a
    iget-boolean p0, p2, Ljia;->V:Z

    if-eqz p0, :cond_f

    iget p0, p2, Ljia;->S:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v1

    float-to-long v7, p0

    iput-wide v7, v6, Lcom/my/target/j0;->h:J

    const-wide/16 v9, 0x0

    cmp-long p0, v7, v9

    if-lez p0, :cond_e

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "InterstitialPresenterS4: Banner will be allowed to close in "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v6, Lcom/my/target/j0;->h:J

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " millis"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/my/target/j0;->b()V

    :goto_b
    move p1, v0

    goto :goto_c

    :cond_e
    const-string p0, "InterstitialPresenterS4: CloseDelayState.DISABLED: Banner is allowed to close"

    invoke-static {v4, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/my/target/j0;->a()V

    goto :goto_c

    :cond_f
    iget-object p0, v2, Lcom/my/target/lb;->d:Lcom/my/target/r1;

    invoke-virtual {p0}, Lcom/my/target/r1;->getProgressFrame()Landroid/widget/RelativeLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :goto_c
    iget-object p0, p3, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    iput-boolean p1, p0, Lcom/my/target/r;->i:Z

    invoke-virtual {p3, p2, v2}, Lcom/my/target/m2$a;->o(Lao9;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/j0;->g:Lcom/my/target/lb;

    iget-object v0, v0, Lcom/my/target/lb;->d:Lcom/my/target/r1;

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

    iget-object v0, p0, Lcom/my/target/j0;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/j0;->c:Lom;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    iget-object p0, p0, Lcom/my/target/j0;->d:Lcom/my/target/m2$a;

    invoke-virtual {p0, v0, v1}, Lcom/my/target/m2$a;->n(D)V

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    iput-boolean v0, p0, Lcom/my/target/r;->i:Z

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/my/target/j0;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/j0;->c:Lom;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-wide v0, p0, Lcom/my/target/j0;->h:J

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/my/target/j0;->d:Lcom/my/target/m2$a;

    invoke-virtual {v2, v0, v1}, Lcom/my/target/m2$a;->n(D)V

    iget-wide v0, p0, Lcom/my/target/j0;->h:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    iget-object p0, p0, Lcom/my/target/j0;->g:Lcom/my/target/lb;

    invoke-virtual {p0, v0}, Lcom/my/target/lb;->setRemainingAllowCloseDelay(I)V

    return-void
.end method

.method public final c()V
    .locals 14

    iget-object v0, p0, Lcom/my/target/j0;->e:Lvy9;

    iget-object v1, v0, Lvy9;->a0:Lh14;

    iget-object v2, v0, Lvy9;->Z:Lh14;

    iget-object p0, p0, Lcom/my/target/j0;->g:Lcom/my/target/lb;

    iput-object v1, p0, Lcom/my/target/lb;->j:Lh14;

    iput-object v2, p0, Lcom/my/target/lb;->i:Lh14;

    iget-object v1, p0, Lcom/my/target/lb;->k:Lcom/my/target/i6;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ll3a;->q(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-lez v3, :cond_1b

    if-gtz v2, :cond_0

    goto/16 :goto_a

    :cond_0
    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v2

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/my/target/lb;->j:Lh14;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/my/target/lb;->i:Lh14;

    :goto_0
    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/my/target/lb;->j:Lh14;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/my/target/lb;->i:Lh14;

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    goto/16 :goto_a

    :cond_4
    invoke-virtual {v1}, Lcom/my/target/i6;->getImageView()Lcom/my/target/zh;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/my/target/zh;->setImageData(Lh14;)V

    iget v6, v3, Lxha;->b:I

    iget v3, v3, Lxha;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Ll3a;->l(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    int-to-float v9, v3

    div-float v9, v6, v9

    cmpl-float v10, v9, v2

    const/4 v11, 0x2

    if-nez v10, :cond_6

    if-ge v8, v7, :cond_5

    goto :goto_4

    :cond_5
    int-to-float v3, v7

    div-float/2addr v3, v9

    :goto_2
    float-to-int v8, v3

    goto :goto_5

    :cond_6
    iget v12, p0, Lcom/my/target/lb;->l:I

    if-ne v12, v11, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v6, 0x11a

    invoke-static {v6, v3}, Ll3a;->d(ILandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    if-lez v10, :cond_8

    int-to-float v6, v8

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v6, v8

    int-to-float v8, v7

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v10, v8

    cmpg-float v12, v10, v3

    if-gez v12, :cond_7

    float-to-int v3, v3

    :goto_3
    int-to-float v6, v3

    div-float/2addr v6, v9

    float-to-int v7, v6

    move v8, v3

    goto :goto_5

    :cond_7
    cmpl-float v3, v10, v6

    if-lez v3, :cond_b

    float-to-int v3, v6

    goto :goto_3

    :cond_8
    int-to-float v6, v7

    mul-float/2addr v6, v9

    float-to-int v8, v6

    int-to-float v6, v8

    cmpg-float v6, v6, v3

    if-gez v6, :cond_b

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v12, 0x2b5

    invoke-static {v12, v10}, Ll3a;->d(ILandroid/content/Context;)I

    move-result v10

    if-le v3, v10, :cond_a

    int-to-float v3, v7

    const/high16 v7, 0x42aa0000    # 85.0f

    mul-float/2addr v3, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v3, v7

    div-float/2addr v6, v3

    float-to-int v7, v3

    mul-float/2addr v3, v6

    goto :goto_2

    :cond_a
    :goto_4
    int-to-float v3, v8

    div-float/2addr v3, v9

    float-to-int v7, v3

    :cond_b
    :goto_5
    iget-object v3, p0, Lcom/my/target/lb;->c:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    if-eqz v6, :cond_c

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ll3a;->q(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v6

    iget v9, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-lez v9, :cond_13

    if-gtz v6, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v12

    if-eqz v12, :cond_e

    new-instance v6, Lcom/my/target/uh;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/my/target/uh;-><init>(Landroid/content/Context;)V

    goto :goto_7

    :cond_e
    if-ne v10, v11, :cond_10

    div-int/lit8 v9, v9, 0x3

    mul-int/2addr v9, v11

    if-ge v8, v9, :cond_f

    new-instance v6, Lcom/my/target/l1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/my/target/l1;-><init>(Landroid/content/Context;)V

    goto :goto_7

    :cond_f
    new-instance v6, Lcom/my/target/ch;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/my/target/ch;-><init>(Landroid/content/Context;)V

    goto :goto_7

    :cond_10
    div-int/lit8 v9, v6, 0x2

    div-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x3

    if-le v7, v9, :cond_11

    if-ge v7, v6, :cond_11

    new-instance v6, Lcom/my/target/l1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/my/target/l1;-><init>(Landroid/content/Context;)V

    goto :goto_7

    :cond_11
    if-ge v7, v9, :cond_12

    new-instance v6, Lcom/my/target/l1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/my/target/l1;-><init>(Landroid/content/Context;)V

    goto :goto_7

    :cond_12
    new-instance v6, Lcom/my/target/uh;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/my/target/uh;-><init>(Landroid/content/Context;)V

    goto :goto_7

    :cond_13
    :goto_6
    move-object v6, v4

    :goto_7
    iput-object v6, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    const/4 v9, -0x1

    if-eqz v6, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v10

    const/4 v12, -0x2

    if-eqz v10, :cond_14

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_8

    :cond_14
    iget v10, p0, Lcom/my/target/lb;->l:I

    iget-object v13, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    if-ne v10, v11, :cond_16

    instance-of v10, v13, Lcom/my/target/ch;

    if-eqz v10, :cond_15

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_8

    :cond_15
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v2, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_8

    :cond_16
    instance-of v10, v13, Lcom/my/target/uh;

    if-eqz v10, :cond_17

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_8

    :cond_17
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v2, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_8
    invoke-virtual {v6, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_9

    :cond_19
    iget v2, p0, Lcom/my/target/lb;->l:I

    if-ne v2, v11, :cond_1a

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_9

    :cond_1a
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_9
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    :goto_a
    iget-object v2, v0, Lao9;->H:Lcom/my/target/q;

    if-eqz v2, :cond_1c

    iget-object v4, v2, Lcom/my/target/q;->a:Lh14;

    :cond_1c
    invoke-virtual {v0}, Lao9;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/my/target/lb;->b:Lcom/my/target/i0;

    const/16 v6, 0x8

    if-nez v4, :cond_1d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1d

    move v7, v6

    goto :goto_b

    :cond_1d
    move v7, v5

    :goto_b
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/my/target/i0;->getAgeRestrictionsTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_1e

    invoke-virtual {v3}, Lcom/my/target/i0;->getAdsIcon()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, v4, Lxha;->d:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1e
    invoke-virtual {v0}, Lao9;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/my/target/lb;->setTitleAction(Ljava/lang/String;)V

    iget-object v2, v0, Lao9;->e:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/my/target/lb;->setTitle(Ljava/lang/String;)V

    iget-object v2, v0, Lao9;->c:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/my/target/lb;->setDescription(Ljava/lang/String;)V

    iget-object v2, v0, Lao9;->q:Lh14;

    iget-object v0, v0, Lao9;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    instance-of v4, v3, Lcom/my/target/uh;

    if-eqz v4, :cond_22

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    if-nez v2, :cond_1f

    invoke-virtual {v1}, Lcom/my/target/i6;->getDomainContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1f
    invoke-virtual {v1}, Lcom/my/target/i6;->getDomainTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    move v3, v6

    goto :goto_c

    :cond_20
    move v3, v5

    :goto_c
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/my/target/i6;->getDomainTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/my/target/i6;->getLogoImageView()Lcom/my/target/zh;

    move-result-object p0

    if-nez v2, :cond_21

    move v5, v6

    :cond_21
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/my/target/i6;->getLogoImageView()Lcom/my/target/zh;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/my/target/zh;->setImageData(Lh14;)V

    return-void

    :cond_22
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Lcom/my/target/s3;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {v1}, Lcom/my/target/s3;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    move v3, v6

    goto :goto_d

    :cond_23
    move v3, v5

    :goto_d
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {v1}, Lcom/my/target/s3;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    iget-object v0, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {v0}, Lcom/my/target/s3;->getLogoImageView()Lcom/my/target/zh;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {v0}, Lcom/my/target/s3;->getLogoImageView()Lcom/my/target/zh;

    move-result-object v0

    if-nez v2, :cond_25

    move v5, v6

    :cond_25
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getLogoImageView()Lcom/my/target/zh;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/my/target/zh;->setImageData(Lh14;)V

    :cond_26
    return-void
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/j0;->b:Landroid/os/Handler;

    iget-object p0, p0, Lcom/my/target/j0;->c:Lom;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getCloseButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/j0;->g:Lcom/my/target/lb;

    invoke-virtual {p0}, Lcom/my/target/lb;->getCloseButton()Lcom/my/target/e6;

    move-result-object p0

    return-object p0
.end method

.method public final i()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/j0;->g:Lcom/my/target/lb;

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
