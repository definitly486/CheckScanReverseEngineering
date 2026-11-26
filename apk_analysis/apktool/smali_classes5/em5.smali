.class public final Lem5;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lem5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lg81;",
        "Lem5$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg81;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Lf81;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lnl3;Lnl3;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg81;",
            ">;",
            "Lnl3<",
            "-",
            "Lf81;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Le81;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lem5;->i:Ljava/util/List;

    iput-object p2, p0, Lem5;->t:Lnl3;

    iput-object p3, p0, Lem5;->u:Lnl3;

    iput-object p4, p0, Lem5;->v:Lnl3;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    check-cast p1, Lem5$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lem5$a;->l:Lcom/warefly/checkscan/databinding/ItemOnlineShopsNestedCategoriesBinding;

    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemOnlineShopsNestedCategoriesBinding;->rvNestedCategories:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lem5;->i:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg81;

    iget-object v2, v2, Lg81;->a:Lf81;

    invoke-virtual {v2}, Lf81;->c()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf81;

    new-instance v6, Lg81;

    invoke-direct {v6, v5}, Lg81;-><init>(Lf81;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lem5;

    iget-object v5, p0, Lem5;->t:Lnl3;

    iget-object v6, p0, Lem5;->u:Lnl3;

    iget-object v7, p0, Lem5;->v:Lnl3;

    invoke-direct {v2, v4, v5, v6, v7}, Lem5;-><init>(Ljava/util/List;Lnl3;Lnl3;Lnl3;)V

    iput-object v2, v0, Lr07;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemOnlineShopsNestedCategoriesBinding;->incldAllProductsCategory:Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;->tvCategoryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg81;

    iget-object v2, v2, Lg81;->a:Lf81;

    invoke-virtual {v2}, Lf81;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;->cbCategory:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg81;

    iget-boolean v2, v2, Lg81;->b:Z

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;->cbCategory:Landroid/widget/CheckBox;

    new-instance v2, Ldm5;

    invoke-direct {v2, p0, p2, p1, v0}, Ldm5;-><init>(Lem5;ILcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;Lr07;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    new-instance p2, Lem5$a;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/warefly/checkscan/databinding/ItemOnlineShopsNestedCategoriesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemOnlineShopsNestedCategoriesBinding;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p0}, Lem5$a;-><init>(Lcom/warefly/checkscan/databinding/ItemOnlineShopsNestedCategoriesBinding;)V

    return-object p2
.end method
