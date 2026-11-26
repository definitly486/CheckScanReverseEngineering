.class public final Lob8;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lob8$a;,
        Lob8$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lnb8;",
        "Lob8$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Lxy4;


# direct methods
.method public constructor <init>(Lwy4;Lxy4;)V
    .locals 0

    new-instance p1, Lob8$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p2, p0, Lob8;->i:Lxy4;

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

    check-cast p1, Lob8$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lnb8;

    iget-object p2, p1, Lob8$b;->l:Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;

    iget-object p1, p1, Lob8$b;->m:Lob8;

    iget-object v0, p2, Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;->btnSubFilter:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lbr1;

    invoke-direct {v2, p2, p1, p0}, Lbr1;-><init>(Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;Lob8;Lnb8;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p2, Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;->checkboxSub:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p2, Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;->tvSubTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p0, Lfz7;

    new-instance v1, Lpb8;

    invoke-direct {v1, p1}, Lpb8;-><init>(Lob8;)V

    invoke-direct {p0, v1}, Lfz7;-><init>(Lpb8;)V

    iget-object p1, p2, Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;->rvSubFilters:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    iget-object p0, p2, Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;->rvSubFilters:Landroidx/recyclerview/widget/RecyclerView;

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

    new-instance v0, Lob8$b;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, p1}, Lob8$b;-><init>(Lob8;Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;)V

    return-object v0
.end method
