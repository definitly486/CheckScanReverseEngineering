.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog<",
        "Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$a;

.field public static final synthetic g:[Lze4;
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
.field public final c:Lcl4;

.field public final d:Lgl4;

.field public e:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;

.field public presenter:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->g:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d009a

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;-><init>(I)V

    sget-object v0, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$j;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$j;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->c:Lcl4;

    new-instance v0, Lgl4;

    const-class v1, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    invoke-direct {v0, v1}, Lgl4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->d:Lgl4;

    return-void
.end method


# virtual methods
.method public final e()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->g:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->d:Lgl4;

    invoke-virtual {v1, p0, v0}, Lgl4;->a(Landroidx/fragment/app/DialogFragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    return-object p0
.end method

.method public final f()Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->presenter:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final hideErrors()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->e()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tilSum:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->e()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f14066b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tvHintPhone:Landroid/widget/TextView;

    const v0, 0x7f14066a

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$b;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->c:Lcl4;

    invoke-interface {p2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv05;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tvHintTransferPhone:Landroid/widget/TextView;

    const v0, 0x7f1402ed

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lv05;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->f()Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->onShown()V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;

    instance-of v1, p0, Log4;

    const-class v2, Lnz8;

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
    check-cast v2, Lnz8;

    const-class v4, Lp51;

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
    check-cast v4, Lp51;

    const-class v5, Ln15;

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
    check-cast p0, Ln15;

    invoke-direct {v0, v2, v4, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;-><init>(Lnz8;Lp51;Ln15;)V

    return-object v0
.end method

.method public final setTransferEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->e()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->btnTransfer:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final showErrorInfoNotLoaded(ZZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->e()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->btnTransfer:Lcom/warefly/checkscan/core/ui/LoadingButton;

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140667

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$c;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$c;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140666

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$d;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$d;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tvDescription:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const p2, 0x7f140668

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const p2, 0x7f140669

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final showInfo(Lsz8;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->e()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tvDescription:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lsz8;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tvRules:Landroid/widget/TextView;

    iget-object v2, p1, Lsz8;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->etSum:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p1, Lsz8;->c:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f1404d9

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$e;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$e;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;)V

    invoke-static {v1, v2}, Lle9;->a(Lcom/google/android/material/textfield/TextInputEditText;Lfm3;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->etPhone:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v2, p1, Lsz8;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lsz8;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v1, Loz8;

    invoke-direct {v1, p0, p1}, Loz8;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;Ljava/lang/String;)V

    new-instance p1, Lc75;

    invoke-direct {p1, v1}, Lc75;-><init>(Lv75;)V

    sget-object v1, Lne7;->c:Lhe7;

    const-string v2, "scheduler is null"

    invoke-static {v1, v2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ly75;

    invoke-direct {v2, p1, v1}, Ly75;-><init>(La75;Lhe7;)V

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p1

    new-instance v1, Ls75;

    invoke-direct {v1, v2, p1}, Ls75;-><init>(La75;Lhe7;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$f;

    invoke-direct {p1, v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$f;-><init>(Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;)V

    const/4 p0, 0x3

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, p0}, Lyb8;->j(Ls75;Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$r;Lnl3;I)Lb75;

    :cond_0
    return-void
.end method

.method public final showInvalidTransferSumError()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->e()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tilSum:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f140276

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showLoadingInfo(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->e()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->btnTransfer:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    return-void
.end method

.method public final showMinTransferSumNotReached(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->e()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tilSum:Lcom/google/android/material/textfield/TextInputLayout;

    div-int/lit8 v1, p1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    rem-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f140278

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showPromocodes(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzj9;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->e()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->rvPromocodes:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v3, Ljz7;

    new-instance v6, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$g;

    invoke-direct {v6, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$g;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;)V

    sget-object v7, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$h;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$h;

    sget-object v8, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$i;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$i;

    const v4, 0x7f0d027f

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Ljz7;-><init>(ILjava/util/List;Lnl3;Lnl3;Ldm3;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final showTransferFailedBottomSheet(Lxz8$a;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->e:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;-><init>(Landroid/content/Context;Lxz8$a;)V

    new-instance p1, Lpz8;

    invoke-direct {p1, p0}, Lpz8;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->e:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;

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

.method public final showTransferMoneySuccess(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/TransferSuccessDialog;

    const v2, 0x7f14010a

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lpb2;->a:Lpb2;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4}, Lpb2;->d(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v2, Lcom/warefly/checkscan/CheckScanApplication;->c:Landroid/content/Context;

    invoke-static {}, Lcom/warefly/checkscan/CheckScanApplication$a;->a()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f140661

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v5, 0x6

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    invoke-static {v2, v4}, Lpb2;->d(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/warefly/checkscan/CheckScanApplication;->c:Landroid/content/Context;

    invoke-static {}, Lcom/warefly/checkscan/CheckScanApplication$a;->a()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f1406ca

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lpb2;->d:Lfh8;

    invoke-virtual {v2}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    sget-object v4, Lcom/warefly/checkscan/CheckScanApplication;->c:Landroid/content/Context;

    invoke-static {}, Lcom/warefly/checkscan/CheckScanApplication$a;->a()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lpb2;->b:Lfh8;

    invoke-virtual {v5}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f1406c2

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, p1, v2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/TransferSuccessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object p1, Lrz8;->INSTANCE:Lrz8;

    new-instance v0, Lb36;

    const-string v1, "TRANSFER_PHONE_DIALOG_REQUEST_KEY"

    invoke-direct {v0, v1, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final showTransferringMoney(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->e()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->btnTransfer:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public final showWrongTransferSum()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->e()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tilSum:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f140277

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final startTransferToCoupon(I)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;

    const-string v2, ""

    const-string v5, ""

    const/4 v3, 0x1

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;-><init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
