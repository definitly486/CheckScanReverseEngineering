.class public final Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field public final l:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {p2}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance p2, Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew$a;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;->l:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew$a;

    return-void
.end method


# virtual methods
.method public final smoothScrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;->l:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew$a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :cond_0
    return-void
.end method
