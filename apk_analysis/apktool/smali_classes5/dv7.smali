.class public final Ldv7;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Len1$a;",
        "Lcom/warefly/checkscan/databinding/BonusesShopCardItemBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lbv7;


# direct methods
.method public constructor <init>(Lbv7;)V
    .locals 1

    sget-object v0, Ldv7$a;->c:Ldv7$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Ldv7;->b:Lbv7;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Len1$a;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemBinding;

    check-cast p2, Len1$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemBinding;->btnFave:Landroid/widget/ImageView;

    iget-object p2, p2, Len1;->a:Ldn1;

    iget-boolean v1, p2, Ldn1;->c:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, p2, Ldn1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Ldn1;->d:Ldn1$c;

    iget-object v2, p2, Ldn1;->e:Lb06;

    iget-boolean v3, v2, Lb06;->b:Z

    iget-object v4, v1, Ldn1$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Ldn1$c;->c:Ldn1$a;

    iget-object v1, v1, Ldn1$c;->b:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget-object v5, v0, Ldn1$a;->a:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemBinding;->tvValue:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const-string v6, ""

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    const/16 v7, 0x19

    invoke-static {v7, v5, v6}, Lvp3;->c(ILjava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Lj59;->a:Lj59;

    :cond_1
    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemBinding;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    sget-object v4, Lj59;->a:Lj59;

    :cond_3
    if-nez v4, :cond_4

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemBinding;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemBinding;->ivPowerCode:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v0, Ldn1$a;->b:Ldn1$b;

    if-eqz v0, :cond_5

    iget-object v0, v0, Ldn1$b;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v4

    :goto_1
    const/16 v5, 0x8

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v5

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemBinding;->btnFave:Landroid/widget/ImageView;

    new-instance v1, Lcv7;

    invoke-direct {v1, p0, p2}, Lcv7;-><init>(Ldv7;Ldn1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/BonusesShopCardItemBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    new-instance v1, Ltv6;

    invoke-direct {v1, p0, p2}, Ltv6;-><init>(Ldv7;Ldn1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemBinding;->tvOfd:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    :goto_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Lb06;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    new-instance v0, Llb7;

    new-instance v1, Lwa;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p2}, Lwa;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
