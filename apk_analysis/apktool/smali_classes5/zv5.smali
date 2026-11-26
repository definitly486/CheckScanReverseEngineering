.class public final Lzv5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final h:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final i:Lov;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lov;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Lzv5;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p2, p0, Lzv5;->i:Lov;

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lzv5;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object p0, p0, Lzv5;->i:Lov;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lov;->g:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->o()Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->onItemIsSeen(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-lez p3, :cond_0

    iget-object p1, p0, Lzv5;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object p0, p0, Lzv5;->i:Lov;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lov;->g:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->o()Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->onItemIsSeen(I)V

    sget-object p0, Lj59;->a:Lj59;

    :cond_0
    return-void
.end method
