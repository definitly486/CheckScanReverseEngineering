.class public final Lls3;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lls3$a;,
        Lls3$b;,
        Lls3$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lga3;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lxg1;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lxg1;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lls3;->i:Ljava/util/List;

    iput-object p2, p0, Lls3;->t:Lxg1;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lls3;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lls3;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lga3;

    instance-of p0, p0, Lks3;

    if-eqz p0, :cond_0

    sget-object p0, Lls3$a;->GroupedCategory:Lls3$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lls3$a;->BasicCategory:Lls3$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lls3;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lga3;

    instance-of v0, p1, Lls3$b;

    iget-object p0, p0, Lls3;->t:Lxg1;

    if-eqz v0, :cond_0

    check-cast p1, Lls3$b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lls3$b;->l:Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;->getRoot()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lms3;

    invoke-direct {v2, p0, p2}, Lms3;-><init>(Lxg1;Lga3;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;->tvName:Landroid/widget/TextView;

    iget-object p1, p2, Lga3;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    instance-of v0, p1, Lls3$c;

    if-eqz v0, :cond_4

    check-cast p1, Lls3$c;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lks3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lls3$c;->l:Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;->tvGroupName:Landroid/widget/TextView;

    iget-object v2, p2, Lga3;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p2, Lks3;->c:Z

    if-eqz v3, :cond_1

    const v3, 0x7f0604a3

    goto :goto_0

    :cond_1
    const v3, 0x7f060029

    :goto_0
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;->btnShowSubcats:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v3, p2, Lks3;->c:Z

    if-eqz v3, :cond_2

    const/high16 v3, 0x43340000    # 180.0f

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    new-instance v3, Lns3;

    invoke-direct {v3, p2, p1}, Lns3;-><init>(Lks3;Lls3$c;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;->rvSubcategories:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean p2, p2, Lks3;->c:Z

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;->rvSubcategories:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Ljz7;

    new-instance v4, Los3;

    invoke-direct {v4, p0}, Los3;-><init>(Lxg1;)V

    sget-object v5, Lps3;->f:Lps3;

    sget-object v6, Lqs3;->f:Lqs3;

    const v2, 0x7f0d013a

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Ljz7;-><init>(ILjava/util/List;Lnl3;Lnl3;Ldm3;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget-object v0, Lls3$a;->BasicCategory:Lls3$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    new-instance p2, Lls3$b;

    invoke-static {p0, p1, v1}, Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p0}, Lls3$b;-><init>(Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;)V

    return-object p2

    :cond_0
    new-instance p2, Lls3$c;

    invoke-static {p0, p1, v1}, Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p0}, Lls3$c;-><init>(Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;)V

    return-object p2
.end method
