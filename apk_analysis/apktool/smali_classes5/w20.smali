.class public final Lw20;
.super Lvd9;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ldm3;I)V
    .locals 0

    iput p2, p0, Lw20;->b:I

    invoke-direct {p0, p1}, Lvd9;-><init>(Ldm3;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lw20;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p0, :pswitch_data_0

    instance-of p0, p1, Leh6;

    return p0

    :pswitch_0
    instance-of p0, p1, Lx20;

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    iget p0, p0, Lw20;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/warefly/checkscan/products/databinding/ItemProductCashbackValueBinding;

    check-cast p2, Leh6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p2, Leh6;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemProductCashbackValueBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Leh6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemProductCashbackValueBinding;->tvValue:Landroid/widget/TextView;

    iget-object v1, p2, Leh6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemProductCashbackValueBinding;->tvPrefix:Landroid/widget/TextView;

    iget-object p2, p2, Leh6;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemProductCashbackValueBinding;->spacePrefix:Landroid/widget/Space;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/products/databinding/ItemProductCashbackValueBinding;->tvSuffix:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/ItemProductCashbackValueBinding;->spaceSuffix:Landroid/widget/Space;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceGetCashButtonBinding;

    check-cast p2, Lx20;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceGetCashButtonBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
