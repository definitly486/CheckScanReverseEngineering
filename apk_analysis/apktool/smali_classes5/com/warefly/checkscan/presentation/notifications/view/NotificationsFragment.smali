.class public final Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;"
    }
.end annotation


# static fields
.field public static final synthetic l:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final f:I

.field public final g:Lol4;

.field public h:Leu1;

.field public i:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public j:Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;

.field public k:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

.field public presenter:Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->l:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00ce

    iput v0, p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->l:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->presenter:Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lfh5;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->o()Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->onCreate()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->o()Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->onItemIsSeen(I)V

    invoke-super {p0}, Lfh5;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;->rvNotifs:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    new-instance v0, Lcw5;

    new-instance v3, Lmp5;

    invoke-direct {v3, p0}, Lmp5;-><init>(Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;)V

    invoke-direct {v0, p2, v3}, Lcw5;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lll3;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Lzv5;

    new-instance v3, Lov;

    invoke-direct {v3, p0, v1}, Lov;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, p2, v3}, Lzv5;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lov;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Leu1;

    new-instance v0, Lvo5;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->o()Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;

    move-result-object v3

    invoke-direct {v0, v3}, Lvo5;-><init>(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;)V

    new-instance v3, Lbd9;

    sget-object v4, Lad9;->c:Lad9;

    invoke-direct {v3, v4}, Lvd9;-><init>(Ldm3;)V

    new-instance v4, Lap5;

    sget-object v5, Lzo5;->c:Lzo5;

    invoke-direct {v4, v5, v2}, Lap5;-><init>(Ldm3;I)V

    const/4 v5, 0x3

    new-array v5, v5, [Lil2;

    aput-object v0, v5, v2

    aput-object v3, v5, v1

    const/4 v0, 0x2

    aput-object v4, v5, v0

    invoke-direct {p2, v5}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->h:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Li16;

    const/16 v0, 0xd

    invoke-static {v0}, Lpl2;->o(I)I

    move-result v0

    invoke-direct {p2, v0}, Li16;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment$a;-><init>(Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lpp5;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpp5;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Ljf6;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljf6;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v4

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v5, Luf3;

    invoke-static {v5, p0, v4, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;-><init>(Lpp5;Ljf6;Luf3;)V

    return-object v0
.end method

.method public final showAgreementDialog(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->j:Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->j:Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showAllNotificationsLoaded()V
    .locals 0

    return-void
.end method

.method public final showEmptyNotifications(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;->groupNoNotifications:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showEmptyNotificationsProgress(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;->pbLoading:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showNotifications(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;->rvNotifs:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->h:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showOrdInfoDialog(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->k:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->k:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showPageOfNotificationsProgress(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;->pbBottomLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showRefreshNotificationsProgress(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;->pbBottomLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
