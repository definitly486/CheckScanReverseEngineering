.class public final Ldq6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Ler6;",
        "Lcom/warefly/checkscan/databinding/PromocodeItemBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbm3;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ldq6$a;->c:Ldq6$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Ldq6;->b:Lbm3;

    iput-object p2, p0, Ldq6;->c:Lnl3;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Ler6;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/warefly/checkscan/databinding/PromocodeItemBinding;

    check-cast p2, Ler6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/PromocodeItemBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Ler6;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/PromocodeItemBinding;->tvSubtitle:Landroid/widget/TextView;

    iget-object v1, p2, Ler6;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/PromocodeItemBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, p2, Ler6;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh37;->P(Lqs2;)Lh37;

    move-result-object v0

    invoke-virtual {v0}, Lee0;->i()Lee0;

    move-result-object v0

    check-cast v0, Lh37;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/PromocodeItemBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p2, Ler6;->a:Ler6$b;

    if-eqz v0, :cond_4

    iget-object v1, v0, Ler6$b;->a:Ler6$a;

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/PromocodeItemBinding;->tvSale:Landroid/widget/TextView;

    iget-object v3, v0, Ler6$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/PromocodeItemBinding;->tvSaleSubtitle:Landroid/widget/TextView;

    iget-object v0, v0, Ler6$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/PromocodeItemBinding;->tvBadge:Landroid/widget/TextView;

    iget-object v2, v1, Ler6$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Ler6$a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "#999DA6"

    :cond_0
    const-string v2, "#"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Ler6$a;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "#FFB300"

    :cond_2
    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/PromocodeItemBinding;->tvBadge:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/PromocodeItemBinding;->tvBadge:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_4
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/PromocodeItemBinding;->btnFave:Landroid/widget/ImageView;

    iget-boolean v1, p2, Ler6;->c:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/PromocodeItemBinding;->btnFave:Landroid/widget/ImageView;

    new-instance v1, Lbq6;

    invoke-direct {v1, p0, p2}, Lbq6;-><init>(Ldq6;Ler6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/PromocodeItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance v0, Lcq6;

    invoke-direct {v0, p0, p2}, Lcq6;-><init>(Ldq6;Ler6;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
