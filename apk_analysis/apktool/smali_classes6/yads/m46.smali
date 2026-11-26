.class public final Lyads/m46;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lyads/bi2;

.field public final c:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyads/bi2;Lyads/tg1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Lyads/m46;->a:Ljava/lang/String;

    iput-object p2, p0, Lyads/m46;->b:Lyads/bi2;

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object p3, p0, Lyads/m46;->c:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p2, p0, Lyads/m46;->c:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-interface {p2}, Lyads/tg1;->i()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p3, p0, Lyads/m46;->c:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-interface {p3, p1}, Lyads/tg1;->b(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lyads/m46;->b:Lyads/bi2;

    iget-object p0, p0, Lyads/m46;->a:Ljava/lang/String;

    new-instance v0, Lyads/e23;

    invoke-direct {v0, p2, p1}, Lyads/e23;-><init>(II)V

    iget-object p1, p3, Lyads/bi2;->b:Landroidx/collection/ArrayMap;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
