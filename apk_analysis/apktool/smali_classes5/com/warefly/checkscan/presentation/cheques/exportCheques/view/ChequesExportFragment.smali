.class public final Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;"
    }
.end annotation


# static fields
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
.field public final j:I

.field public final k:Lol4;

.field public l:Lcom/warefly/checkscan/ui/DoneDialog;

.field public m:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

.field public presenter:Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->n:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V

    const v0, 0x7f0d00b8

    iput v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->j:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->k:Lol4;

    return-void
.end method


# virtual methods
.method public final assignUserEmail(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->p()Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;->tilExportEmail:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 1

    const/4 p0, 0x1

    const/16 v0, 0xf

    invoke-static {v0, p1, p0}, Loi9;->a(ILandroid/view/View;Z)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->j:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->q()Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->onBackClicked()V

    const/4 p0, 0x0

    return p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment$a;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment$a;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;)V

    const-string p2, "DONE_DIALOG_REQUEST_KEY"

    invoke-static {p0, p2, p1}, Landroidx/fragment/app/FragmentKt;->setFragmentResultListener(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lbm3;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->p()Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;->btnCloseDescription:Landroid/widget/ImageButton;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment$b;

    invoke-direct {v1, p1}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment$b;-><init>(Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;->btnSend:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment$c;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment$c;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;->btnBackExport:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment$d;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment$d;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->p()Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;->btnChooseDate:Landroid/view/View;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lw8;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lw8;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lqh1;

    invoke-direct {p2, p0}, Lqh1;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;)V

    invoke-static {p1, p2}, Lle9;->a(Lcom/google/android/material/textfield/TextInputEditText;Lfm3;)V

    return-void
.end method

.method public final p()Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->n:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->k:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;

    return-object p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;
    .locals 7

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Ljf6;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Lxd1;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxd1;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v4

    const-class v5, Li3;

    invoke-static {v5, v4, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li3;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->n()Lba8;

    move-result-object v5

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v6, Luf3;

    invoke-static {v6, p0, v5, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    invoke-direct {v0, v1, v2, v4, p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;-><init>(Ljf6;Lxd1;Li3;Luf3;)V

    return-object v0
.end method

.method public final q()Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->presenter:Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setDateRangeText(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->p()Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;->tilChooseDate:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final showDoneDialog()V
    .locals 9

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->l:Lcom/warefly/checkscan/ui/DoneDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/ui/DoneDialog;->d:Lcom/warefly/checkscan/ui/DoneDialog$a;

    const v1, 0x7f140285

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f140284

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/ui/DoneDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/ui/DoneDialog;-><init>()V

    new-instance v3, Lb36;

    const-string v4, "DESCRIPTION_KEY"

    invoke-direct {v3, v4, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lb36;

    const-string v1, "BUTTON_TEXT_KEY"

    invoke-direct {v4, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lb36;

    const-string v1, "IMAGE_RESOURCE_KEY"

    const/4 v2, 0x0

    invoke-direct {v5, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lb36;

    const-string v1, "SUB_DESCRIPTION_KEY"

    invoke-direct {v6, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lb36;

    const-string v1, "BUTTON_ACTION_KEY"

    const-string v8, "DONE_DIALOG_REQUEST_KEY"

    invoke-direct {v7, v1, v8}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lb36;

    const-string v1, "BUTTON_BACKGROUND_KEY"

    invoke-direct {v8, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v3 .. v8}, [Lb36;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->l:Lcom/warefly/checkscan/ui/DoneDialog;

    return-void
.end method

.method public final showEnableButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->p()Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;->btnSend:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final showFailDialog()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f140286

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, -0x1

    invoke-static {v0, v1, p0, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_0
    return-void
.end method

.method public final showInvalidDateError(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->p()Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;->tilChooseDate:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz p1, :cond_0

    const p1, 0x7f140647

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showInvalidEmailError(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->p()Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;->tilExportEmail:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz p1, :cond_0

    const p1, 0x7f140649

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
