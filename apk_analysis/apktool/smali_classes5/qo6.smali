.class public final synthetic Lqo6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqo6;->a:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->s:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$a;

    iget-object p0, p0, Lqo6;->a:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->llMotivationBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    add-int/2addr p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
