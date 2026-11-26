.class public final La56;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lb56;",
        "Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormBannerBinding;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lb56;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormBannerBinding;

    check-cast p2, Lb56;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    iget-object v0, p2, Lb56;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    iget-object v0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormBannerBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    iget v0, p2, Lb56;->c:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormBannerBinding;->tvBannerText:Landroid/widget/TextView;

    iget-object v0, p2, Lb56;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p2, Lb56;->d:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormBannerBinding;->mcvBadge:Lcom/google/android/material/card/MaterialCardView;

    iget-object p2, p2, Lb56;->b:Lb56$a;

    iget v0, p2, Lb56$a;->c:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormBannerBinding;->tvBadgeText:Landroid/widget/TextView;

    iget-object p1, p2, Lb56$a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p2, Lb56$a;->b:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormBannerBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormBannerBinding;->mcvBadge:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    new-instance v0, Lcom/google/android/material/shape/RelativeCornerSize;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method
