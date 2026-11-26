.class public final Lk42;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lao1;",
        "Lcom/warefly/checkscan/databinding/ItemCarouselCouponsBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Loe1;


# direct methods
.method public constructor <init>(Loe1;)V
    .locals 1

    sget-object v0, Li42;->c:Li42;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lk42;->b:Loe1;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lao1;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemCarouselCouponsBinding;

    check-cast p2, Lao1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemCarouselCouponsBinding;->ivLogoCoupon:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, p2, Lao1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh37;->P(Lqs2;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemCarouselCouponsBinding;->ivLogoCoupon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemCarouselCouponsBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08043e

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemCarouselCouponsBinding;->viewColoredLayerCoupon:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p2, Lao1;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemCarouselCouponsBinding;->tvDescriptionCoupon:Landroid/widget/TextView;

    iget-object v1, p2, Lao1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemCarouselCouponsBinding;->tvTermCoupon:Landroid/widget/TextView;

    iget-object v1, p2, Lao1;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemCarouselCouponsBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lj42;

    invoke-direct {v1, p0, p2}, Lj42;-><init>(Lk42;Lao1;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
