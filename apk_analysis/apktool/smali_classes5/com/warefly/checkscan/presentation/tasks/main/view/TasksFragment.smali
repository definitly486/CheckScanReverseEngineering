.class public final Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;"
    }
.end annotation


# static fields
.field public static final q:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$a;

.field public static final synthetic r:[Lze4;
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

.field public final h:Lcl4;

.field public i:Leu1;

.field public j:Lk07;

.field public k:Lnw7;

.field public l:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

.field public m:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

.field public n:Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog;

.field public o:Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

.field public p:Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

.field public presenter:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->r:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->q:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00fe

    iput v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->g:Lol4;

    sget-object v0, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$l;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$l;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->h:Lcl4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->r:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->presenter:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onHiddenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->j:Lk07;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lk07;->b(Z)V

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->k:Lnw7;

    if-eqz p0, :cond_1

    iput-boolean p1, p0, Lnw7;->k:Z

    invoke-virtual {p0}, Lnw7;->b()V

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lfh5;->onResume()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->onResume()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;->incldTryAgain:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$b;

    invoke-direct {v3, v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Leu1;

    new-instance v3, Ltl8;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    move-result-object v6

    invoke-direct {v3, v6}, Ltl8;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)V

    new-instance v6, Lmm8;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    move-result-object v7

    invoke-direct {v6, v7}, Lmm8;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)V

    new-instance v7, Lv10;

    sget-object v8, Lqo8;->c:Lqo8;

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lv10;-><init>(Ldm3;I)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    move-result-object v10

    new-instance v11, Lpm8;

    invoke-direct {v11, v10, v8}, Lpm8;-><init>(Lpm8$b;Lfe;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    move-result-object v10

    new-instance v12, Lam8;

    invoke-direct {v12, v10, v8}, Lam8;-><init>(Lam8$b;Lfe;)V

    new-instance v8, Lxl8;

    sget-object v10, Lwl8;->c:Lwl8;

    invoke-direct {v8, v10}, Lvd9;-><init>(Ldm3;)V

    new-instance v10, Ldm8;

    invoke-direct {v10}, Ldm8;-><init>()V

    new-instance v13, Lhr0;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    move-result-object v14

    new-instance v15, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$c;

    invoke-direct {v15, v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    move/from16 p1, v4

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v4

    invoke-direct {v13, v14, v15, v4}, Lhr0;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$c;Landroidx/lifecycle/LifecycleCoroutineScope;)V

    new-instance v4, Lqh9;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    move-result-object v14

    new-instance v15, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$d;

    invoke-direct {v15, v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$d;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    move/from16 p2, v5

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v5

    invoke-direct {v4, v14, v15, v5}, Lqh9;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$d;Landroidx/lifecycle/LifecycleCoroutineScope;)V

    new-instance v5, Lar1;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    move-result-object v14

    invoke-direct {v5, v14}, Lar1;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)V

    const/16 v14, 0xa

    new-array v14, v14, [Lil2;

    aput-object v3, v14, p2

    aput-object v6, v14, p1

    aput-object v7, v14, v9

    const/4 v3, 0x3

    aput-object v11, v14, v3

    const/4 v3, 0x4

    aput-object v12, v14, v3

    const/4 v3, 0x5

    aput-object v8, v14, v3

    const/4 v3, 0x6

    aput-object v10, v14, v3

    const/4 v3, 0x7

    aput-object v13, v14, v3

    const/16 v3, 0x8

    aput-object v4, v14, v3

    const/16 v3, 0x9

    aput-object v5, v14, v3

    invoke-direct {v2, v14}, Leu1;-><init>([Lil2;)V

    iput-object v2, v0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->i:Leu1;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$e;

    invoke-direct {v2, v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$e;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;->swipeToRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v2, Lo32;

    invoke-direct {v2, v0}, Lo32;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    new-instance v1, Lk07;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$f;

    invoke-direct {v3, v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$f;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    new-instance v4, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$g;

    invoke-direct {v4, v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$g;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2, v3, v4, v5}, Lk07;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lnl3;Lnl3;F)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Lk07;->b(Z)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lk07;->a(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v1, v0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->j:Lk07;

    new-instance v3, Lnw7;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;

    move-result-object v1

    iget-object v4, v1, Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->getShowcaseRenderState()Lqw7;

    move-result-object v5

    new-instance v6, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$h;

    invoke-direct {v6, v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$h;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    new-instance v7, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$i;

    invoke-direct {v7, v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$i;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    const v8, 0x3f666666    # 0.9f

    invoke-direct/range {v3 .. v8}, Lnw7;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lqw7;Lnl3;Lnl3;F)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    iput-boolean v1, v3, Lnw7;->k:Z

    invoke-virtual {v3}, Lnw7;->b()V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v1}, Lnw7;->a(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v3, v0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->k:Lnw7;

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;
    .locals 13

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Luf3;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Lvn8;

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvn8;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v3

    const-class v5, Lzl2;

    invoke-static {v5, v3, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzl2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x21

    const-string v8, "REASON_KEY"

    if-lt v6, v7, :cond_0

    const-class v6, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    instance-of v6, v5, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    if-nez v6, :cond_1

    move-object v5, v4

    :cond_1
    check-cast v5, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    :goto_0
    check-cast v5, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v6

    const-class v7, Lp63;

    invoke-static {v7, v6, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp63;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v7

    const-class v8, Lo83;

    invoke-static {v8, v7, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo83;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v8

    const-class v9, Lc47;

    invoke-static {v9, v8, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc47;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v9

    const-class v10, Lmo7;

    invoke-static {v10, v9, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmo7;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v10

    const-class v11, Lup8;

    invoke-static {v11, v10, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lup8;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v11

    const-class v12, Lcc7;

    invoke-static {v12, v11, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcc7;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v12, Lbc7;

    invoke-static {v12, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbc7;

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;-><init>(Luf3;Lvn8;Lzl2;Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Lp63;Lo83;Lc47;Lmo7;Lup8;Lcc7;Lbc7;)V

    return-object v0
.end method

.method public final setContent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lso8;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->i:Leu1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->k:Lnw7;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->getShowcaseRows()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnw7;->d(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final showAd(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lw48;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$k;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$k;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;Ljava/util/List;Le02;)V

    const/4 p1, 0x2

    invoke-static {v0, v1, v3, v2, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showLoading(Z)V

    :cond_0
    return-void
.end method

.method public final showAdResult(Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->n:Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog;->d:Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog;-><init>()V

    new-instance v1, Lb36;

    const-string v2, "DAILY_BONUS_KEY"

    invoke-direct {v1, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->n:Lcom/warefly/checkscan/presentation/tasks/dialogs/adResult/DailyBonusPointsDialog;

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->l(Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;)V

    return-void
.end method

.method public final showDefaultError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f14063e

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showErrorLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;->incldTryAgain:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

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
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->m:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object p1, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->m:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    return-void
.end method

.method public final showOrdInfoDialog(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->l:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->l:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showTaskError(Lhn8;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->p:Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;-><init>(Landroid/content/Context;Lhn8;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->p:Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showTaskSuccess(ILno8;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o:Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    invoke-direct {v1, v0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;-><init>(Landroid/content/Context;ILno8;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o:Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showToolbar(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;->toolbar:Landroid/widget/TextView;

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

.method public final turnOffRefreshing()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentTasksBinding;->swipeToRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
