.class public final Lhe9;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljq2;


# direct methods
.method public constructor <init>(Ljq2;)V
    .locals 0

    iput-object p1, p0, Lhe9;->a:Ljq2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    iget-object p0, p0, Lhe9;->a:Ljq2;

    invoke-virtual {p0}, Ljq2;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onItemRangeChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    iget-object p0, p0, Lhe9;->a:Ljq2;

    invoke-virtual {p0}, Ljq2;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 10
    iget-object p0, p0, Lhe9;->a:Ljq2;

    invoke-virtual {p0}, Ljq2;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    iget-object p0, p0, Lhe9;->a:Ljq2;

    invoke-virtual {p0}, Ljq2;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onItemRangeMoved(III)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    iget-object p0, p0, Lhe9;->a:Ljq2;

    invoke-virtual {p0}, Ljq2;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    iget-object p0, p0, Lhe9;->a:Ljq2;

    invoke-virtual {p0}, Ljq2;->invoke()Ljava/lang/Object;

    return-void
.end method
