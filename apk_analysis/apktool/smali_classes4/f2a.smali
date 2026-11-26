.class public final Lf2a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf2a$b;,
        Lf2a$a;
    }
.end annotation


# instance fields
.field public i:Ljava/util/List;

.field public final t:Lcom/my/target/w1$a;


# direct methods
.method public constructor <init>(Lcom/my/target/w1$a;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf2a;->i:Ljava/util/List;

    iput-object p1, p0, Lf2a;->t:Lcom/my/target/w1$a;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lf2a;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lf2a;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2a;

    iget-object p0, p0, Lv2a;->a:Lxda;

    iget-object p0, p0, Lxda;->Z:Lkha;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    iget-object p0, p0, Lf2a;->i:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2a;

    instance-of p2, p1, Lf2a$b;

    if-eqz p2, :cond_0

    check-cast p1, Lf2a$b;

    iget-object p1, p1, Lf2a$b;->l:Lcom/my/target/xj;

    invoke-virtual {p1, p0}, Lcom/my/target/o4;->setBannerData(Lv2a;)V

    return-void

    :cond_0
    check-cast p1, Lf2a$a;

    iget-object p1, p1, Lf2a$a;->l:Lcom/my/target/h6;

    invoke-virtual {p1, p0}, Lcom/my/target/o4;->setBannerData(Lv2a;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    new-instance v0, Lcom/my/target/f1;

    iget-object p0, p0, Lf2a;->t:Lcom/my/target/w1$a;

    invoke-direct {v0, p0}, Lcom/my/target/f1;-><init>(Lcom/my/target/w1$a;)V

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    new-instance p0, Lf2a$b;

    new-instance p2, Lcom/my/target/xj;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lcom/my/target/o4;-><init>(Landroid/content/Context;Lcom/my/target/f1;)V

    invoke-direct {p0, p2}, Lf2a$b;-><init>(Lcom/my/target/xj;)V

    return-object p0

    :cond_0
    new-instance p0, Lf2a$a;

    new-instance p2, Lcom/my/target/h6;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lcom/my/target/h6;-><init>(Landroid/content/Context;Lcom/my/target/f1;)V

    invoke-direct {p0, p2}, Lf2a$a;-><init>(Lcom/my/target/h6;)V

    return-object p0
.end method
