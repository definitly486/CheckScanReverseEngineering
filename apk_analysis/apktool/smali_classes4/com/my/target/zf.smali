.class public Lcom/my/target/zf;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/f0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/zf$b;,
        Lcom/my/target/zf$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/my/target/zh;

.field public final c:Ll3a;

.field public final d:Lcom/my/target/f6;

.field public final e:Lcom/my/target/zf$b;

.field public final f:Lcom/my/target/f0;

.field public final g:Landroid/widget/FrameLayout;

.field public final h:Landroid/widget/ProgressBar;

.field public final i:Z

.field public final j:Z

.field public k:Lcom/my/target/zf$a;

.field public l:Lcom/my/target/n;

.field public m:Lrn9;

.field public n:Landroid/graphics/Bitmap;

.field public o:I

.field public p:I

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll3a;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/zf;->q:Z

    iput-object p2, p0, Lcom/my/target/zf;->c:Ll3a;

    iput-boolean p3, p0, Lcom/my/target/zf;->i:Z

    iput-boolean v0, p0, Lcom/my/target/zf;->j:Z

    new-instance p2, Lcom/my/target/zh;

    invoke-direct {p2, p1}, Lcom/my/target/zh;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/my/target/zf;->b:Lcom/my/target/zh;

    new-instance p2, Lcom/my/target/f6;

    invoke-direct {p2, p1}, Lcom/my/target/f6;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/my/target/zf;->d:Lcom/my/target/f6;

    new-instance p2, Landroid/widget/ProgressBar;

    const/4 p3, 0x0

    const v0, 0x101007a

    invoke-direct {p2, p1, p3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p2, p0, Lcom/my/target/zf;->h:Landroid/widget/ProgressBar;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/my/target/zf;->g:Landroid/widget/FrameLayout;

    new-instance p2, Lcom/my/target/f0;

    invoke-direct {p2, p1}, Lcom/my/target/f0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/my/target/zf;->f:Lcom/my/target/f0;

    invoke-virtual {p2, p0}, Lcom/my/target/f0;->setAdVideoViewListener(Lcom/my/target/f0$a;)V

    new-instance p1, Lcom/my/target/zf$b;

    invoke-direct {p1, p0}, Lcom/my/target/zf$b;-><init>(Lcom/my/target/zf;)V

    iput-object p1, p0, Lcom/my/target/zf;->e:Lcom/my/target/zf$b;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/my/target/zf;->d:Lcom/my/target/f6;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/zf;->h:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/zf;->m:Lrn9;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/my/target/zf;->k:Lcom/my/target/zf$a;

    invoke-interface {v0, v1}, Lcom/my/target/n;->a(Lcom/my/target/n$a;)V

    iget-object v0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    iget-object v1, p0, Lcom/my/target/zf;->f:Lcom/my/target/f0;

    invoke-interface {v0, v1}, Lcom/my/target/n;->b(Lcom/my/target/f0;)V

    iget-object v0, p0, Lcom/my/target/zf;->m:Lrn9;

    iget v2, v0, Lxha;->b:I

    iget v0, v0, Lxha;->c:I

    invoke-virtual {v1, v2, v0}, Lcom/my/target/f0;->b(II)V

    iget-object v0, p0, Lcom/my/target/zf;->m:Lrn9;

    iget-object v2, v0, Lxha;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/my/target/n;->c(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    iget-object p1, v0, Lxha;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/my/target/n;->c(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/my/target/n;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    return-void
.end method

.method public final c(Lxda;)V
    .locals 5

    iget-object v0, p0, Lcom/my/target/zf;->g:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/zf;->d:Lcom/my/target/f6;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/zf;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/zf;->f:Lcom/my/target/f0;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/zf;->b:Lcom/my/target/zh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lao9;->p:Lh14;

    if-eqz p1, :cond_2

    iget-object v2, p1, Lxha;->d:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget v3, p1, Lxha;->b:I

    iput v3, p0, Lcom/my/target/zf;->p:I

    iget v4, p1, Lxha;->c:I

    iput v4, p0, Lcom/my/target/zf;->o:I

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    :cond_0
    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/my/target/zf;->p:I

    iget-object v2, p1, Lxha;->d:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/my/target/zf;->o:I

    :cond_1
    iget-object p0, p1, Lxha;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_2
    return-void
.end method

.method public final d(Lxda;I)V
    .locals 9

    iget-object v0, p1, Lxda;->Z:Lkha;

    if-eqz v0, :cond_b

    iget-object v1, v0, Lkha;->h0:Lxha;

    check-cast v1, Lrn9;

    iput-object v1, p0, Lcom/my/target/zf;->m:Lrn9;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v1, p0, Lcom/my/target/zf;->j:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lho9;->a(Landroid/content/Context;Z)Lcom/my/target/n;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    iget-object v2, p0, Lcom/my/target/zf;->k:Lcom/my/target/zf$a;

    invoke-interface {v1, v2}, Lcom/my/target/n;->a(Lcom/my/target/n$a;)V

    iget-boolean v1, v0, Lkha;->X:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    invoke-interface {v1, v2}, Lcom/my/target/n;->setVolume(F)V

    :cond_1
    iget-object v1, p0, Lcom/my/target/zf;->m:Lrn9;

    iget v3, v1, Lxha;->b:I

    iput v3, p0, Lcom/my/target/zf;->p:I

    iget v1, v1, Lxha;->c:I

    iput v1, p0, Lcom/my/target/zf;->o:I

    iget-object v0, v0, Lkha;->S:Lh14;

    iget-object v4, p0, Lcom/my/target/zf;->b:Lcom/my/target/zh;

    if-eqz v0, :cond_4

    iget-object p1, v0, Lxha;->d:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/my/target/zf;->n:Landroid/graphics/Bitmap;

    if-lez v3, :cond_2

    if-gtz v1, :cond_3

    :cond_2
    iget v1, v0, Lxha;->b:I

    iput v1, p0, Lcom/my/target/zf;->p:I

    iget v0, v0, Lxha;->c:I

    iput v0, p0, Lcom/my/target/zf;->o:I

    :cond_3
    invoke-virtual {v4, p1}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    iget-object p1, p1, Lao9;->p:Lh14;

    if-eqz p1, :cond_7

    if-lez v3, :cond_5

    if-gtz v1, :cond_6

    :cond_5
    iget v0, p1, Lxha;->b:I

    iput v0, p0, Lcom/my/target/zf;->p:I

    iget v0, p1, Lxha;->c:I

    iput v0, p0, Lcom/my/target/zf;->o:I

    :cond_6
    iget-object p1, p1, Lxha;->d:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/my/target/zf;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v4, p1}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    :goto_0
    const/4 p1, 0x1

    if-eq p2, p1, :cond_a

    iget-boolean p2, p0, Lcom/my/target/zf;->i:Z

    iget-object v0, p0, Lcom/my/target/zf;->c:Ll3a;

    if-eqz p2, :cond_8

    const/high16 p2, 0x430c0000    # 140.0f

    invoke-virtual {v0, p2}, Ll3a;->b(F)I

    move-result p2

    goto :goto_1

    :cond_8
    const/high16 p2, 0x42c00000    # 96.0f

    invoke-virtual {v0, p2}, Ll3a;->b(F)I

    move-result p2

    :goto_1
    div-int/lit8 v0, p2, 0x4

    div-int/lit8 v1, p2, 0x20

    add-int/2addr v1, v0

    div-int/lit8 v0, p2, 0x8

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p2, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v3, "InterstitialAdResources: Cannot build play icon - OOME"

    invoke-static {v4, v3}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    :goto_2
    const/4 v5, 0x0

    if-nez v3, :cond_9

    goto/16 :goto_3

    :cond_9
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v6, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v7, -0x78000000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, p2

    invoke-direct {v7, v2, v2, v8, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v7, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    const/high16 v6, 0x40800000    # 4.0f

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v6, -0xff540e

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Point;

    mul-int/lit8 v6, v0, 0x3

    invoke-direct {p1, v6, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v7, Landroid/graphics/Point;

    sub-int v1, p2, v1

    invoke-direct {v7, v6, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    div-int/lit8 p2, p2, 0x2

    invoke-direct {v1, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v6, p1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {p2, v0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v6, v7, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {p2, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    invoke-virtual {v4, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object v4, v3

    :goto_3
    iget-object p0, p0, Lcom/my/target/zf;->d:Lcom/my/target/f6;

    invoke-virtual {p0, v4, v5}, Lcom/my/target/f6;->a(Landroid/graphics/Bitmap;Z)V

    :cond_a
    :goto_4
    return-void

    :cond_b
    invoke-virtual {p0, p1}, Lcom/my/target/zf;->c(Lxda;)V

    return-void
.end method

.method public final e(Z)V
    .locals 3

    iget-object v0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/my/target/n;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/zf;->h:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/zf;->b:Lcom/my/target/zh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/my/target/zf;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean p1, p0, Lcom/my/target/zf;->q:Z

    iget-object v2, p0, Lcom/my/target/zf;->d:Lcom/my/target/f6;

    if-eqz p1, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final f()V
    .locals 5

    const-string v0, "play_button"

    iget-object v1, p0, Lcom/my/target/zf;->d:Lcom/my/target/f6;

    invoke-static {v1, v0}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v0, "media_image"

    iget-object v2, p0, Lcom/my/target/zf;->b:Lcom/my/target/zh;

    invoke-static {v2, v0}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v0, "video_texture"

    iget-object v3, p0, Lcom/my/target/zf;->f:Lcom/my/target/f0;

    invoke-static {v3, v0}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v0, "clickable_layout"

    iget-object v4, p0, Lcom/my/target/zf;->g:Landroid/widget/FrameLayout;

    invoke-static {v4, v0}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v0, 0x8

    iget-object v3, p0, Lcom/my/target/zf;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/my/target/n;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getClickableLayout()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/my/target/zf;->g:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getImageView()Lcom/my/target/zh;
    .locals 0

    iget-object p0, p0, Lcom/my/target/zf;->b:Lcom/my/target/zh;

    return-object p0
.end method

.method public getVideoPlayer()Lcom/my/target/n;
    .locals 0

    iget-object p0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/my/target/n;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/my/target/n;->pause()V

    iget-object v0, p0, Lcom/my/target/zf;->b:Lcom/my/target/zh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/my/target/zf;->f:Lcom/my/target/f0;

    invoke-virtual {v2}, Lcom/my/target/f0;->getScreenShot()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    invoke-interface {v3}, Lcom/my/target/n;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-boolean v0, p0, Lcom/my/target/zf;->q:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/my/target/zf;->d:Lcom/my/target/f6;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p5, p3

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v2, p0, Lcom/my/target/zf;->o:I

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_b

    iget v5, p0, Lcom/my/target/zf;->p:I

    if-nez v5, :cond_0

    goto/16 :goto_4

    :cond_0
    const/high16 v6, -0x80000000

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    move p2, v2

    move p1, v5

    move v0, v6

    move v1, v0

    :cond_1
    if-eqz p2, :cond_2

    if-nez v1, :cond_3

    :cond_2
    int-to-float p2, p1

    int-to-float v1, v5

    div-float/2addr p2, v1

    int-to-float v1, v2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    :cond_3
    if-eqz p1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    int-to-float p1, p2

    int-to-float v0, v2

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float/2addr p1, v0

    float-to-int p1, p1

    :cond_5
    int-to-float v0, v5

    int-to-float v1, v2

    div-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v1, v0

    int-to-float v2, p2

    cmpl-float v5, v1, v2

    if-lez v5, :cond_6

    mul-float/2addr v0, v2

    float-to-int p1, v0

    goto :goto_0

    :cond_6
    float-to-int p2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_a

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/my/target/zf;->b:Lcom/my/target/zh;

    if-eq v0, v1, :cond_9

    iget-object v1, p0, Lcom/my/target/zf;->g:Landroid/widget/FrameLayout;

    if-eq v0, v1, :cond_9

    iget-object v1, p0, Lcom/my/target/zf;->f:Lcom/my/target/f0;

    if-ne v0, v1, :cond_8

    goto :goto_1

    :cond_8
    move v1, v6

    goto :goto_2

    :cond_9
    :goto_1
    move v1, v3

    :goto_2
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_b
    :goto_4
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public final r()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    instance-of v0, v0, Lcom/my/target/h;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/my/target/zf;->f:Lcom/my/target/f0;

    invoke-virtual {v1, v0}, Lcom/my/target/f0;->setViewMode(I)V

    iget-object v0, p0, Lcom/my/target/zf;->m:Lrn9;

    if-eqz v0, :cond_0

    iget v2, v0, Lxha;->b:I

    iget v0, v0, Lxha;->c:I

    invoke-virtual {v1, v2, v0}, Lcom/my/target/f0;->b(II)V

    :cond_0
    iget-object v0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    invoke-interface {v0, v1}, Lcom/my/target/n;->b(Lcom/my/target/f0;)V

    iget-object v0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/my/target/zf;->k:Lcom/my/target/zf$a;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/my/target/zf$a;->m()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/my/target/zf;->k:Lcom/my/target/zf$a;

    if-eqz p0, :cond_2

    const-string v0, "Playback within no hardware accelerated view is available only with ExoPlayer"

    invoke-interface {p0, v0}, Lcom/my/target/n$a;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setInterstitialPromoViewListener(Lcom/my/target/zf$a;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/zf;->k:Lcom/my/target/zf$a;

    iget-object p0, p0, Lcom/my/target/zf;->l:Lcom/my/target/n;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/my/target/n;->a(Lcom/my/target/n$a;)V

    :cond_0
    return-void
.end method
