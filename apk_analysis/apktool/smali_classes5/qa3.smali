.class public final Lqa3;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lka3;",
        "Lcom/warefly/checkscan/products/databinding/ItemFiltersHolderBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lia3$b;


# direct methods
.method public constructor <init>(Lia3$b;)V
    .locals 1

    sget-object v0, Lqa3$a;->c:Lqa3$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lqa3;->b:Lia3$b;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lka3;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/products/databinding/ItemFiltersHolderBinding;

    check-cast p2, Lka3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/products/databinding/ItemFiltersHolderBinding;->rvFilters:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of p1, p0, Leu1;

    if-eqz p1, :cond_0

    check-cast p0, Leu1;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget-object p1, p2, Lka3;->a:Ljava/util/List;

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/products/databinding/ItemFiltersHolderBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/ItemFiltersHolderBinding;->rvFilters:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Leu1;

    new-instance v1, Lia3;

    iget-object p0, p0, Lqa3;->b:Lia3$b;

    invoke-direct {v1, p0}, Lia3;-><init>(Lia3$b;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lil2;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-direct {v0, p0}, Leu1;-><init>([Lil2;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
