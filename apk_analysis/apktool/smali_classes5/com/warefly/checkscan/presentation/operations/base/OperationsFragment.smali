.class public abstract Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/operations/base/OperationsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter<",
        "Lcom/warefly/checkscan/presentation/operations/base/OperationsView;",
        ">;>",
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/operations/base/OperationsView;"
    }
.end annotation


# static fields
.field public static final synthetic i:[Lze4;
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
.field public final f:Lol4;

.field public final g:I

.field public h:Leu1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->i:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->f:Lol4;

    const v0, 0x7f0d00d6

    iput v0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->g:I

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->g:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->i:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->f:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    return-object p0
.end method

.method public abstract o()Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->rvOperations:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

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

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-direct {p2, v3}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->h:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->btnLoadMore:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment$a;-><init>(Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final openUrl(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lnz1;->f:Lnz1;

    invoke-static {p0, p1, v0}, Loz1;->c(Landroid/content/Context;Ljava/lang/String;Lll3;)V

    :cond_0
    return-void
.end method

.method public final showAllOperationsLoaded()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->btnLoadMore:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showEmptyOperations(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->rvOperations:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->viewTryAgain:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->tvMessage:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f1404aa

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment$b;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment$b;-><init>(Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;)V

    invoke-direct {v0, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->btnLoadMore:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->rvOperations:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->viewTryAgain:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showEmptyOperationsError(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->rvOperations:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->viewTryAgain:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->tvMessage:Landroid/widget/TextView;

    const v2, 0x7f1404ac

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    const v0, 0x7f1404aa

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment$c;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment$c;-><init>(Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;)V

    invoke-direct {v0, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->btnLoadMore:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->rvOperations:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->viewTryAgain:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showEmptyOperationsProgress(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->pbLoading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->btnLoadMore:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showOperations(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->rvOperations:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->h:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->rvOperations:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showPageOfOperationsProgress(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->pbLoading:Landroid/widget/ProgressBar;

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

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOperationsBinding;->pbLoading:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
