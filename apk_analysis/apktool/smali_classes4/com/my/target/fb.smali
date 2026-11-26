.class public final Lcom/my/target/fb;
.super Lcom/my/target/pb;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final n:Lcom/my/target/i6;


# direct methods
.method public constructor <init>(Lcom/my/target/i0;Lcom/my/target/r1;Lcom/my/target/i6;Lcom/my/target/rf;Lcom/my/target/z0$a;Landroid/content/Context;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/my/target/pb;-><init>(Lcom/my/target/i0;Lcom/my/target/r1;Lcom/my/target/rf;Lcom/my/target/z0$a;Landroid/content/Context;)V

    iput-object p3, v0, Lcom/my/target/fb;->n:Lcom/my/target/i6;

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

.method public final c(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/my/target/fb;->n:Lcom/my/target/i6;

    invoke-virtual {v0}, Lcom/my/target/i6;->getImageView()Lcom/my/target/zh;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/my/target/pb;->c(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/my/target/pb;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/my/target/pb;->i:Lyu9;

    sget v0, Lyu9;->x:I

    iget-object p1, p1, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iget-object p0, p0, Lcom/my/target/fb;->n:Lcom/my/target/i6;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setBanner(Lxda;)V
    .locals 3

    iget-object v0, p1, Lao9;->p:Lh14;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lxha;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/my/target/fb;->n:Lcom/my/target/i6;

    invoke-virtual {v1}, Lcom/my/target/i6;->getImageView()Lcom/my/target/zh;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/my/target/pb;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    invoke-super {p0, p1}, Lcom/my/target/pb;->setBanner(Lxda;)V

    return-void
.end method

.method public setClickAreaActual(Lt2a;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/my/target/pb;->setClickAreaActual(Lt2a;)V

    iget-object v0, p0, Lcom/my/target/fb;->n:Lcom/my/target/i6;

    invoke-virtual {v0}, Lcom/my/target/i6;->getImageView()Lcom/my/target/zh;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/pb;->l:Lcom/my/target/c1;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Lcom/my/target/i6;->getLogoImageView()Lcom/my/target/zh;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Lcom/my/target/i6;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v1, p1, Lt2a;->m:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/my/target/i6;->getImageView()Lcom/my/target/zh;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/i6;->getLogoImageView()Lcom/my/target/zh;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/i6;->getDomainTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/my/target/i6;->getImageView()Lcom/my/target/zh;

    move-result-object v1

    iget-boolean v2, p1, Lt2a;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/i6;->getLogoImageView()Lcom/my/target/zh;

    move-result-object v1

    iget-boolean v2, p1, Lt2a;->c:Z

    if-eqz v2, :cond_2

    move-object v2, p0

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/i6;->getDomainTextView()Landroid/widget/TextView;

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
    .locals 4

    invoke-super {p0, p1}, Lcom/my/target/pb;->setClickAreaLegacy(Lt2a;)V

    iget-boolean v0, p1, Lt2a;->m:Z

    iget-object v1, p0, Lcom/my/target/fb;->n:Lcom/my/target/i6;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/my/target/i6;->getImageView()Lcom/my/target/zh;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/my/target/i6;->getLogoImageView()Lcom/my/target/zh;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/my/target/i6;->getDomainTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/my/target/i6;->getImageView()Lcom/my/target/zh;

    move-result-object v0

    iget-boolean v2, p1, Lt2a;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/my/target/i6;->getLogoImageView()Lcom/my/target/zh;

    move-result-object v0

    iget-boolean v2, p1, Lt2a;->c:Z

    if-eqz v2, :cond_2

    move-object v2, p0

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/my/target/i6;->getDomainTextView()Landroid/widget/TextView;

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

.method public setDomain(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/my/target/pb;->setDomain(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/my/target/pb;->h:Lcom/my/target/s3;

    instance-of v1, v0, Lcom/my/target/uh;

    const/16 v2, 0x8

    iget-object p0, p0, Lcom/my/target/fb;->n:Lcom/my/target/i6;

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/i6;->getDomainTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/i6;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/my/target/i6;->getDomainTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/my/target/i6;->getDomainContainer()Landroid/widget/LinearLayout;

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

    invoke-virtual {p0}, Lcom/my/target/i6;->getDomainContainer()Landroid/widget/LinearLayout;

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

    iget-object p0, p0, Lcom/my/target/fb;->n:Lcom/my/target/i6;

    invoke-virtual {p0}, Lcom/my/target/i6;->getLogoImageView()Lcom/my/target/zh;

    move-result-object p0

    iget-object p1, p1, Lxha;->d:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lr2a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
