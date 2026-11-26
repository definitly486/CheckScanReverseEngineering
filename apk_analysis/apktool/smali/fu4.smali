.class public final synthetic Lfu4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lfu4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfu4;->c:Ljava/lang/Object;

    iput-object p2, p0, Lfu4;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;Lni6;Lli6;)V
    .locals 0

    .line 11
    const/4 p3, 0x1

    iput p3, p0, Lfu4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfu4;->c:Ljava/lang/Object;

    iput-object p2, p0, Lfu4;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lfu4;->b:I

    iget-object v1, p0, Lfu4;->d:Ljava/lang/Object;

    iget-object p0, p0, Lfu4;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;

    check-cast v1, Lni6;

    iget-object v0, p0, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->rvShops:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->v()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-boolean v1, v1, Lni6;->b:Z

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_2

    if-le v2, v5, :cond_2

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->v()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v5}, Lqn1;->o0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->rvShops:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/a;

    iget v5, v5, Lcom/google/android/flexbox/a;->g:I

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->btnCollapse:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1404ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->btnCollapse:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lo2;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    if-le v2, v5, :cond_4

    iget-object v0, p0, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->rvShops:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->btnCollapse:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1404e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->btnCollapse:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lo2;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->btnCollapse:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :pswitch_0
    check-cast p0, Landroidx/core/util/Consumer;

    check-cast v1, Landroid/location/Location;

    invoke-static {p0, v1}, Landroidx/core/location/LocationManagerCompat;->a(Landroidx/core/util/Consumer;Landroid/location/Location;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
