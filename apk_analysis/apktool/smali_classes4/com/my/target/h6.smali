.class public Lcom/my/target/h6;
.super Lcom/my/target/o4;
.source "SourceFile"


# static fields
.field public static final synthetic r:I


# instance fields
.field public final q:Lcom/my/target/i6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/my/target/f1;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/my/target/o4;-><init>(Landroid/content/Context;Lcom/my/target/f1;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/my/target/i6;

    invoke-direct {p2, p1}, Lcom/my/target/i6;-><init>(Landroid/content/Context;)V

    new-instance v0, Lyu9;

    invoke-direct {v0, p1}, Lyu9;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/my/target/o4;->d(Lyu9;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setClipToOutline(Z)V

    iput-object p2, p0, Lcom/my/target/h6;->q:Lcom/my/target/i6;

    return-void
.end method


# virtual methods
.method public final c(Lv2a;)V
    .locals 4

    iget-object v0, p0, Lcom/my/target/o4;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/h6;->q:Lcom/my/target/i6;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/my/target/o4;->o:Lcom/my/target/f1;

    invoke-virtual {v2, p1, p0}, Lcom/my/target/f1;->e(Lv2a;Lcom/my/target/o4;)V

    iget-object p1, p1, Lv2a;->a:Lxda;

    iget-object p1, p1, Lao9;->p:Lh14;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/my/target/i6;->getImageView()Lcom/my/target/zh;

    move-result-object v2

    iget-object v3, p1, Lxha;->d:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Lcom/my/target/i6;->getImageView()Lcom/my/target/zh;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Llt2;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Llt2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/my/target/h6;->q:Lcom/my/target/i6;

    if-ne p1, v0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/my/target/o4;->e(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public setClickAreaActual(Lt2a;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/my/target/o4;->setClickAreaActual(Lt2a;)V

    iget-object v0, p0, Lcom/my/target/o4;->n:Lcom/my/target/c1;

    iget-object v1, p0, Lcom/my/target/h6;->q:Lcom/my/target/i6;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p1, Lt2a;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-boolean p1, p1, Lt2a;->d:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setClickAreaLegacy(Lt2a;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/my/target/o4;->setClickAreaLegacy(Lt2a;)V

    iget-boolean v0, p1, Lt2a;->m:Z

    iget-object v1, p0, Lcom/my/target/h6;->q:Lcom/my/target/i6;

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-boolean p1, p1, Lt2a;->d:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
