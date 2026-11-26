.class public final Lwn6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final synthetic h:Lcom/my/target/nativeads/views/PromoCardRecyclerView;


# direct methods
.method public constructor <init>(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lwn6;->h:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p0, p0, Lwn6;->h:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    xor-int/2addr p2, p1

    iput-boolean p2, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->n:Z

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->m:Z

    return-void
.end method
