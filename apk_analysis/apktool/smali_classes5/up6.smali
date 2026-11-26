.class public final Lup6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lvp6;",
        "Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

.field public final c:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;)V
    .locals 1

    sget-object v0, Lsp6;->c:Lsp6;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lup6;->b:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lup6;->c:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lvp6;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;

    check-cast p2, Lvp6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lvp6;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p2, Lvp6;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lvp6;->h:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->ivShopLogo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v4

    invoke-virtual {v4, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    iget-object v4, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->ivShopLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->ivShopLogo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->ivPromoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v1

    invoke-virtual {v1, v0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->ivPromoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->ivPromoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, p2, Lvp6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Luq2;->c:Luq2$d;

    new-instance v4, Ls81;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v4}, Lee0;->A(Luq2;Llj0;)Lee0;

    move-result-object v0

    check-cast v0, Lh37;

    iget-object v1, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->ivBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->rvProducts:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Leu1;

    if-eqz v1, :cond_2

    check-cast v0, Leu1;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    iget-object v1, p2, Lvp6;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_3
    iget v0, p2, Lvp6;->a:I

    iget-boolean v1, p2, Lvp6;->f:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lup6;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->groupCollapse:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    const v1, 0x7f08020a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->btnCollapse:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    const v1, 0x7f08020b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->btnCollapse:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    :goto_3
    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->btnCollapse:Landroid/widget/ImageView;

    new-instance v1, Lrp6;

    invoke-direct {v1, p0, p1, p2}, Lrp6;-><init>(Lup6;Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;Lvp6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lqo0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p2, v2}, Lqo0;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->ivBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x18

    invoke-static {v1, v0}, Lle9;->c(ILandroid/view/View;)V

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;->rvProducts:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Leu1;

    new-instance v1, Lfi6;

    iget-object p0, p0, Lup6;->b:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    invoke-direct {v1, p0}, Lfi6;-><init>(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;)V

    new-instance v2, Lrd5;

    invoke-direct {v2, p0}, Lrd5;-><init>(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;)V

    const/4 p0, 0x2

    new-array p0, p0, [Lil2;

    const/4 v3, 0x0

    aput-object v1, p0, v3

    const/4 v1, 0x1

    aput-object v2, p0, v1

    invoke-direct {v0, p0}, Leu1;-><init>([Lil2;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p0, Ltp6;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
