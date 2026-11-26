.class public final Lgm7;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgm7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lfr6;",
        "Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;)V
    .locals 1

    sget-object v0, Lfm7;->c:Lfm7;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lgm7;->b:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lfr6;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;

    check-cast p2, Lfr6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkd$k0$c;

    iget v0, p2, Lfr6;->a:I

    const-string v1, "Show_promocode"

    invoke-static {v0, v1}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lkd$k0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkd;->c()V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;->tvShopName:Landroid/widget/TextView;

    iget-object v0, p2, Lfr6;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;->tvCategory:Landroid/widget/TextView;

    iget-object v0, p2, Lfr6;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;->tvSubcategory:Landroid/widget/TextView;

    iget-object v0, p2, Lfr6;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;->tvDiscount:Landroid/widget/TextView;

    iget-object v0, p2, Lfr6;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p2, Lfr6;->g:Lfr6$a;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lfr6$a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;->tvExpiration:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lfr6$a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object p0, p0, Lfr6$a;->c:Ljava/lang/String;

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;->tvExpiration:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object p2, p2, Lfr6;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06001d

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Lis7;->a(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;->ivShop:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lpb;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, v3}, Lpb;-><init>(Lil2;Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
