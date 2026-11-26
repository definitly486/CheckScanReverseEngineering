.class public final Lzw3;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lyw3;",
        "Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Lh57;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldm3;Lbm3;Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldm3<",
            "-",
            "Lh57;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lzw3$a;->c:Lzw3$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lzw3;->b:Ldm3;

    iput-object p2, p0, Lzw3;->c:Lbm3;

    iput-object p3, p0, Lzw3;->d:Lll3;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lyw3;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;

    check-cast p2, Lyw3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p2, Lyw3;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->ivProduct:Landroid/widget/ImageView;

    const v0, 0x7f080197

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->btnAdult:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->tvProductName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lnk1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lnk1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lax3;

    invoke-direct {v3, p0, p2, v1}, Lax3;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->ivProduct:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v3, p2, Lyw3;->a:Ljava/lang/String;

    iget-object v4, p2, Lyw3;->g:Ljava/lang/String;

    iget-object v5, p2, Lyw3;->f:Ljava/lang/String;

    iget-object v6, p2, Lyw3;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->ivProduct:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p2, Lyw3;->b:Ljava/lang/String;

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    iget-object v7, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->tvDiscount:Landroid/widget/TextView;

    if-nez v3, :cond_1

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v3, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->tvDiscount:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->tvProductName:Landroid/widget/TextView;

    iget-object v3, p2, Lyw3;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->tvOldPrice:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->tvOldPrice:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    if-eqz v6, :cond_3

    invoke-static {v6}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->tvCostWithDiscount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x7f0604a5

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->tvCostWithDiscount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x7f060036

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->tvCostWithDiscount:Landroid/widget/TextView;

    iget-object v3, p2, Lyw3;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->btnCashback:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->btnCashback:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v4}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->ivShop:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->tvExpiration:Landroid/widget/TextView;

    const-string v3, "\u041f\u043e 10 \u0441\u0435\u043d\u0442\u044f\u0431\u0440\u044f"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->tvExpiration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->ivShop:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    invoke-virtual {v0, v4}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->ivShop:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lh37;->L(Landroid/widget/ImageView;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->tvExpiration:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-static {v5}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->btnCashback:Landroid/widget/TextView;

    if-nez v0, :cond_5

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v0, p2, Lyw3;->j:Ljava/lang/String;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadRvPopularProductBinding;->btnOrder:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f140165

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Llb7;

    new-instance v2, Lbx3;

    invoke-direct {v2, p0, p2, v1}, Lbx3;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v0, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
