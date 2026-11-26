.class public final Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;"
    }
.end annotation


# static fields
.field public static final n:Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment$a;

.field public static final synthetic o:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ly74;


# instance fields
.field public final f:I

.field public final g:Lol4;

.field public h:Leu1;

.field public i:Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;

.field public j:Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeApproveDialog;

.field public k:Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeErrorDialog;

.field public l:Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeSuccessDialog;

.field public m:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

.field public presenter:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->o:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->n:Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment$a;

    const/4 v0, 0x2

    invoke-static {v4, v0}, Lkx6;->n(II)Ly74;

    move-result-object v0

    sput-object v0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->p:Ly74;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00f2

    iput v0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final copyPromocode(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/content/ClipboardManager;

    const v2, 0x7f1405bb

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1405bc

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v1, Lk57$a;

    invoke-direct {v1, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1405ba

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->p()Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->l:Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeSuccessDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->i:Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->j:Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeApproveDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->k:Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeErrorDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_3
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->m:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_4
    return-void
.end method

.method public final o()Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->o:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->o()Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleTransparentBinding;

    iget-object p2, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleTransparentBinding;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f1405bd

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleTransparentBinding;->ivBtnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lrb;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lrb;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->o()Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Leu1;

    new-instance v0, Lgm7;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->p()Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    move-result-object v1

    invoke-direct {v0, v1}, Lgm7;-><init>(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lil2;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p2, v1}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->h:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcw5;

    new-instance v1, Lhm7;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->p()Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    move-result-object v3

    const-string v6, "loadNextPage()V"

    const/4 v7, 0x0

    const-class v4, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    const-string v5, "loadNextPage"

    invoke-direct/range {v1 .. v7}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, p2, v1}, Lcw5;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lll3;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Lim7;

    invoke-direct {p2}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->o()Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;->incldError:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment$b;-><init>(Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final p()Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->presenter:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "PROMOCODES_ID_PARAM"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Lb40;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb40;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v3

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v5, Luf3;

    invoke-static {v5, p0, v3, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;-><init>(ILb40;Luf3;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Promocodes id can not be null for SelectPromocodeFragment"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final showApproveSheet(Lem7;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->n()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeApproveDialog;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->p()Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeApproveDialog;-><init>(Landroid/content/Context;Lem7;Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->j:Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeApproveDialog;

    :cond_0
    return-void
.end method

.method public final showErrorLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->o()Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;->incldError:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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

.method public final showErrorSheet(Ljm7$a;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->n()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeErrorDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeErrorDialog;-><init>(Landroid/content/Context;Ljm7$a;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->k:Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeErrorDialog;

    :cond_0
    return-void
.end method

.method public final showLoading(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->o()Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->o()Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showOrdDialog(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->m:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->m:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showPromocodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfr6;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->h:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showSelectingSheet(Lkm7;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->n()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->p()Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;-><init>(Landroid/content/Context;Lkm7;Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->i:Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;

    :cond_0
    return-void
.end method

.method public final showSuccessSheet(Ljm7$b;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->n()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeSuccessDialog;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->p()Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeSuccessDialog;-><init>(Landroid/content/Context;Ljm7$b;Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->l:Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeSuccessDialog;

    :cond_0
    return-void
.end method
