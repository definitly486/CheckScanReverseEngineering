.class public final synthetic Lou7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lou7;->a:Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->k:Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$a;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    iget-object p0, p0, Lou7;->a:Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18Binding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18Binding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, p1, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18Binding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18Binding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
