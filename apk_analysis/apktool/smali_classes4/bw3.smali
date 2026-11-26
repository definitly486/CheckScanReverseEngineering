.class public abstract Lbw3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public h:Z


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float p1, p3, p1

    :goto_1
    const/high16 p3, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p3

    const/4 p3, 0x1

    if-ltz p1, :cond_4

    move p1, p3

    goto :goto_2

    :cond_4
    move p1, p2

    :goto_2
    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lbw3;->h:Z

    if-nez v0, :cond_5

    iput-boolean p3, p0, Lbw3;->h:Z

    check-cast p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$b;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$b;->i:Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18Binding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18Binding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_5
    if-nez p1, :cond_6

    iget-boolean p1, p0, Lbw3;->h:Z

    if-eqz p1, :cond_6

    iput-boolean p2, p0, Lbw3;->h:Z

    check-cast p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$b;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$b;->i:Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18Binding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18Binding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_3
    return-void
.end method
