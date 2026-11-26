.class public final Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/personalform/databinding/FragmentPersonalDataFormBinding;",
        ">;",
        "Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;"
    }
.end annotation


# static fields
.field public static final l:Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$a;

.field public static final synthetic m:[Lze4;
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

.field public final h:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Leu1;

.field public j:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;

.field public k:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;

.field public presenter:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/personalform/databinding/FragmentPersonalDataFormBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->m:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->l:Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00da

    iput v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/personalform/databinding/FragmentPersonalDataFormBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->g:Lol4;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v1, Ly3;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Ly3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->h:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->o()Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->onBackClicked()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/personalform/databinding/FragmentPersonalDataFormBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->m:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/personalform/databinding/FragmentPersonalDataFormBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->presenter:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

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

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->o()Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->onResume()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->n()Lcom/warefly/checkscan/personalform/databinding/FragmentPersonalDataFormBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/personalform/databinding/FragmentPersonalDataFormBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleWithTextButtonTransparentBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleWithTextButtonTransparentBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600bd

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleWithTextButtonTransparentBinding;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f1404ca

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleWithTextButtonTransparentBinding;->ivBtnBack:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$c;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$c;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleWithTextButtonTransparentBinding;->btnAction:Landroid/widget/TextView;

    const p2, 0x7f1404c9

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$d;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->n()Lcom/warefly/checkscan/personalform/databinding/FragmentPersonalDataFormBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/personalform/databinding/FragmentPersonalDataFormBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Leu1;

    new-instance v1, Lu56;

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->o()Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    move-result-object v2

    invoke-direct {v1, v2}, Lu56;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)V

    new-instance v2, La56;

    sget-object v3, Lz46;->c:Lz46;

    invoke-direct {v2, v3}, Lvd9;-><init>(Ldm3;)V

    new-instance v3, Le56;

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->o()Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    move-result-object v4

    invoke-direct {v3, v4}, Le56;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)V

    const/4 v4, 0x3

    new-array v4, v4, [Lil2;

    aput-object v1, v4, p2

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v2, 0x2

    aput-object v3, v4, v2

    invoke-direct {v0, v4}, Leu1;-><init>([Lil2;)V

    iput-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->i:Leu1;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$b;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;
    .locals 9

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lw66;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lw66;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "IS_AFTER_ONBOARDING_KEY"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Ljf6;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Ld76;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ld76;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v0, Li66;

    invoke-static {v0, p0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Li66;

    new-instance v3, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    invoke-direct/range {v3 .. v8}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;-><init>(Lw66;Ljf6;ZLi66;Ld76;)V

    return-object v3
.end method

.method public final requestGeoPermission()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Laq;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->o()Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->updateLocation()V

    return-void

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->h:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final setButtonEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->n()Lcom/warefly/checkscan/personalform/databinding/FragmentPersonalDataFormBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/databinding/FragmentPersonalDataFormBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleWithTextButtonTransparentBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleWithTextButtonTransparentBinding;->btnAction:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final showItems(Ljava/util/List;)V
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

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->i:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showOnboardingWarning(Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->j:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$e;

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->o()Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    move-result-object v4

    const-string v7, "onLaterClicked(Z)V"

    const/4 v8, 0x0

    const/4 v3, 0x1

    const-class v5, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    const-string v6, "onLaterClicked"

    invoke-direct/range {v2 .. v8}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1, p1, v2}, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;-><init>(Landroid/content/Context;Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$e;)V

    iput-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->j:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showSaveError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f1404c8

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showSaveLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->n()Lcom/warefly/checkscan/personalform/databinding/FragmentPersonalDataFormBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/databinding/FragmentPersonalDataFormBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

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

.method public final showSaveSuccess(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final showSaveSuccessFirstTime(Lu66;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->k:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$f;

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->o()Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    move-result-object v4

    const-string v7, "onOpenUrlClicked(Ljava/lang/String;)V"

    const/4 v8, 0x0

    const/4 v3, 0x1

    const-class v5, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    const-string v6, "onOpenUrlClicked"

    invoke-direct/range {v2 .. v8}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1, p1, v2}, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;-><init>(Landroid/content/Context;Lu66;Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$f;)V

    iput-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->k:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
