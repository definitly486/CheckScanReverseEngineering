.class public final Lcom/my/target/qa;
.super Law9;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/f0$a;


# instance fields
.field public final b:Lcom/my/target/f0;

.field public final c:Lcom/my/target/n;

.field public final d:Lcom/my/target/dg;

.field public final e:Lcom/my/target/e6;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/widget/Button;

.field public final h:Landroid/widget/FrameLayout;

.field public final i:I

.field public final j:I

.field public k:Lcom/my/target/zf$a;


# direct methods
.method public constructor <init>(ILandroid/content/Context;I)V
    .locals 3

    invoke-direct {p0, p2}, Law9;-><init>(Landroid/content/Context;)V

    iput p1, p0, Lcom/my/target/qa;->i:I

    iput p3, p0, Lcom/my/target/qa;->j:I

    new-instance p1, Lcom/my/target/f0;

    invoke-direct {p1, p2}, Lcom/my/target/f0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/my/target/qa;->b:Lcom/my/target/f0;

    invoke-virtual {p1, p0}, Lcom/my/target/f0;->setAdVideoViewListener(Lcom/my/target/f0$a;)V

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    invoke-static {p2, p1}, Lho9;->a(Landroid/content/Context;Z)Lcom/my/target/n;

    move-result-object p3

    iput-object p3, p0, Lcom/my/target/qa;->c:Lcom/my/target/n;

    new-instance p3, Lcom/my/target/e6;

    invoke-direct {p3, p2}, Lcom/my/target/e6;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/my/target/qa;->e:Lcom/my/target/e6;

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p2, p1, v0}, Lrk3;->b(Landroid/content/Context;IF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3, v0}, Lcom/my/target/e6;->setPadding(I)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/my/target/qa;->h:Landroid/widget/FrameLayout;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p2, p1, v0}, Lrk3;->b(Landroid/content/Context;IF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {p3, v0}, Law9;->a(Landroid/view/View;F)V

    const v0, -0x33e3e2e2    # -4.092428E7f

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/qa;->f:Landroid/widget/ImageView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p1, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Law9;->a(Landroid/view/View;F)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/qa;->g:Landroid/widget/Button;

    invoke-static {p2, p1, v2}, Lrk3;->b(Landroid/content/Context;IF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Law9;->a(Landroid/view/View;F)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/my/target/dg;

    invoke-direct {p1, p2}, Lcom/my/target/dg;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/my/target/qa;->d:Lcom/my/target/dg;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getAdIcon()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/qa;->f:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getAdVideoView()Lcom/my/target/f0;
    .locals 0

    iget-object p0, p0, Lcom/my/target/qa;->b:Lcom/my/target/f0;

    return-object p0
.end method

.method public getCtaButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/my/target/qa;->g:Landroid/widget/Button;

    return-object p0
.end method

.method public getProgressView()Lcom/my/target/dg;
    .locals 0

    iget-object p0, p0, Lcom/my/target/qa;->d:Lcom/my/target/dg;

    return-object p0
.end method

.method public getVideoPlayer()Lcom/my/target/n;
    .locals 0

    iget-object p0, p0, Lcom/my/target/qa;->c:Lcom/my/target/n;

    return-object p0
.end method

.method public getVolumeButton()Lcom/my/target/e6;
    .locals 0

    iget-object p0, p0, Lcom/my/target/qa;->e:Lcom/my/target/e6;

    return-object p0
.end method

.method public final onLayout(ZIIII)V
    .locals 7

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ll3a;

    invoke-direct {p2, p1}, Ll3a;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/my/target/qa;->b:Lcom/my/target/f0;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    const/high16 p1, 0x42400000    # 48.0f

    invoke-virtual {p2, p1}, Ll3a;->b(F)I

    move-result p1

    const/high16 p3, 0x40c00000    # 6.0f

    invoke-virtual {p2, p3}, Ll3a;->b(F)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p2, v1}, Ll3a;->b(F)I

    move-result v2

    sub-int v2, p5, v2

    sub-int v3, v2, p1

    add-int/2addr p1, v0

    iget-object v4, p0, Lcom/my/target/qa;->e:Lcom/my/target/e6;

    invoke-virtual {v4, v0, v3, p1, v2}, Landroid/view/View;->layout(IIII)V

    const/high16 p1, 0x433e0000    # 190.0f

    invoke-virtual {p2, p1}, Ll3a;->b(F)I

    move-result p1

    const/high16 v0, 0x42600000    # 56.0f

    invoke-virtual {p2, v0}, Ll3a;->b(F)I

    move-result v0

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {p2, v2}, Ll3a;->b(F)I

    move-result v3

    sub-int v3, p4, v3

    invoke-virtual {p2, v1}, Ll3a;->b(F)I

    move-result v1

    sub-int v1, p5, v1

    sub-int v4, v3, p1

    sub-int v5, v1, v0

    iget-object v6, p0, Lcom/my/target/qa;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4, v5, v3, v1}, Landroid/view/View;->layout(IIII)V

    const/high16 v1, 0x42300000    # 44.0f

    invoke-virtual {p2, v1}, Ll3a;->b(F)I

    move-result v1

    invoke-virtual {p2, p3}, Ll3a;->b(F)I

    move-result p3

    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    add-int v4, p3, v1

    add-int v5, v3, v1

    iget-object v6, p0, Lcom/my/target/qa;->f:Landroid/widget/ImageView;

    invoke-virtual {v6, p3, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    mul-int/lit8 v4, p3, 0x2

    add-int/2addr v4, v1

    sub-int/2addr p1, p3

    sub-int/2addr v0, p3

    iget-object p3, p0, Lcom/my/target/qa;->g:Landroid/widget/Button;

    invoke-virtual {p3, v4, v3, p1, v0}, Landroid/view/View;->layout(IIII)V

    const/high16 p1, 0x40400000    # 3.0f

    invoke-virtual {p2, p1}, Ll3a;->b(F)I

    move-result p1

    invoke-virtual {p2, v2}, Ll3a;->b(F)I

    move-result p2

    sub-int p1, p5, p1

    sub-int/2addr p4, p2

    iget-object p0, p0, Lcom/my/target/qa;->d:Lcom/my/target/dg;

    invoke-virtual {p0, p2, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ll3a;

    invoke-direct {v1, v0}, Ll3a;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/qa;->b:Lcom/my/target/f0;

    invoke-virtual {v4, v2, v3}, Landroid/view/View;->measure(II)V

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v1, v2}, Ll3a;->b(F)I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v4, p0, Lcom/my/target/qa;->e:Lcom/my/target/e6;

    invoke-virtual {v4, v3, v2}, Landroid/view/View;->measure(II)V

    const/high16 v2, 0x433e0000    # 190.0f

    invoke-virtual {v1, v2}, Ll3a;->b(F)I

    move-result v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-virtual {v1, v3}, Ll3a;->b(F)I

    move-result v3

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/qa;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2, v3}, Landroid/view/View;->measure(II)V

    const/high16 v2, 0x42300000    # 44.0f

    invoke-virtual {v1, v2}, Ll3a;->b(F)I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/qa;->f:Landroid/widget/ImageView;

    invoke-virtual {v5, v3, v4}, Landroid/view/View;->measure(II)V

    const/high16 v3, 0x43000000    # 128.0f

    invoke-virtual {v1, v3}, Ll3a;->b(F)I

    move-result v3

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v4, p0, Lcom/my/target/qa;->g:Landroid/widget/Button;

    invoke-virtual {v4, v3, v2}, Landroid/view/View;->measure(II)V

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Ll3a;->b(F)I

    move-result v2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v1, v3}, Ll3a;->b(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/my/target/qa;->d:Lcom/my/target/dg;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Lcom/my/target/qa;->c:Lcom/my/target/n;

    instance-of v1, v0, Lcom/my/target/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/my/target/qa;->b:Lcom/my/target/f0;

    invoke-virtual {v2, v1}, Lcom/my/target/f0;->setViewMode(I)V

    iget v1, p0, Lcom/my/target/qa;->i:I

    iget v3, p0, Lcom/my/target/qa;->j:I

    invoke-virtual {v2, v1, v3}, Lcom/my/target/f0;->b(II)V

    check-cast v0, Lcom/my/target/h;

    invoke-virtual {v0, v2}, Lcom/my/target/h;->b(Lcom/my/target/f0;)V

    invoke-virtual {v0}, Lcom/my/target/h;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/my/target/qa;->k:Lcom/my/target/zf$a;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/my/target/n$a;->k()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/my/target/qa;->k:Lcom/my/target/zf$a;

    if-eqz p0, :cond_1

    const-string v0, "Playback within no hardware accelerated view is available only with ExoPlayer"

    invoke-interface {p0, v0}, Lcom/my/target/n$a;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setPlayableVideoListener(Lcom/my/target/zf$a;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/qa;->k:Lcom/my/target/zf$a;

    iget-object p0, p0, Lcom/my/target/qa;->c:Lcom/my/target/n;

    invoke-interface {p0, p1}, Lcom/my/target/n;->a(Lcom/my/target/n$a;)V

    return-void
.end method
