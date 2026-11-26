.class public final Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;"
    }
.end annotation


# static fields
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

.field public final h:Landroidx/navigation/NavArgsLazy;

.field public i:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->j:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00a5

    iput v0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lpc;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$i;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$i;-><init>(Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->h:Landroidx/navigation/NavArgsLazy;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->o()Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->presenter:Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->rvOperations:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcw5;

    new-instance v1, Loc;

    invoke-direct {v1, p0}, Loc;-><init>(Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;)V

    invoke-direct {v0, p2, v1}, Lcw5;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lll3;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Leu1;

    new-instance v0, Lj92;

    invoke-direct {v0}, Lj92;-><init>()V

    new-instance v1, Ldz5;

    invoke-direct {v1}, Ldz5;-><init>()V

    new-instance v2, Lty5;

    invoke-direct {v2}, Lty5;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Lil2;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v1, 0x2

    aput-object v2, v3, v1

    invoke-direct {p2, v3}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->i:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->toolbar:Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f1404ad

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->ivBtnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$a;-><init>(Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Luf3;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf3;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpc;

    iget v2, v2, Lpc;->a:I

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v3, Lkz5;

    invoke-static {v3, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkz5;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;-><init>(Luf3;ILkz5;)V

    return-object v0
.end method

.method public final removeCategory()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->tvFilterName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    const v2, 0x7f1404a7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->btnRemoveFilter:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final showAllOperationsLoaded()V
    .locals 0

    return-void
.end method

.method public final showBeginList()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->rvOperations:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public final showCategories(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpy5;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f1404a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$b;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$b;-><init>(Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpy5;

    new-instance v4, Lga3;

    invoke-virtual {v3}, Lpy5;->a()I

    move-result v5

    invoke-virtual {v3}, Lpy5;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lga3;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$b;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showCategoriesLoaded(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->btnChooseFilter:Landroid/widget/ImageView;

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v3, Llb7;

    new-instance v4, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$c;

    invoke-direct {v4, p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$c;-><init>(Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;)V

    invoke-direct {v3, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->tvFilterName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    const v4, 0x7f1404a7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$d;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$d;-><init>(Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;)V

    invoke-direct {p1, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->btnRemoveFilter:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->tvFilterName:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->btnRemoveFilter:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final showCouldntLoadCategories(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->viewTryAgain:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->tvMessage:Landroid/widget/TextView;

    const v1, 0x7f1404b6

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$e;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$e;-><init>(Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showEmptyOperations(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->rvOperations:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->viewTryAgain:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->tvMessage:Landroid/widget/TextView;

    const v1, 0x7f1404ab

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    const v0, 0x7f1404aa

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$f;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$f;-><init>(Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->viewTryAgain:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-void
.end method

.method public final showEmptyOperationsError(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->rvOperations:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->viewTryAgain:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->tvMessage:Landroid/widget/TextView;

    const v1, 0x7f1404ac

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    const v0, 0x7f1404aa

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$g;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$g;-><init>(Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->viewTryAgain:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-void
.end method

.method public final showEmptyOperationsProgress(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->pbLoading:Landroid/widget/ProgressBar;

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

.method public final showLoadingCategories(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->pbLoading:Landroid/widget/ProgressBar;

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

.method public final showOperations(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->rvOperations:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->i:Leu1;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Leu1;->submitList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final showPageOfOperationsProgress(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->pbLoading:Landroid/widget/ProgressBar;

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

.method public final showRefreshOperationsProgress(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->pbLoading:Landroid/widget/ProgressBar;

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

.method public final showSelectedCategory(Lpy5;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->tvFilterName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lpy5;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/FragmentAllOperationsBinding;->btnRemoveFilter:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$h;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$h;-><init>(Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
