.class public final Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/support/databinding/FragmentSupportSectionsBinding;",
        ">;",
        "Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;"
    }
.end annotation


# static fields
.field public static final i:Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment$a;

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

.field public presenter:Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/support/databinding/FragmentSupportSectionsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->j:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->i:Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00fc

    iput v0, p0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/support/databinding/FragmentSupportSectionsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->presenter:Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n()Lcom/warefly/checkscan/support/databinding/FragmentSupportSectionsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportSectionsBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportSectionsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/support/databinding/FragmentSupportSectionsBinding;->incldTryAgain:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lai1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lai1;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;I)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportSectionsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/support/databinding/FragmentSupportSectionsBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Leu1;

    new-instance v0, Lzk7;

    sget-object v2, Lyk7;->c:Lyk7;

    invoke-direct {v0, v2}, Lvd9;-><init>(Ldm3;)V

    new-instance v2, Lyf8;

    iget-object v3, p0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->presenter:Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-direct {v2, v3}, Lyf8;-><init>(Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;)V

    new-array v1, v1, [Lil2;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object v2, v1, v0

    invoke-direct {p2, v1}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->h:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Lfy8;

    invoke-direct {p2}, Lfy8;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p2, p0, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v4
.end method

.method public final providePresenter()Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lm83;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm83;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Lkr7;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkr7;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v4, Lqf8;

    invoke-static {v4, p0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqf8;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;-><init>(Lm83;Lkr7;Lqf8;)V

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

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->h:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showError(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportSectionsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportSectionsBinding;->incldTryAgain:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

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

.method public final showLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportSectionsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportSectionsBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

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
