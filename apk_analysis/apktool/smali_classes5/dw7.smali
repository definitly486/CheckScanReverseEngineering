.class public final Ldw7;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Len1$b;",
        "Lcom/warefly/checkscan/databinding/BonusesShopCardItemWithHikeBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lbv7;


# direct methods
.method public constructor <init>(Lbv7;)V
    .locals 1

    sget-object v0, Ldw7$a;->c:Ldw7$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Ldw7;->b:Lbv7;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Len1$b;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemWithHikeBinding;

    check-cast p2, Len1$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemWithHikeBinding;->btnFave:Landroid/widget/ImageView;

    iget-object p2, p2, Len1;->a:Ldn1;

    iget-boolean v1, p2, Ldn1;->c:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemWithHikeBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, p2, Ldn1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemWithHikeBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemWithHikeBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Ldn1;->d:Ldn1$c;

    iget-object v2, p2, Ldn1;->e:Lb06;

    iget-boolean v3, v2, Lb06;->b:Z

    iget-object v4, v1, Ldn1$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemWithHikeBinding;->tvValue:Landroid/widget/TextView;

    iget-object v1, v1, Ldn1$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemWithHikeBinding;->tvHike:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p2, Ldn1;->g:Lew3;

    if-eqz v1, :cond_0

    iget-object v4, v1, Lew3;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemWithHikeBinding;->ivPowerCode:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v1, Lew3;->b:Ldn1$b;

    if-eqz v1, :cond_2

    iget-object v1, v1, Ldn1$b;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    const/16 v5, 0x8

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemWithHikeBinding;->btnFave:Landroid/widget/ImageView;

    new-instance v1, Lkw6;

    const/4 v6, 0x1

    invoke-direct {v1, v6, p0, p2}, Lkw6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/BonusesShopCardItemWithHikeBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    new-instance v1, Lcw7;

    invoke-direct {v1, p0, p2}, Lcw7;-><init>(Ldw7;Ldn1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/BonusesShopCardItemWithHikeBinding;->tvOfd:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v4, v5

    :goto_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Lb06;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    new-instance v0, Llb7;

    new-instance v1, Lew7;

    invoke-direct {v1, p0, p2}, Lew7;-><init>(Ldw7;Ldn1;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
