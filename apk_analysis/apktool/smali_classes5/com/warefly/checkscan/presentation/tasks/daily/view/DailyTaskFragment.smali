.class public final Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;"
    }
.end annotation


# static fields
.field public static final k:Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$a;

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

.field public i:Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultDialog;

.field public j:Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;

.field public presenter:Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->l:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->k:Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00c0

    iput v0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->l:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Leu1;

    new-instance v0, Lx72;

    sget-object v1, Lw72;->c:Lw72;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx72;-><init>(Ldm3;I)V

    new-instance v1, Lv72;

    sget-object v3, Lu72;->c:Lu72;

    invoke-direct {v1, v3}, Lvd9;-><init>(Ldm3;)V

    new-instance v3, Lz72;

    sget-object v4, Ly72;->c:Ly72;

    invoke-direct {v3, v4}, Lvd9;-><init>(Ldm3;)V

    new-instance v4, Li82;

    sget-object v5, Lh82;->c:Lh82;

    invoke-direct {v4, v5}, Lvd9;-><init>(Ldm3;)V

    const/4 v5, 0x4

    new-array v5, v5, [Lil2;

    aput-object v0, v5, v2

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v3, 0x3

    aput-object v4, v5, v3

    invoke-direct {p2, v5}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->h:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v3, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$setUpAdapter$1$2;

    invoke-direct {v3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->C(I)V

    invoke-virtual {v3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->B(I)V

    invoke-virtual {v3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->D(I)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Lc82;

    invoke-direct {p2, p0}, Lc82;-><init>(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;->d:Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;->f:Ljava/lang/String;

    new-instance p2, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$c;

    invoke-direct {p2, p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;)V

    invoke-static {p0, p1, p2}, Landroidx/fragment/app/FragmentKt;->setFragmentResultListener(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lbm3;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;

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

    const-class v3, Ld82;

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld82;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v5, "TASK_ID_KEY"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v5, Lup8;

    invoke-static {v5, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lup8;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;-><init>(Luf3;Ld82;ILup8;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Task id can not be null"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final showButtonLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->btnGetReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    return-void
.end method

.method public final showConfetti()V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->incldConfetti:Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkv1;->a(Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;)V

    return-void
.end method

.method public final showContent(Ll82;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Ll82;->b:Ll82$a;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;

    move-result-object v1

    iget-object v2, p1, Ll82;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

    invoke-static {v3}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v3

    invoke-virtual {v3, v2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v2

    new-instance v3, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$d;

    invoke-direct {v3, v1}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$d;-><init>(Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;)V

    invoke-virtual {v2, v3}, Lh37;->F(Lo37;)Lh37;

    move-result-object v2

    invoke-virtual {v2}, Lh37;->O()V

    :cond_0
    iget-object v2, v1, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->layoutButtonGetReward:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->btnGetReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-object v3, v0, Ll82$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->btnGetReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean v0, v0, Ll82$a;->b:Z

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, v1, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->btnGetReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$e;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$e;-><init>(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->h:Leu1;

    if-eqz p0, :cond_1

    iget-object p1, p1, Ll82;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_1
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

.method public final showNoAttemptsDialog(ILcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->j:Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;->d:Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lb36;

    const-string v2, "TASK_ID_KEY"

    invoke-direct {v1, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lb36;

    const-string v2, "DAILY_TASK_NO_ATTEMPTS_KEY"

    invoke-direct {p1, v2, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, p1}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->j:Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;

    return-void
.end method

.method public final showResultDialog(ILcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->i:Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultDialog;->d:Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultDialog$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultDialog;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lb36;

    const-string v2, "TASK_ID_KEY"

    invoke-direct {v1, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lb36;

    const-string v2, "TASK_RESULT_KEY"

    invoke-direct {p1, v2, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, p1}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->i:Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultDialog;

    return-void
.end method

.method public final showScreenLoadingError()V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->coordLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f14016d

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f14016e

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$f;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$f;-><init>(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;)V

    invoke-static {v0, v1, v2, v3}, Loz1;->f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ljava/lang/String;Ljava/lang/String;Lll3;)V

    return-void
.end method

.method public final vibrate()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x190

    invoke-static {p0, v0, v1}, Lr7;->a(Landroid/app/Activity;J)V

    :cond_0
    return-void
.end method
