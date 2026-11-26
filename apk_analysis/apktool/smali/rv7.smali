.class public final Lrv7;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lsv7$b;",
        "Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V
    .locals 1

    sget-object v0, Lqv7;->c:Lqv7;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lrv7;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lsv7$b;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;

    check-cast p2, Lsv7$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x8

    invoke-static {v0, p0}, Lle9;->c(ILandroid/view/View;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    iget v0, p2, Lsv7$b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;->ivTopMarket:Lcom/google/android/material/imageview/ShapeableImageView;

    iget-object v0, p2, Lsv7$b;->h:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;->ivTopMarket:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object v0, p2, Lsv7$b;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;->ivTopMarket:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;->btnFavorite:Landroid/widget/ImageView;

    iget-boolean v0, p2, Lsv7$b;->f:Z

    if-eqz v0, :cond_0

    const v0, 0x7f08022c

    goto :goto_0

    :cond_0
    const v0, 0x7f08022d

    :goto_0
    invoke-static {p1, v0}, Loz1;->b(Landroidx/viewbinding/ViewBinding;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p2, Lsv7$b;->d:Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lov7;

    invoke-direct {v1, p0, p1}, Lov7;-><init>(Lrv7;Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;->btnFavorite:Landroid/widget/ImageView;

    new-instance v1, Lpv7;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lpv7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
