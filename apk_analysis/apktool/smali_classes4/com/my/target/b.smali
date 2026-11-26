.class public final Lcom/my/target/b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public i:Ljava/util/List;

.field public final t:Lls9;


# direct methods
.method public constructor <init>(Lls9;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/b;->i:Ljava/util/List;

    iput-object p1, p0, Lcom/my/target/b;->t:Lls9;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/my/target/b;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    check-cast p1, Lcom/my/target/f;

    iget-object v0, p0, Lcom/my/target/b;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfo9;

    iget-object p1, p1, Lcom/my/target/f;->l:Lcom/my/target/y1;

    invoke-virtual {p1, p2}, Lcom/my/target/y1;->setCard(Lfo9;)V

    iget-object p0, p0, Lcom/my/target/b;->t:Lls9;

    invoke-virtual {p1, p0}, Lcom/my/target/y1;->setOnClickListeners(Lcom/my/target/y1$a;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    new-instance p0, Lcom/my/target/f;

    new-instance p2, Lcom/my/target/y1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/my/target/y1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/my/target/f;-><init>(Lcom/my/target/y1;)V

    return-object p0
.end method
