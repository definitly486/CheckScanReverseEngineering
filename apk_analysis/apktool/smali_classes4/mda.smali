.class public final Lmda;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final i:Ljava/util/ArrayList;

.field public final t:Lcom/my/target/f3;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/my/target/f3;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lmda;->i:Ljava/util/ArrayList;

    iput-object p2, p0, Lmda;->t:Lcom/my/target/f3;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lmda;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lfia;

    iget-object p0, p0, Lmda;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laea;

    iput-object p0, p1, Lfia;->m:Laea;

    iget-object p1, p1, Lfia;->l:Lcom/my/target/x1;

    invoke-interface {p0, p1, p2}, Laea;->a(Lcom/my/target/r2;I)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object p0, p0, Lmda;->t:Lcom/my/target/f3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/my/target/x1;

    iget-object p2, p0, Lcom/my/target/f3;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/my/target/f3;->a:Lev9;

    iget-object p0, p0, Lcom/my/target/f3;->d:Lon9;

    invoke-direct {p1, p2, v0, p0}, Lcom/my/target/x1;-><init>(Landroid/content/Context;Lev9;Lon9;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p0, p2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Lfia;

    invoke-direct {p0, p1}, Lfia;-><init>(Lcom/my/target/x1;)V

    return-object p0
.end method

.method public final onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    check-cast p1, Lfia;

    iget-object v0, p1, Lfia;->m:Laea;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lfia;->l:Lcom/my/target/x1;

    invoke-interface {v0, v1}, Laea;->b(Lcom/my/target/x1;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lfia;->m:Laea;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    check-cast p1, Lfia;

    iget-object v0, p1, Lfia;->m:Laea;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lfia;->l:Lcom/my/target/x1;

    invoke-interface {v0, v1}, Laea;->b(Lcom/my/target/x1;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lfia;->m:Laea;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
