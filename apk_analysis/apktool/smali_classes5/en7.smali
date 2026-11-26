.class public final Len7;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lzn7;",
        "Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

.field public final c:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;)V
    .locals 1

    sget-object v0, Lbn7;->c:Lbn7;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Len7;->b:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Len7;->c:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lzn7;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;

    check-cast p2, Lzn7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lzn7;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lzn7;->e:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->ivShopLogo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v3

    invoke-virtual {v3, v0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v3, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->ivShopLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->ivShopLogo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget v0, p2, Lzn7;->a:I

    iget-boolean v3, p2, Lzn7;->c:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Len7;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v3

    const v4, 0x7f08020a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object v3

    iget-object v4, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->btnCollapse:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lh37;->L(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v3

    const v4, 0x7f08020b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object v3

    iget-object v4, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->btnCollapse:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lh37;->L(Landroid/widget/ImageView;)V

    :goto_1
    iget-object v3, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->groupCollapse:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->rvProducts:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Leu1;

    if-eqz v1, :cond_4

    check-cast v0, Leu1;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    iget-object v1, p2, Lzn7;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_5
    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->btnCollapse:Landroid/widget/ImageView;

    new-instance v1, Lan7;

    invoke-direct {v1, p0, p1, p2}, Lan7;-><init>(Len7;Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;Lzn7;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcn7;

    invoke-direct {v1, p0, p2}, Lcn7;-><init>(Len7;Lzn7;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->rvProducts:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Leu1;

    new-instance v1, Lfi6;

    iget-object p0, p0, Len7;->b:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

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

    new-instance p0, Ldn7;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
