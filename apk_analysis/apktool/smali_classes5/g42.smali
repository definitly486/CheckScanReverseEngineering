.class public final Lg42;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lgr6;",
        "Lcom/warefly/checkscan/databinding/ItemRvCouponsBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ll42;

.field public final c:Lm42;


# direct methods
.method public constructor <init>(Ll42;Lm42;)V
    .locals 1

    sget-object v0, Ld42;->c:Ld42;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lg42;->b:Ll42;

    iput-object p2, p0, Lg42;->c:Lm42;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lgr6;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvCouponsBinding;

    check-cast p2, Lgr6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvCouponsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Le42;

    invoke-direct {v2, p0, p2}, Le42;-><init>(Lg42;Lgr6;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvCouponsBinding;->ivShop:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, p2, Lgr6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvCouponsBinding;->ivShop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvCouponsBinding;->tvShopName:Landroid/widget/TextView;

    iget-object v1, p2, Lgr6;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvCouponsBinding;->tvCategory:Landroid/widget/TextView;

    iget-object v1, p2, Lgr6;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvCouponsBinding;->tvDiscount:Landroid/widget/TextView;

    iget-object v1, p2, Lgr6;->f:Laq6;

    iget-object v2, v1, Laq6;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvCouponsBinding;->tvSubcategory:Landroid/widget/TextView;

    iget-object v1, v1, Laq6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvCouponsBinding;->btnFavourite:Landroid/widget/ImageButton;

    iget-boolean v1, p2, Lgr6;->c:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    new-instance v1, Llb7;

    new-instance v2, Lf42;

    invoke-direct {v2, p0, p2, v0}, Lf42;-><init>(Lg42;Lgr6;Landroid/widget/ImageButton;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p2, Lgr6;->g:Lq00;

    if-eqz p0, :cond_4

    iget-object p2, p0, Lq00;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemRvCouponsBinding;->tvExpiration:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    invoke-static {p2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lq00;->c:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {v0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    iget-object p0, p0, Lq00;->b:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    :goto_0
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method
