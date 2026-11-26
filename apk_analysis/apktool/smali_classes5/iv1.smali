.class public final Liv1;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liv1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Ljv1;",
        "Lcom/warefly/checkscan/products/databinding/ItemProductsShopConditionsBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;)V
    .locals 1

    sget-object v0, Lhv1;->c:Lhv1;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Liv1;->b:Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Ljv1;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/products/databinding/ItemProductsShopConditionsBinding;

    check-cast p2, Ljv1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemProductsShopConditionsBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Ljv1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemProductsShopConditionsBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lv50;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Lv50;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
