.class public final Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog<",
        "Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;"
    }
.end annotation


# static fields
.field public static final d:Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$a;

.field public static final synthetic e:[Lze4;
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

.field public presenter:Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;->e:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;->d:Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d0069

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;-><init>(I)V

    new-instance v0, Lgl4;

    const-class v1, Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;

    invoke-direct {v0, v1}, Lgl4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;->c:Lgl4;

    return-void
.end method


# virtual methods
.method public final e()Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;->e:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;->c:Lgl4;

    invoke-virtual {v1, p0, v0}, Lgl4;->a(Landroidx/fragment/app/DialogFragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;->e()Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$d;-><init>(Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;->btnPost:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$e;

    invoke-direct {v1, p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$e;-><init>(Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;->etName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$b;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$b;-><init>(Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;)V

    invoke-static {p2, v0}, Lle9;->a(Lcom/google/android/material/textfield/TextInputEditText;Lfm3;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;->etTransferDestination:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PHONE_KEY"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    :cond_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ll15;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1404cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [Lru/tinkoff/decoro/slots/Slot;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_2

    invoke-static {}, Lru/tinkoff/decoro/slots/a;->a()Lru/tinkoff/decoro/slots/Slot;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lru/tinkoff/decoro/slots/a;->b(C)Lru/tinkoff/decoro/slots/Slot;

    move-result-object v5

    :goto_1
    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lru/tinkoff/decoro/MaskImpl;->a([Lru/tinkoff/decoro/slots/Slot;)Lru/tinkoff/decoro/MaskImpl;

    move-result-object v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcn2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Ll15;->b:Lcn2;

    iput-boolean v3, v0, Ll15;->f:Z

    iput-boolean v3, v0, Ll15;->g:Z

    iput-object v1, v0, Ll15;->h:Lru/tinkoff/decoro/MaskImpl;

    invoke-virtual {v0}, Ll15;->a()V

    iput-object p2, v0, Ll15;->e:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v1, 0x0

    iput-object v1, v0, Ll15;->d:Lru/tinkoff/decoro/MaskImpl;

    invoke-virtual {v0}, Ll15;->a()V

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$c;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$c;-><init>(Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;)V

    invoke-static {p2, v0}, Lle9;->a(Lcom/google/android/material/textfield/TextInputEditText;Lfm3;)V

    return-void

    :cond_4
    const-string p0, "String representation of the mask\'s slots is empty"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "ID_KEY"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    instance-of v2, p0, Log4;

    const-class v3, Lxd1;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move-object v5, p0

    check-cast v5, Log4;

    invoke-interface {v5}, Log4;->getScope()Lze7;

    move-result-object v5

    invoke-static {v3, v5, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljg4;->b()Lhg4;

    move-result-object v5

    iget-object v5, v5, Lhg4;->c:Lbf7;

    iget-object v5, v5, Lbf7;->d:Lze7;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-virtual {v5, v3, v4, v4}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    check-cast v3, Lxd1;

    const-class v5, Li3;

    if-eqz v2, :cond_2

    check-cast p0, Log4;

    invoke-interface {p0}, Log4;->getScope()Lze7;

    move-result-object p0

    invoke-static {v5, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Ljg4;->b()Lhg4;

    move-result-object p0

    iget-object p0, p0, Lhg4;->c:Lbf7;

    iget-object p0, p0, Lbf7;->d:Lze7;

    invoke-static {v5}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v4}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    check-cast p0, Li3;

    invoke-direct {v0, v1, v3, p0}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;-><init>(ILxd1;Li3;)V

    return-object v0
.end method

.method public final setPostingFormEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;->e()Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;->btnPost:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final showInvalidFullNameError(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;->e()Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;->tilName:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz p1, :cond_0

    const p1, 0x7f1400f9

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showInvalidPhoneError(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;->e()Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;->tilTransferDestination:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz p1, :cond_0

    const p1, 0x7f1400fb

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showPostingForm(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;->e()Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;->btnPost:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    return-void
.end method

.method public final showPostingFormError()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;->e()Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;->btnPost:Lcom/warefly/checkscan/core/ui/LoadingButton;

    const v1, 0x7f14066f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showPostingFormSuccess()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/warefly/checkscan/presentation/chequePage/form/view/FormPostedSuccessDialog;

    invoke-direct {v1, v0}, Lcom/warefly/checkscan/presentation/chequePage/form/view/FormPostedSuccessDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "CHEQUE_INFO_SUCCESS"

    invoke-static {}, Landroidx/core/os/BundleKt;->bundleOf()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
