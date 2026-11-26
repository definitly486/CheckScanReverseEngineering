.class public final Lcom/my/target/nb;
.super Lcom/my/target/pb;
.source "SourceFile"

# interfaces
.implements Lj2a;


# instance fields
.field public final n:Lcom/my/target/yj;

.field public final o:Lu0a;


# direct methods
.method public constructor <init>(Lcom/my/target/i0;Lcom/my/target/r1;Lcom/my/target/yj;Lcom/my/target/rf;Lcom/my/target/z0$a;Lu0a;Landroid/content/Context;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/my/target/pb;-><init>(Lcom/my/target/i0;Lcom/my/target/r1;Lcom/my/target/rf;Lcom/my/target/z0$a;Landroid/content/Context;)V

    iput-object p6, v0, Lcom/my/target/nb;->o:Lu0a;

    iput-object p3, v0, Lcom/my/target/nb;->n:Lcom/my/target/yj;

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, v0, Lcom/my/target/pb;->i:Lyu9;

    sget p1, Lyu9;->r:I

    iget-object p0, p0, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, v0, Lcom/my/target/pb;->c:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getVideoContent()Lcom/my/target/yj;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nb;->n:Lcom/my/target/yj;

    return-object p0
.end method

.method public getVideoPlayer()Lcom/my/target/n;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nb;->n:Lcom/my/target/yj;

    invoke-virtual {p0}, Lcom/my/target/yj;->getVideoPlayer()Lcom/my/target/n;

    move-result-object p0

    return-object p0
.end method

.method public getVideoView()Lcom/my/target/f0;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nb;->n:Lcom/my/target/yj;

    invoke-virtual {p0}, Lcom/my/target/yj;->getVideoView()Lcom/my/target/f0;

    move-result-object p0

    return-object p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/my/target/nb;->n:Lcom/my/target/yj;

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoControlView()Lcom/my/target/zj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/zj;->getVideoControlButton()Lcom/my/target/e6;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/nb;->o:Lu0a;

    if-ne p1, v1, :cond_0

    invoke-interface {v2}, Lu0a;->c()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoControlView()Lcom/my/target/zj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/zj;->getSoundControlButton()Lcom/my/target/e6;

    move-result-object v1

    if-ne p1, v1, :cond_1

    invoke-interface {v2}, Lu0a;->d()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoView()Lcom/my/target/f0;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/my/target/pb;->e:Lcom/my/target/z0$a;

    if-ne p1, v1, :cond_3

    iget-boolean p1, p0, Lcom/my/target/pb;->g:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/my/target/pb;->f:Le6a;

    new-instance p1, Lup9;

    const/16 v0, 0x2000

    invoke-direct {p1, v0, p0}, Lup9;-><init>(ILe6a;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lgia;

    invoke-direct {p1}, Lgia;-><init>()V

    :goto_0
    invoke-interface {v3, v2, p1}, Lcom/my/target/z0$a;->c(ILpfa;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/my/target/yj;->getPreviewView()Lcom/my/target/zh;

    move-result-object v1

    if-ne p1, v1, :cond_5

    invoke-virtual {v0}, Lcom/my/target/yj;->getPreviewView()Lcom/my/target/zh;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-boolean p1, p0, Lcom/my/target/pb;->g:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/my/target/pb;->f:Le6a;

    new-instance p1, Lup9;

    const/16 v0, 0x8

    invoke-direct {p1, v0, p0}, Lup9;-><init>(ILe6a;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lgia;

    invoke-direct {p1}, Lgia;-><init>()V

    :goto_1
    invoke-interface {v3, v2, p1}, Lcom/my/target/z0$a;->c(ILpfa;)V

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/my/target/pb;->g:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/my/target/pb;->d(Landroid/view/View;)V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lcom/my/target/pb;->e(Landroid/view/View;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/my/target/pb;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/my/target/pb;->i:Lyu9;

    sget v0, Lyu9;->x:I

    iget-object p1, p1, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iget-object p0, p0, Lcom/my/target/nb;->n:Lcom/my/target/yj;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setBanner(Lxda;)V
    .locals 5

    iget-object v0, p1, Lxda;->Z:Lkha;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lkha;->S:Lh14;

    iget-object v2, p0, Lcom/my/target/nb;->n:Lcom/my/target/yj;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lxha;->d:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Lcom/my/target/yj;->getPreviewView()Lcom/my/target/zh;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/my/target/pb;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lkha;->c()I

    move-result v1

    invoke-virtual {v0}, Lkha;->j()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/my/target/pb;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Lcom/my/target/yj;->getVideoView()Lcom/my/target/f0;

    move-result-object v1

    invoke-virtual {v0}, Lkha;->c()I

    move-result v3

    invoke-virtual {v0}, Lkha;->j()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/my/target/f0;->b(II)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_1
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, v2, Lcom/my/target/yj;->c:Lcom/my/target/zh;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1}, Lcom/my/target/pb;->setBanner(Lxda;)V

    return-void
.end method

.method public setClickAreaActual(Lt2a;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/my/target/pb;->setClickAreaActual(Lt2a;)V

    iget-object v0, p0, Lcom/my/target/nb;->n:Lcom/my/target/yj;

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoControlView()Lcom/my/target/zj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/zj;->getVideoControlButton()Lcom/my/target/e6;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/pb;->l:Lcom/my/target/c1;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoControlView()Lcom/my/target/zj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/zj;->getSoundControlButton()Lcom/my/target/e6;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoView()Lcom/my/target/f0;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Lcom/my/target/yj;->getPreviewView()Lcom/my/target/zh;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Lcom/my/target/yj;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoControlView()Lcom/my/target/zj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/zj;->getVideoControlButton()Lcom/my/target/e6;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoControlView()Lcom/my/target/zj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/zj;->getSoundControlButton()Lcom/my/target/e6;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p1, Lt2a;->m:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/my/target/yj;->getDomainTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/yj;->getPreviewView()Lcom/my/target/zh;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoView()Lcom/my/target/f0;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoView()Lcom/my/target/f0;

    move-result-object v1

    iget-boolean v2, p1, Lt2a;->n:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/yj;->getPreviewView()Lcom/my/target/zh;

    move-result-object v1

    iget-boolean v2, p1, Lt2a;->d:Z

    if-eqz v2, :cond_2

    move-object v2, p0

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/yj;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-boolean p1, p1, Lt2a;->j:Z

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p0, v3

    :goto_2
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setClickAreaLegacy(Lt2a;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/my/target/pb;->setClickAreaLegacy(Lt2a;)V

    iget-object v0, p0, Lcom/my/target/nb;->n:Lcom/my/target/yj;

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoControlView()Lcom/my/target/zj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/zj;->getVideoControlButton()Lcom/my/target/e6;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoControlView()Lcom/my/target/zj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/zj;->getSoundControlButton()Lcom/my/target/e6;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoView()Lcom/my/target/f0;

    move-result-object v1

    iget-boolean v2, p1, Lt2a;->n:Z

    iget-boolean v3, p1, Lt2a;->m:Z

    const/4 v4, 0x0

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/yj;->getPreviewView()Lcom/my/target/zh;

    move-result-object v1

    iget-boolean v2, p1, Lt2a;->d:Z

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v4

    goto :goto_3

    :cond_3
    :goto_2
    move-object v2, p0

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/yj;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-boolean p1, p1, Lt2a;->j:Z

    if-nez p1, :cond_5

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move-object p0, v4

    :cond_5
    :goto_4
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/my/target/pb;->setDomain(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/my/target/pb;->h:Lcom/my/target/s3;

    instance-of v1, v0, Lcom/my/target/uh;

    const/16 v2, 0x8

    iget-object p0, p0, Lcom/my/target/nb;->n:Lcom/my/target/yj;

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/yj;->getDomainTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/yj;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/my/target/yj;->getDomainTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/my/target/yj;->getDomainContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/my/target/s3;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/my/target/yj;->getDomainContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setDoubleBanners(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lv2a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setIcon(Lh14;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/my/target/pb;->setIcon(Lh14;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lxha;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/pb;->h:Lcom/my/target/s3;

    instance-of v0, v0, Lcom/my/target/uh;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/my/target/nb;->n:Lcom/my/target/yj;

    invoke-virtual {p0}, Lcom/my/target/yj;->getLogoImageView()Landroid/widget/ImageView;

    move-result-object p0

    iget-object p1, p1, Lxha;->d:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lr2a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
