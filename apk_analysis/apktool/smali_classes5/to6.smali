.class public final Lto6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Luo6;",
        "Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardHeaderBinding;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Luo6;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardHeaderBinding;

    check-cast p2, Luo6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardHeaderBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p2, Luo6;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardHeaderBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v0, p2, Luo6;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardHeaderBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object p2, p2, Luo6;->c:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lpl2;->d(F)F

    move-result p2

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardHeaderBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06001d

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p2, v0}, Lis7;->b(FI)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    new-instance p2, Ls37;

    invoke-direct {p2}, Ls37;-><init>()V

    new-instance v0, Le87;

    const/4 v1, 0x4

    invoke-static {v1}, Lpl2;->e(I)I

    move-result v1

    invoke-direct {v0, v1}, Le87;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lee0;->B(Ls19;Z)Lee0;

    move-result-object p2

    invoke-virtual {p0, p2}, Lh37;->G(Lee0;)Lh37;

    move-result-object p0

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardHeaderBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method
