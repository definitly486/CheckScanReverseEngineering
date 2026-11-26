.class public final Ld71;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ld71;->f:I

    iput-object p1, p0, Ld71;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ld71;->f:I

    iget-object p0, p0, Ld71;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->o()Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;->onBackClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->f()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesPresenter;->checkAllCategories(Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
