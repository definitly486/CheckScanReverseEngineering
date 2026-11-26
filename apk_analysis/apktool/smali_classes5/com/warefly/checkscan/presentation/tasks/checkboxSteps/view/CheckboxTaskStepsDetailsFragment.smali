.class public final Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;"
    }
.end annotation


# static fields
.field public static final m:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment$a;

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

.field public presenter:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->n:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->m:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00b4

    iput v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->n:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->presenter:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Leu1;

    new-instance v1, Lcc1;

    sget-object v2, Lbc1;->c:Lbc1;

    invoke-direct {v1, v2}, Lvd9;-><init>(Ldm3;)V

    new-instance v2, Lxb1;

    sget-object v3, Lwb1;->c:Lwb1;

    invoke-direct {v2, v3}, Lvd9;-><init>(Ldm3;)V

    new-instance v3, Lvm8;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->o()Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    move-result-object v4

    invoke-direct {v3, v4}, Lvm8;-><init>(Lvm8$b;)V

    new-instance v4, Llb1;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->o()Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    move-result-object v5

    invoke-direct {v4, v5}, Llb1;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;)V

    new-instance v5, Lrb1;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->o()Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    move-result-object v6

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->o()Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lrb1;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;)V

    new-instance v6, Lob1;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->o()Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    move-result-object v7

    invoke-direct {v6, v7}, Lob1;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;)V

    new-instance v7, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->o()Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a;-><init>(Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;)V

    new-instance v8, Ldn8;

    invoke-direct {v8}, Ldn8;-><init>()V

    const/16 v9, 0x8

    new-array v9, v9, [Lil2;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v1, 0x1

    aput-object v2, v9, v1

    const/4 v2, 0x2

    aput-object v3, v9, v2

    const/4 v2, 0x3

    aput-object v4, v9, v2

    const/4 v2, 0x4

    aput-object v5, v9, v2

    const/4 v2, 0x5

    aput-object v6, v9, v2

    const/4 v2, 0x6

    aput-object v7, v9, v2

    const/4 v2, 0x7

    aput-object v8, v9, v2

    invoke-direct {v0, v9}, Leu1;-><init>([Lil2;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->l:Leu1;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lzb1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, v1, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;
    .locals 9

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "TASK_ID_KEY"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Lfk1;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfk1;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v3

    const-class v5, Lx63;

    invoke-static {v5, v3, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx63;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Lz63;

    invoke-static {v6, v5, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz63;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v6

    const-class v7, Lzl2;

    invoke-static {v7, v6, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzl2;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v7

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v8, Luf3;

    invoke-static {v8, p0, v7, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    move-object v4, v5

    move-object v5, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;-><init>(ILfk1;Lx63;Lz63;Lzl2;Luf3;)V

    return-object v0
.end method

.method public final showDetails(Lec1;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;

    move-result-object v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->l:Leu1;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lec1;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    iget-object p1, p1, Lec1;->b:Lb06;

    if-eqz p1, :cond_1

    iget-boolean v1, p1, Lb06;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lzd3;->h(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;)V

    iget-object v1, v0, Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment$d;

    invoke-direct {v3, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment$d;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;Lb06;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v0, Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
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

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

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

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->k:Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v1, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->k:Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->n()Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentCheckboxTaskStepsDetailsBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

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

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->h:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->h:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showTaskError(Lhn8;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->j:Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;-><init>(Landroid/content/Context;Lhn8;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->j:Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

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

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->i:Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    invoke-direct {v1, v0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;-><init>(Landroid/content/Context;ILno8;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;->i:Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
