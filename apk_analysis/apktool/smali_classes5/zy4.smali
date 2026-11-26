.class public final Lzy4;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzy4$a;,
        Lzy4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lvy4;",
        "Lzy4$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog$c;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog$a;Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog$b;Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog$c;)V
    .locals 0

    new-instance p1, Lzy4$b;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p3, p0, Lzy4;->i:Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog$c;

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
    .locals 3

    check-cast p1, Lzy4$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lvy4;

    iget-object p2, p1, Lzy4$a;->l:Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;

    iget-object p1, p1, Lzy4$a;->m:Lzy4;

    iget-object v0, p2, Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;->btnMainFilter:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lyy4;

    invoke-direct {v2, p2, p1, p0}, Lyy4;-><init>(Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;Lzy4;Lvy4;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p2, Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;->checkboxMain:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p2, Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;->tvMainTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p0, Lob8;

    new-instance v1, Lwy4;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lgh4;-><init>(I)V

    new-instance v2, Lxy4;

    invoke-direct {v2, p1}, Lxy4;-><init>(Lzy4;)V

    invoke-direct {p0, v1, v2}, Lob8;-><init>(Lwy4;Lxy4;)V

    iget-object p1, p2, Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;->rvMainFilters:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    iget-object p0, p2, Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;->rvMainFilters:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    new-instance v0, Lzy4$a;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, p1}, Lzy4$a;-><init>(Lzy4;Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;)V

    return-object v0
.end method
