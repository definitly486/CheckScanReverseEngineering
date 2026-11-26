.class public final Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/subscriptionLanding/databinding/FragmentSubscriptionLandingBinding;",
        ">;",
        "Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingView;"
    }
.end annotation


# static fields
.field public static final i:Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment$a;

.field public static final synthetic j:[Lze4;
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

.field public presenter:Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/presenter/LandingPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/subscriptionLanding/databinding/FragmentSubscriptionLandingBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment;->j:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment;->i:Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00f7

    iput v0, p0, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/subscriptionLanding/databinding/FragmentSubscriptionLandingBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment;->f:I

    return p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment;->j:[Lze4;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object v0, p0, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment;->g:Lol4;

    invoke-virtual {v0, p0, p1}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/subscriptionLanding/databinding/FragmentSubscriptionLandingBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/subscriptionLanding/databinding/FragmentSubscriptionLandingBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Leu1;

    new-instance v1, Lkk4;

    sget-object v2, Ljk4;->c:Ljk4;

    invoke-direct {v1, v2, p2}, Lkk4;-><init>(Ldm3;I)V

    new-instance v2, Lvj4;

    sget-object v3, Luj4;->c:Luj4;

    invoke-direct {v2, v3}, Lvd9;-><init>(Ldm3;)V

    new-instance v3, Lci4;

    sget-object v4, Lbi4;->c:Lbi4;

    invoke-direct {v3, v4}, Lvd9;-><init>(Ldm3;)V

    new-instance v4, Lck4;

    sget-object v5, Lzj4;->c:Lzj4;

    invoke-direct {v4, v5}, Lvd9;-><init>(Ldm3;)V

    new-instance v5, Luh4;

    iget-object v6, p0, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment;->presenter:Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/presenter/LandingPresenter;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-direct {v5, v6}, Luh4;-><init>(Luh4$b;)V

    const/4 v6, 0x5

    new-array v6, v6, [Lil2;

    aput-object v1, v6, p2

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v2, 0x2

    aput-object v3, v6, v2

    const/4 v2, 0x3

    aput-object v4, v6, v2

    const/4 v2, 0x4

    aput-object v5, v6, v2

    invoke-direct {v0, v6}, Leu1;-><init>([Lil2;)V

    iput-object v0, p0, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment;->h:Leu1;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v7
.end method

.method public final providePresenter()Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/presenter/LandingPresenter;
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/presenter/LandingPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v1, Lm73;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm73;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/presenter/LandingPresenter;-><init>(Lm73;)V

    return-object v0
.end method

.method public final showContent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment;->h:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
