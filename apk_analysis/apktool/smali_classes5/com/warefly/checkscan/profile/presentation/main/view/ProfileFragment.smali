.class public final Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;",
        ">;",
        "Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;"
    }
.end annotation


# static fields
.field public static final n:Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$a;

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


# instance fields
.field public final f:I

.field public final g:Lol4;

.field public final h:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/PickVisualMediaRequest;",
            ">;"
        }
    .end annotation
.end field

.field public i:Leu1;

.field public j:Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;

.field public k:Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;

.field public l:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

.field public m:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;

.field public presenter:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->o:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->n:Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00e3

    iput v0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->g:Lol4;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;-><init>()V

    new-instance v1, Ljd;

    invoke-direct {v1, p0}, Ljd;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->h:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final copyInviteCode(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/content/ClipboardManager;

    const v2, 0x7f140509

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const p0, 0x7f1404f0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final dismissDeleteWarningDialog()V
    .locals 1

    const-string v0, "DIALOG_TWO_BUTTONS_REQUEST_KEY"

    invoke-static {p0, v0}, Landroidx/fragment/app/FragmentKt;->clearFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public final dismissLoadingDialog()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->l:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public final dismissLogoutWarningDialog()V
    .locals 1

    const-string v0, "DIALOG_TWO_BUTTONS_REQUEST_KEY"

    invoke-static {p0, v0}, Landroidx/fragment/app/FragmentKt;->clearFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->o:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->presenter:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

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

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->o()Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->fetchProfileScreen()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->n()Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v0, Leu1;

    new-instance v1, Lq86;

    invoke-direct {v1}, Lq86;-><init>()V

    new-instance v2, Lfl6;

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->o()Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    move-result-object v3

    invoke-direct {v2, v3}, Lfl6;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V

    new-instance v3, Lnl6;

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->o()Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    move-result-object v4

    invoke-direct {v3, v4}, Lnl6;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V

    new-instance v4, Ldm6;

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->o()Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    move-result-object v5

    invoke-direct {v4, v5}, Ldm6;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V

    new-instance v5, Ljm6;

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->o()Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    move-result-object v6

    invoke-direct {v5, v6}, Ljm6;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V

    new-instance v6, Lxl6;

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->o()Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    move-result-object v7

    invoke-direct {v6, v7}, Lxl6;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V

    new-instance v7, Lcl6;

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->o()Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcl6;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V

    const/4 v8, 0x7

    new-array v8, v8, [Lil2;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    aput-object v2, v8, p2

    const/4 p2, 0x2

    aput-object v3, v8, p2

    const/4 p2, 0x3

    aput-object v4, v8, p2

    const/4 p2, 0x4

    aput-object v5, v8, p2

    const/4 p2, 0x5

    aput-object v6, v8, p2

    const/4 p2, 0x6

    aput-object v7, v8, p2

    invoke-direct {v0, v8}, Leu1;-><init>([Lil2;)V

    iput-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->i:Leu1;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance p2, Lfy8;

    invoke-direct {p2}, Lfy8;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->n()Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleTransparentBinding;

    iget-object p2, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleTransparentBinding;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f140516

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleTransparentBinding;->ivBtnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$e;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$e;-><init>(Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->n()Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$b;-><init>(Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$c;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$c;-><init>(Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;)V

    const-string p2, "DIALOG_TWO_BUTTONS_REQUEST_KEY"

    invoke-static {p0, p2, p1}, Landroidx/fragment/app/FragmentKt;->setFragmentResultListener(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lbm3;)V

    new-instance p1, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$d;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$d;-><init>(Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;)V

    const-string p2, "PROMOCODE_ACTIVATED_REQUEST_KEY"

    invoke-static {p0, p2, p1}, Landroidx/fragment/app/FragmentKt;->setFragmentResultListener(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lbm3;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;
    .locals 9

    new-instance v0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Ls73;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls73;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Lhy1;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhy1;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v4

    const-class v5, Lsm6;

    invoke-static {v5, v4, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsm6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Ljf6;

    invoke-static {v6, v5, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v6

    const-class v7, Lk89;

    invoke-static {v7, v6, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk89;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v7

    const-class v8, Llv4;

    invoke-static {v8, v7, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llv4;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v8, La83;

    invoke-static {v8, p0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La83;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;-><init>(Ls73;Lhy1;Lsm6;Ljf6;Lk89;Llv4;La83;)V

    return-object v0
.end method

.method public final requestGallery()V
    .locals 6

    sget-object v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    const/16 v4, 0xe

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/activity/result/PickVisualMediaRequestKt;->PickVisualMediaRequest$default(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;IZLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;ILjava/lang/Object;)Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->h:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final shareReferralLink(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x7f140514

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lj59;->a:Lj59;
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

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->showToastMessage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final showErrorDeleteAccount()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->l:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const v0, 0x7f140503

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final showErrorTryAgain(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->n()Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

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

.method public final showFaqPage(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Li72;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final showLargeFile()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140506

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showLoadingDialog()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->l:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    const v1, 0x7f140507

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->a(Ljava/lang/String;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->l:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    return-void
.end method

.method public final showLoadingSpinner(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->n()Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

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

.method public final showNetworkError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140502

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showPromocodeEnterBottomSheet(Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->m:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet;->e:Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet;

    invoke-direct {v0}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet;-><init>()V

    new-instance v1, Lb36;

    const-string v2, "PROMOCODE_BLOCK_KEY"

    invoke-direct {v1, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final showPromocodeErrorBottomSheet(Lm6;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->m:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;-><init>(Landroid/content/Context;ZLm6;)V

    iput-object v1, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->m:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showScreen(Ljava/util/List;)V
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

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->i:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showToastMessage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final showUnSuccessLogOut()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->l:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const v0, 0x7f140504

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final showWarningDeleteAccount()V
    .locals 5

    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->k:Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons$a;

    const v1, 0x7f1404fb

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f1404fa

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7f1404fc

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7f1404f9

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DELETE_ACCOUNT_TAG"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->k:Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->l(Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;)V

    return-void
.end method

.method public final showWarningLogoutDialog()V
    .locals 5

    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->j:Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons$a;

    const v1, 0x7f1404ff

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f1404fe

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7f140500

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7f1404fd

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "LOG_OUT_TAG"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->j:Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->l(Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;)V

    return-void
.end method
