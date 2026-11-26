.class public final Lb7;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Ld7;",
        "Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V
    .locals 1

    sget-object v0, La7;->c:La7;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lb7;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Ld7;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;

    check-cast p2, Ld7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p2, Ld7;->f:Ld7$a;

    invoke-virtual {p1}, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    iget-object v1, p2, Ld7;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p2, Ld7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;->tvDescription:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p2, Ld7;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Ld7;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;->tvChequesCount:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;->tvChequesCount:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p0, :cond_1

    iget-object v0, p1, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;->layoutOfferExpired:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;->tvExpired:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Ld7$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;->btnExpired:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p0, p0, Ld7$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p1}, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    iget-object p2, p2, Ld7;->e:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    invoke-virtual {p1}, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06001d

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Lis7;->a(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    iget-object p1, p1, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;->ivBonus:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lc7;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lc7;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
