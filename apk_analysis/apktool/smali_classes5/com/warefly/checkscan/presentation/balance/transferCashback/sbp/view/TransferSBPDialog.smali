.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog<",
        "Lcom/warefly/checkscan/databinding/DialogSbpTransferBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;"
    }
.end annotation


# static fields
.field public static final g:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog$a;

.field public static final synthetic h:[Lze4;
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
.field public final c:Lgl4;

.field public d:Leu1;

.field public e:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;

.field public f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;

.field public presenter:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogSbpTransferBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->h:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->g:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d008c

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;-><init>(I)V

    new-instance v0, Lgl4;

    const-class v1, Lcom/warefly/checkscan/databinding/DialogSbpTransferBinding;

    invoke-direct {v0, v1}, Lgl4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->c:Lgl4;

    return-void
.end method


# virtual methods
.method public final e()Lcom/warefly/checkscan/databinding/DialogSbpTransferBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->h:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->c:Lgl4;

    invoke-virtual {v1, p0, v0}, Lgl4;->a(Landroidx/fragment/app/DialogFragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/DialogSbpTransferBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->e()Lcom/warefly/checkscan/databinding/DialogSbpTransferBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogSbpTransferBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Leu1;

    new-instance v0, Lh09;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->presenter:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;

    const-string v2, "presenter"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-direct {v0, v1}, Lh09;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;)V

    new-instance v1, Lp09;

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->presenter:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;

    if-eqz v4, :cond_1

    invoke-direct {v1, v4}, Lp09;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;)V

    new-instance v4, Ls09;

    iget-object v5, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->presenter:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;

    if-eqz v5, :cond_0

    invoke-direct {v4, v5}, Ls09;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;)V

    new-instance v2, Lw09;

    sget-object v5, Lv09;->c:Lv09;

    invoke-direct {v2, v5}, Lvd9;-><init>(Ldm3;)V

    new-instance v5, Lkk4;

    sget-object v6, Lb19;->c:Lb19;

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lkk4;-><init>(Ldm3;I)V

    new-instance v6, Lmk4;

    sget-object v8, Ld19;->c:Ld19;

    const/4 v9, 0x1

    invoke-direct {v6, v8, v9}, Lmk4;-><init>(Ldm3;I)V

    new-instance v8, Lg19;

    sget-object v10, Lf19;->c:Lf19;

    invoke-direct {v8, v10}, Lvd9;-><init>(Ldm3;)V

    const/4 v10, 0x7

    new-array v10, v10, [Lil2;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    aput-object v1, v10, v9

    aput-object v4, v10, v7

    const/4 v0, 0x3

    aput-object v2, v10, v0

    const/4 v0, 0x4

    aput-object v5, v10, v0

    const/4 v0, 0x5

    aput-object v6, v10, v0

    const/4 v0, 0x6

    aput-object v8, v10, v0

    invoke-direct {p2, v10}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->d:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, v9, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, La19;

    invoke-direct {p2}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->e()Lcom/warefly/checkscan/databinding/DialogSbpTransferBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogSbpTransferBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog$b;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->e()Lcom/warefly/checkscan/databinding/DialogSbpTransferBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogSbpTransferBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "TITLE_KEY"

    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v3
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;

    instance-of v1, p0, Log4;

    const-class v2, Ld83;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v4, p0

    check-cast v4, Log4;

    invoke-interface {v4}, Log4;->getScope()Lze7;

    move-result-object v4

    invoke-static {v2, v4, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljg4;->b()Lhg4;

    move-result-object v4

    iget-object v4, v4, Lhg4;->c:Lbf7;

    iget-object v4, v4, Lbf7;->d:Lze7;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v4, v2, v3, v3}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast v2, Ld83;

    const-class v4, Lvo7;

    if-eqz v1, :cond_1

    move-object v5, p0

    check-cast v5, Log4;

    invoke-interface {v5}, Log4;->getScope()Lze7;

    move-result-object v5

    invoke-static {v4, v5, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljg4;->b()Lhg4;

    move-result-object v5

    iget-object v5, v5, Lhg4;->c:Lbf7;

    iget-object v5, v5, Lbf7;->d:Lze7;

    invoke-static {v4}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v4

    invoke-virtual {v5, v4, v3, v3}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    check-cast v4, Lvo7;

    const-class v5, Ls47;

    if-eqz v1, :cond_2

    check-cast p0, Log4;

    invoke-interface {p0}, Log4;->getScope()Lze7;

    move-result-object p0

    invoke-static {v5, p0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Ljg4;->b()Lhg4;

    move-result-object p0

    iget-object p0, p0, Lhg4;->c:Lbf7;

    iget-object p0, p0, Lbf7;->d:Lze7;

    invoke-static {v5}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-virtual {p0, v1, v3, v3}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    check-cast p0, Ls47;

    invoke-direct {v0, v2, v4, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;-><init>(Ld83;Lvo7;Ls47;)V

    return-object v0
.end method

.method public final showContent(Lu09;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->d:Leu1;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lu09;->a:Ljava/util/List;

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->e()Lcom/warefly/checkscan/databinding/DialogSbpTransferBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogSbpTransferBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

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

.method public final showTransferFailedBottomSheet(Lxz8$a;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->e:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;-><init>(Landroid/content/Context;Lxz8$a;)V

    new-instance p1, Lz09;

    invoke-direct {p1, p0}, Lz09;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->e:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showTransferMoneyError(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object p1, Lj59;->a:Lj59;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f14066d

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public final showTransferSuccessBottomSheet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ly09;

    invoke-direct {p1, p0}, Ly09;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
