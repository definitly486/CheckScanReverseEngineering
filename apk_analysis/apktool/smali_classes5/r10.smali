.class public final Lr10;
.super Lvd9;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ldm3;I)V
    .locals 0

    iput p2, p0, Lr10;->b:I

    invoke-direct {p0, p1}, Lvd9;-><init>(Ldm3;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lr10;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p0, :pswitch_data_0

    instance-of p0, p1, Lru7;

    return p0

    :pswitch_0
    instance-of p0, p1, Liu5;

    return p0

    :pswitch_1
    instance-of p0, p1, Lot5;

    return p0

    :pswitch_2
    instance-of p0, p1, Lz00;

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lr10;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/warefly/checkscan/products/databinding/ItemShopHeaderBinding;

    check-cast p2, Lru7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/products/databinding/ItemShopHeaderBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p2, Lru7;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemShopHeaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object p2, p2, Lru7;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/ItemShopHeaderBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/warefly/checkscan/offerLanding/databinding/ItemRvOfferShimmerLoadingBinding;

    check-cast p2, Liu5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvShimmerLoadingBinding;

    check-cast p2, Lot5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_2
    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceCardLoadingBinding;

    check-cast p2, Lz00;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
