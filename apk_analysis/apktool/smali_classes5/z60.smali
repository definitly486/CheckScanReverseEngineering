.class public final Lz60;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz60$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lec8;",
        "Lcom/warefly/checkscan/databinding/ItemRvBonusesSubscriptionBannerBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V
    .locals 1

    sget-object v0, Ly60;->c:Ly60;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lz60;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lec8;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvBonusesSubscriptionBannerBinding;

    check-cast p2, Lec8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvBonusesSubscriptionBannerBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lec8;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvBonusesSubscriptionBannerBinding;->tvSubtitle:Landroid/widget/TextView;

    iget-object v1, p2, Lec8;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvBonusesSubscriptionBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, p2, Lec8;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvBonusesSubscriptionBannerBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemRvBonusesSubscriptionBannerBinding;->btnAction:Landroid/widget/TextView;

    iget-object v0, p2, Lec8;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Llb7;

    new-instance v1, La70;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, La70;-><init>(Lil2;Lpz3;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
