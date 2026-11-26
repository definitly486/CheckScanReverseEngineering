.class public final Lpo0;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpo0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lto0;",
        "Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V
    .locals 1

    sget-object v0, Loo0;->c:Loo0;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lpo0;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lto0;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 10

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;

    check-cast p2, Lto0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lto0;->a:Lno0$a;

    iget-object v1, v0, Lno0$a;->h:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->ivWideBanner:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v4

    invoke-virtual {v4, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    new-instance v4, Ls37;

    invoke-direct {v4}, Ls37;-><init>()V

    new-instance v5, Lur3;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lpl2;->d(F)F

    move-result v7

    invoke-static {v6}, Lpl2;->d(F)F

    move-result v6

    const/4 v8, 0x0

    invoke-static {v8}, Lpl2;->d(F)F

    move-result v9

    invoke-static {v8}, Lpl2;->d(F)F

    move-result v8

    invoke-direct {v5, v7, v6, v9, v8}, Lur3;-><init>(FFFF)V

    invoke-virtual {v4, v5, v2}, Lee0;->B(Ls19;Z)Lee0;

    move-result-object v4

    invoke-virtual {v1, v4}, Lh37;->G(Lee0;)Lh37;

    move-result-object v1

    iget-object v4, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->ivWideBanner:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v4}, Lh37;->L(Landroid/widget/ImageView;)V

    :cond_0
    iget-object v1, v0, Lno0;->f:Lb06;

    if-eqz v1, :cond_1

    iget-object v4, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {v4}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {v4}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Llb7;

    new-instance v6, Lro0;

    invoke-direct {v6, v3, p0, v1}, Lro0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v5, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->incldBlurClose:Lcom/warefly/checkscan/core/ui/databinding/LayoutBlurCloseBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutBlurCloseBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v4, v0, Lno0;->g:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->incldBlurClose:Lcom/warefly/checkscan/core/ui/databinding/LayoutBlurCloseBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutBlurCloseBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Llb7;

    new-instance v6, Lqo0;

    invoke-direct {v6, p0, p2, v3}, Lqo0;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v4, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->btnAction:Landroid/widget/TextView;

    iget-object v4, v0, Lno0;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lno0;->b:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :try_start_0
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lpl2;->d(F)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v6, v0, Lno0;->d:Ljava/lang/String;

    if-eqz v6, :cond_4

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0604a3

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    :goto_2
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v4, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    new-instance v4, Llb7;

    new-instance v6, Lso0;

    invoke-direct {v6, v3, p0, p2}, Lso0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lno0;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->btnHide:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Llb7;

    new-instance v4, Lx30;

    invoke-direct {v4, v2, p0, p2}, Lx30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Lzd3;->h(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->incldBlurClose:Lcom/warefly/checkscan/core/ui/databinding/LayoutBlurCloseBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutBlurCloseBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/BlurView;->b(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Leightbitlab/com/blurview/BlurView;->b:Lhk0;

    invoke-interface {p1}, Lhk0;->a()Lhk0;

    sget-object p1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method
