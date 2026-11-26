.class public final Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;
.super Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentWithdrawalMethodsBinding;",
        "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;",
        ">;",
        "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;"
    }
.end annotation


# static fields
.field public static final synthetic q:[Lze4;
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
.field public final m:I

.field public final n:Lol4;

.field public final o:Ljava/lang/String;

.field public p:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentWithdrawalMethodsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->q:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;-><init>()V

    const v0, 0x7f0d0103

    iput v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->m:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentWithdrawalMethodsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->n:Lol4;

    const-string v0, "WITHDRAWAL_METHODS_FRAGMENT_TAG"

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->m:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->q()Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;->onBackClicked()V

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic n()Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->q()Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;

    move-result-object p0

    return-object p0
.end method

.method public final o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->q:[Lze4;

    const/4 p2, 0x0

    aget-object v0, p1, p2

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->n:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/databinding/FragmentWithdrawalMethodsBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentWithdrawalMethodsBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Leu1;

    new-instance v3, Lak9;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->q()Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;

    move-result-object v4

    invoke-direct {v3, v4}, Lak9;-><init>(Lrj9;)V

    new-instance v4, Lkj9;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->q()Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;

    move-result-object v5

    invoke-direct {v4, v5}, Lkj9;-><init>(Lrj9;)V

    new-instance v5, Ltj9;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->q()Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;

    move-result-object v6

    invoke-direct {v5, v6}, Ltj9;-><init>(Lrj9;)V

    new-instance v6, Lij9;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->q()Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;

    move-result-object v7

    invoke-direct {v6, v7}, Lij9;-><init>(Lrj9;)V

    new-instance v7, Lgk9;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->q()Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;

    move-result-object v8

    invoke-direct {v7, v8}, Lgk9;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;)V

    new-instance v8, Lmj9;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->q()Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v8, v10, v9}, Lmj9;-><init>(ZLrj9;)V

    new-instance v9, Lmj9;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->q()Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lmj9;-><init>(ZLrj9;)V

    new-instance v11, Ldk9;

    invoke-direct {v11}, Ldk9;-><init>()V

    const/16 v12, 0x8

    new-array v12, v12, [Lil2;

    aput-object v3, v12, p2

    aput-object v4, v12, v10

    const/4 v3, 0x2

    aput-object v5, v12, v3

    const/4 v3, 0x3

    aput-object v6, v12, v3

    const/4 v3, 0x4

    aput-object v7, v12, v3

    const/4 v3, 0x5

    aput-object v8, v12, v3

    const/4 v3, 0x6

    aput-object v9, v12, v3

    const/4 v3, 0x7

    aput-object v11, v12, v3

    invoke-direct {v2, v12}, Leu1;-><init>([Lil2;)V

    iput-object v2, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->p:Leu1;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Lsj9;

    invoke-direct {v2, p0}, Lsj9;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    aget-object p1, p1, p2

    invoke-virtual {v1, p0, p1}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/databinding/FragmentWithdrawalMethodsBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentWithdrawalMethodsBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleBinding;->ivBtnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment$a;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;
    .locals 9

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lb40;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lb40;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v0

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v3, Luf3;

    invoke-static {v3, v1, v0, v2}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Ljf6;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lmk1;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lmk1;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v0, Liw2;

    invoke-static {v0, p0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Liw2;

    new-instance v3, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;

    invoke-direct/range {v3 .. v8}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;-><init>(Lb40;Ljf6;Luf3;Lmk1;Liw2;)V

    return-object v3
.end method

.method public final q()Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->presenter:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setToolbarTitle(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->q:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->n:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentWithdrawalMethodsBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentWithdrawalMethodsBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showWithdrawalMethods(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lhk9;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;->p:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
