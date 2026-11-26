.class public Lyads/iu3;
.super Lyads/sj;
.source "SourceFile"

# interfaces
.implements Lyads/fu3;
.implements Lyads/r55;


# instance fields
.field public g:Landroid/graphics/Bitmap;

.field public h:Lyads/du3;

.field public i:Lll3;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Lyads/hu3;

.field public l:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lyads/sj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lyads/gu3;->a:Lyads/gu3;

    iput-object p1, p0, Lyads/iu3;->k:Lyads/hu3;

    return-void
.end method

.method public static synthetic setImageChangeCallback$default(Lyads/iu3;Lll3;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lyads/iu3;->setImageChangeCallback(Lll3;)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: setImageChangeCallback"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    const/4 v2, -0x3

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lyads/sj;->c:Lyads/hp0;

    sget-object v1, Lyads/sj;->f:[Lze4;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast v0, Lyads/qj;

    sget-object v1, Lyads/qj;->b:Lyads/qj;

    if-ne v0, v1, :cond_4

    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    return-object p1

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_4

    invoke-static {p1}, Ljs2;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    new-instance v0, Lyads/qc5;

    invoke-direct {v0, p1, p0}, Lyads/qc5;-><init>(Landroid/graphics/drawable/Drawable;F)V

    return-object v0

    :cond_4
    return-object p1
.end method

.method public final a(Ljava/util/concurrent/Future;)V
    .locals 1

    .line 109
    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_bitmap_load_references_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final h()V
    .locals 2

    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_bitmap_load_references_tag:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final j()Ljava/util/concurrent/Future;
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_bitmap_load_references_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/concurrent/Future;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final k()V
    .locals 2

    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_image_loaded_flag:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final l()Z
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_image_loaded_flag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final m()Z
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_image_loaded_flag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final n()V
    .locals 2

    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_image_loaded_flag:I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public o()V
    .locals 2

    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_image_loaded_flag:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/iu3;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lyads/iu3;->setExternalImage(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lyads/iu3;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lyads/iu3;->o()V

    invoke-virtual {p0}, Lyads/iu3;->j()Ljava/util/concurrent/Future;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    sget v1, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_bitmap_load_references_tag:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final setCurrentBitmapWithoutFilters$mobileads_externalRelease(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lyads/iu3;->g:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDelegate(Lyads/uh2;)V
    .locals 0

    return-void
.end method

.method public final setExternalImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lyads/iu3;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lyads/iu3;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lyads/sj;->invalidate()V

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lyads/iu3;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0, p1}, Lyads/iu3;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/iu3;->l:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    const/4 v2, -0x3

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lyads/sj;->c:Lyads/hp0;

    sget-object v1, Lyads/sj;->f:[Lze4;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast v0, Lyads/qj;

    sget-object v1, Lyads/qj;->b:Lyads/qj;

    if-ne v0, v1, :cond_3

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_3
    :goto_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lyads/iu3;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setImageChangeCallback(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyads/iu3;->i:Lll3;

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lyads/iu3;->j:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lyads/iu3;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lyads/iu3;->l:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p0, p0, Lyads/iu3;->i:Lll3;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v0, p0, Lyads/iu3;->k:Lyads/hu3;

    check-cast v0, Lyads/gu3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lyads/iu3;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lyads/iu3;->i:Lll3;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final setImageTransformer(Lyads/hu3;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lyads/gu3;->a:Lyads/gu3;

    :cond_0
    iput-object p1, p0, Lyads/iu3;->k:Lyads/hu3;

    iget-object p1, p0, Lyads/iu3;->j:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lyads/iu3;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final setLoadReference$mobileads_externalRelease(Lyads/du3;)V
    .locals 0

    iput-object p1, p0, Lyads/iu3;->h:Lyads/du3;

    return-void
.end method

.method public setPlaceholder(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lyads/iu3;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPreview(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lyads/iu3;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setPreview(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lyads/iu3;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
