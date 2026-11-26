.class public final Lzo6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lvj9;",
        "Lcom/warefly/checkscan/databinding/ItemPromoSelectTransferBannerBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;)V
    .locals 1

    sget-object v0, Lwo6;->c:Lwo6;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lzo6;->b:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lvj9;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemPromoSelectTransferBannerBinding;

    check-cast p2, Lvj9;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lvj9;->e:Lvj9$a;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemPromoSelectTransferBannerBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p2, Lvj9;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemPromoSelectTransferBannerBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v2, p2, Lvj9;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemPromoSelectTransferBannerBinding;->spaceButtons:Landroid/widget/Space;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p2, Lvj9;->d:Lvj9$a;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemPromoSelectTransferBannerBinding;->btnAction:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemPromoSelectTransferBannerBinding;->btnSecondary:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_3

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemPromoSelectTransferBannerBinding;->btnAction:Landroid/widget/TextView;

    iget-object v3, v2, Lvj9$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Llb7;

    new-instance v5, Lxo6;

    invoke-direct {v5, p0, v2, p2}, Lxo6;-><init>(Lzo6;Lvj9$a;Lvj9;)V

    invoke-direct {v3, v5}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemPromoSelectTransferBannerBinding;->btnSecondary:Landroid/widget/TextView;

    iget-object v2, v0, Lvj9$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Llb7;

    new-instance v3, Lyo6;

    invoke-direct {v3, p0, v0, p2}, Lyo6;-><init>(Lzo6;Lvj9$a;Lvj9;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemPromoSelectTransferBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object p2, p2, Lvj9;->a:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lpl2;->d(F)F

    move-result p2

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemPromoSelectTransferBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06001d

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p2, v0}, Lis7;->b(FI)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    new-instance p2, Ls37;

    invoke-direct {p2}, Ls37;-><init>()V

    new-instance v0, Ls81;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Le87;

    const/4 v2, 0x4

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v2

    invoke-direct {v1, v2}, Le87;-><init>(I)V

    const/4 v2, 0x2

    new-array v2, v2, [Ls19;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p2, v2}, Lee0;->D([Ls19;)Lee0;

    move-result-object p2

    invoke-virtual {p0, p2}, Lh37;->G(Lee0;)Lh37;

    move-result-object p0

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemPromoSelectTransferBannerBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method
