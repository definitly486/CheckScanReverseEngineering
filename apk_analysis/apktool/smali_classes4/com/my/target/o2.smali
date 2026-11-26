.class public final Lcom/my/target/o2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public i:Ljava/util/List;

.field public final t:Lcom/my/target/p$a;


# direct methods
.method public constructor <init>(Lcom/my/target/p$a;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/o2;->i:Ljava/util/List;

    iput-object p1, p0, Lcom/my/target/o2;->t:Lcom/my/target/p$a;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/my/target/o2;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    check-cast p1, Lcom/my/target/y2;

    iget-object p0, p0, Lcom/my/target/o2;->i:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lix9;

    iget-object p2, p0, Lix9;->a:Lfo9;

    iget-object p2, p2, Lao9;->p:Lh14;

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/my/target/y2;->l:Lcom/my/target/yh;

    new-instance v0, Lhga;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p0}, Lhga;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lix9;->a:Lfo9;

    iget-object p1, p1, Lao9;->p:Lh14;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/my/target/yh;->getAdImageView()Lcom/my/target/zh;

    move-result-object v0

    iget-object p1, p1, Lxha;->d:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-boolean p0, p0, Lix9;->b:Z

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/my/target/yh;->getSharedContainer()Landroid/widget/FrameLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/my/target/yh;->getSharedContainer()Landroid/widget/FrameLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    new-instance p2, Lcom/my/target/yh;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/my/target/yh;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/my/target/y2;

    iget-object p0, p0, Lcom/my/target/o2;->t:Lcom/my/target/p$a;

    invoke-direct {p1, p2, p0}, Lcom/my/target/y2;-><init>(Lcom/my/target/yh;Lcom/my/target/p$a;)V

    return-object p1
.end method
