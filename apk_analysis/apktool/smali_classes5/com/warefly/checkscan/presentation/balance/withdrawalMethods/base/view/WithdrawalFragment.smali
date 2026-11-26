.class public abstract Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/viewbinding/ViewBinding;",
        "P:",
        "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter<",
        "+",
        "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;",
        ">;>",
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "TT;>;",
        "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;"
    }
.end annotation


# instance fields
.field public f:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

.field public g:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;

.field public h:Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;

.field public i:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;

.field public j:Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

.field public k:Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

.field public l:Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLoading(Z)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->f:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->f:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    :cond_1
    return-void
.end method

.method public abstract n()Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method public abstract o()Ljava/lang/String;
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "LoadingDialog"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p2, p1, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    new-instance p1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment$a;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment$a;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;)V

    const-string p2, "DIALOG_TWO_BUTTONS_REQUEST_KEY"

    invoke-static {p0, p2, p1}, Landroidx/fragment/app/FragmentKt;->setFragmentResultListener(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lbm3;)V

    return-void
.end method

.method public final openCustomTab(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->g:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Li72;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final openUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->openUrl(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->g:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final p(La40;Lll3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La40;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->g:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->h:Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;

    invoke-direct {v1, v0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;-><init>(Landroid/content/Context;La40;Lll3;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->h:Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;

    :cond_2
    return-void
.end method

.method public final showAddEmailDialog()V
    .locals 8

    new-instance v0, La40;

    const v1, 0x7f1406c0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f1406bf

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, La40$a;

    const v3, 0x7f1406be

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, La40$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0802d8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x14

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v7}, La40;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La40$a;La40$a;Ljava/lang/Integer;I)V

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment$b;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->p(La40;Lll3;)V

    return-void
.end method

.method public final showAlertBeforeWithdrawAction(Lec;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->l:Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons$a;

    iget-object v1, p1, Lec;->a:Ljava/lang/String;

    iget-object v2, p1, Lec;->b:Ljava/lang/String;

    iget-object v3, p1, Lec;->c:Ljava/lang/String;

    iget-object p1, p1, Lec;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, p1, v4}, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->l:Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->l(Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;)V

    return-void
.end method

.method public final showBankPageDialog(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->i:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;->f:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;-><init>()V

    new-instance v1, Lb36;

    const-string v2, "WithdrawalBankDialog_URL_KEY"

    invoke-direct {v1, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->i:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;

    return-void
.end method

.method public final showInfoDialog(La40;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment$c;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->p(La40;Lll3;)V

    return-void
.end method

.method public final showSomethingWrong()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->g:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f140610

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Loz1;->h(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final showTaskError(Lhn8;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->k:Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;-><init>(Landroid/content/Context;Lhn8;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->k:Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showTaskSuccess(ILno8;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->j:Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    invoke-direct {v1, v0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;-><init>(Landroid/content/Context;ILno8;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->j:Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showWithdrawalCards(Ljava/util/List;Lnl3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgj9;",
            ">;",
            "Lnl3<",
            "-",
            "Lwi9;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->g:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;

    invoke-direct {v1, v0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lnl3;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->g:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;

    :cond_1
    return-void
.end method

.method public final startTransferSBP(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->g:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;-><init>()V

    new-instance v1, Lb36;

    const-string v2, "TITLE_KEY"

    invoke-direct {v1, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    return-void
.end method

.method public startTransferToBankCard(J)V
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;->d:Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Lb36;

    const-string v1, "CARD_ID_KEY"

    invoke-direct {p2, v1, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p2}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    return-void
.end method

.method public startTransferToPhone()V
    .locals 4

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v2, Lb36;

    const-string v3, "IS_UPRID_DISABLE"

    invoke-direct {v2, v3, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2}, [Lb36;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    return-void
.end method
