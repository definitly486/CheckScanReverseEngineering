.class public final Lcom/warefly/checkscan/ui/infiniteScrolling/HorizontalCarouselRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field public l:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/warefly/checkscan/ui/infiniteScrolling/ProminentLayoutManager;

    invoke-direct {p2, p1}, Lcom/warefly/checkscan/ui/infiniteScrolling/ProminentLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/warefly/checkscan/ui/infiniteScrolling/HorizontalCarouselRecyclerView;->l:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method public final getLm()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/ui/infiniteScrolling/HorizontalCarouselRecyclerView;->l:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public final setLm(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/warefly/checkscan/ui/infiniteScrolling/HorizontalCarouselRecyclerView;->l:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method
