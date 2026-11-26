.class public final Lyads/x66;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# instance fields
.field public final a:Lyads/i76;


# direct methods
.method public constructor <init>(Lyads/i76;)V
    .locals 1

    new-instance v0, Lyads/v66;

    invoke-direct {v0}, Lyads/v66;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lyads/x66;->a:Lyads/i76;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lyads/w66;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/e76;

    invoke-virtual {p1, p0}, Lyads/w66;->a(Lyads/e76;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    new-instance p2, Lyads/w66;

    new-instance v0, Lyads/n76;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lyads/n76;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lyads/x66;->a:Lyads/i76;

    invoke-direct {p2, v0, p0}, Lyads/w66;-><init>(Lyads/n76;Lyads/i76;)V

    return-object p2
.end method
