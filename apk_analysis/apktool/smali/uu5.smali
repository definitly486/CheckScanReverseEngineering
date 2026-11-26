.class public final Luu5;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luu5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lwu5;",
        "Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V
    .locals 1

    sget-object v0, Ltu5;->c:Ltu5;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Luu5;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lwu5;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;

    check-cast p2, Lwu5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;->firstShop:Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lwu5;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwu5$a;

    invoke-virtual {p0, v0, v1}, Luu5;->m(Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;Lwu5$a;)V

    iget-object p1, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;->secondShop:Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lwu5$a;

    invoke-virtual {p0, p1, p2}, Luu5;->m(Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;Lwu5$a;)V

    return-void
.end method

.method public final m(Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;Lwu5$a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;->tvText:Landroid/widget/TextView;

    iget-object v1, p2, Lwu5$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v0

    iget-object v1, p2, Lwu5$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;->ivBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Luu5$b;

    invoke-direct {v1, p0, p2}, Luu5$b;-><init>(Luu5;Lwu5$a;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
