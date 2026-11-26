.class public final Lv50;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lvd9;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lvd9;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lv50;->f:I

    iput-object p1, p0, Lv50;->g:Lvd9;

    iput-object p2, p0, Lv50;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lv50;->f:I

    iget-object v1, p0, Lv50;->h:Ljava/lang/Object;

    iget-object p0, p0, Lv50;->g:Lvd9;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Liv1;

    iget-object p0, p0, Liv1;->b:Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;

    check-cast v1, Ljv1;

    iget-object p1, v1, Ljv1;->a:Ljava/lang/String;

    iget-object v0, v1, Ljv1;->b:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Liv1$a;->onConditionsClicked(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lw50;

    iget-object p0, p0, Lw50;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    check-cast v1, Lcom/warefly/checkscan/databinding/ItemRvBalanceNestedImageBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/databinding/ItemRvBalanceNestedImageBinding;->getRoot()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lb10;->onBannerClick(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
