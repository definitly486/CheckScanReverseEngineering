.class public final Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;"
    }
.end annotation


# static fields
.field public static final m:Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$a;

.field public static final synthetic n:[Lze4;
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

.field public h:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

.field public i:Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

.field public j:Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

.field public k:Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;

.field public l:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->n:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->m:Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00fd

    iput v0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->n:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->presenter:Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lfh5;->onResume()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->o()Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->loadContent()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->rvBadges:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Leu1;

    new-instance v1, Lvm8;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->o()Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;

    move-result-object v2

    invoke-direct {v1, v2}, Lvm8;-><init>(Lvm8$b;)V

    new-instance v2, Ldn8;

    invoke-direct {v2}, Ldn8;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Lil2;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Leu1;-><init>([Lil2;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->l:Leu1;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$setUpBadges$1$1$2;

    invoke-direct {v0, p1, v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lxm8;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;
    .locals 9

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "TASK_ID_KEY"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Lq83;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq83;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v3

    const-class v5, Lo83;

    invoke-static {v5, v3, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo83;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Lmk1;

    invoke-static {v6, v5, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmk1;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v6

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v7

    const-class v8, Luf3;

    invoke-static {v8, v7, v6, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v7, Lup8;

    invoke-static {v7, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lup8;

    move-object v4, v5

    move-object v5, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;-><init>(ILq83;Lo83;Lmk1;Luf3;Lup8;)V

    return-object v0
.end method

.method public final showActionLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    return-void
.end method

.method public final showClaimButtonLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    return-void
.end method

.method public final showDetails(Lum8;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lum8;->g:Lum8$b;

    iget-object v1, p1, Lum8;->f:Lum8$a;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v3

    iget-object v4, p1, Lum8;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v3

    iget-object v4, v2, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v3, v2, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v4, p1, Lum8;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->incldInfoBadge:Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/ItemInfoBadgeBinding;

    invoke-virtual {v3}, Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/ItemInfoBadgeBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lum8;->i:Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/16 v6, 0x8

    :goto_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->incldInfoBadge:Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/ItemInfoBadgeBinding;

    iget-object v3, v3, Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/ItemInfoBadgeBinding;->tvTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->incldInfoBadge:Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/ItemInfoBadgeBinding;

    invoke-virtual {v3}, Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/ItemInfoBadgeBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Llb7;

    new-instance v6, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$d;

    invoke-direct {v6, p1, p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$d;-><init>(Lum8;Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;)V

    invoke-direct {v4, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->l:Leu1;

    if-eqz v3, :cond_2

    iget-object v4, p1, Lum8;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Leu1;->submitList(Ljava/util/List;)V

    :cond_2
    iget-object v3, v2, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-object v4, v1, Lum8$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, v1, Lum8$a;->b:Z

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Llb7;

    new-instance v4, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$e;

    invoke-direct {v4, p1, p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$e;-><init>(Lum8;Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;)V

    invoke-direct {v1, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-object v3, v0, Lum8$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v0, Lum8$b;->c:Z

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$f;

    invoke-direct {v3, p1, p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$f;-><init>(Lum8;Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;)V

    invoke-direct {v0, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lum8;->h:Lb06;

    if-eqz p1, :cond_3

    iget-boolean v0, p1, Lb06;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lzd3;->h(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;)V

    iget-object v0, v2, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$g;

    invoke-direct {v3, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$g;-><init>(Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;Lb06;)V

    invoke-direct {v1, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v2, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final showError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f14063e

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showErrorState(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

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

.method public final showInfoBottomSheet(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b$a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->k:Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v1, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->k:Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showLoadingSpinner(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentTaskDetailsBinding;->incldLoadingSpinner:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

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

.method public final showOrdInfoDialog(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->h:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->h:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showTaskError(Lhn8;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->j:Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;-><init>(Landroid/content/Context;Lhn8;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->j:Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showTaskNotFinished(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final showTaskSuccess(ILno8;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->i:Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    invoke-direct {v1, v0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;-><init>(Landroid/content/Context;ILno8;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->i:Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
