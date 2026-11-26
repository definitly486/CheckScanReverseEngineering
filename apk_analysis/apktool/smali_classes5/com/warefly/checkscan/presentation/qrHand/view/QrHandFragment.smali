.class public final Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;"
    }
.end annotation


# static fields
.field public static final synthetic j:[Lze4;
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

.field public h:Lcom/google/android/material/datepicker/MaterialDatePicker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/MaterialDatePicker<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;

.field public presenter:Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->j:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00e7

    iput v0, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->g:Lol4;

    return-void
.end method

.method public static p(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static q(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHelperTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHelperTextEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final changeFocusAndShowKeyboard()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->etCheckSum:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Liq2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Liq2;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final handleDateError(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tilDateTime:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->p(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleDateHelperTextEnable(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tilDateTime:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f14052c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->q(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleFdError(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tilFd:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->p(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleFdHelperTextEnable(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tvHintFd:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tilFd:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f140530

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->q(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleFnError(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tilFn:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->p(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleFnHelperTextEnable(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tvHintFn:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tilFn:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f140533

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->q(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleFpError(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tilFp:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->p(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleFpHelperTextEnable(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tvHintFp:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tilFp:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f140537

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->q(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleSendButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->btnAction:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final handleSumError(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tilCheckSum:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->p(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleSumHelperTextEnable(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tvHintSum:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tilCheckSum:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f14053b

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->q(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/String;Z)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->o()Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->presenter:Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

    iget-object v0, p2, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$e;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$e;-><init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p2, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;->tvHeader:Landroid/widget/TextView;

    const v0, 0x7f14053d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tvHelper:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$b;-><init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->etDateTime:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$c;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$c;-><init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->btnAction:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$d;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$d;-><init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->etDateTime:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;

    sget-object v1, Lf93$a;->a:Lf93$a;

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;-><init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;Lf93;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->etCheckSum:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;

    sget-object v1, Lf93$h;->a:Lf93$h;

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;-><init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;Lf93;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->etFn:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;

    sget-object v1, Lf93$f;->a:Lf93$f;

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;-><init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;Lf93;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->etFd:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;

    sget-object v1, Lf93$e;->a:Lf93$e;

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;-><init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;Lf93;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->etFp:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p2, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;

    sget-object v0, Lf93$g;->a:Lf93$g;

    invoke-direct {p2, p0, v0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$a;-><init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;Lf93;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->etCheckSum:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lbv6;

    invoke-direct {v0, p0}, Lbv6;-><init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->etFn:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lcv6;

    invoke-direct {v0, p0}, Lcv6;-><init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->etFd:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Ldv6;

    invoke-direct {v0, p0}, Ldv6;-><init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->etFp:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p2, Lev6;

    invoke-direct {p2, p0}, Lev6;-><init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Ly3;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Ly3;-><init>(Ljava/lang/Object;I)V

    const-string p0, "INPUT_TIME_PICKER_REQUEST_KEY"

    invoke-virtual {p1, p0, p2, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Luf3;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Lyg1;

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyg1;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v3, Landroid/content/Context;

    invoke-static {v3, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;-><init>(Luf3;Lyg1;Landroid/content/Context;)V

    return-object v0
.end method

.method public final showDatePicker()V
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->h:Lcom/google/android/material/datepicker/MaterialDatePicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->o()Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x7d0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->setStart(J)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->setEnd(J)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    move-result-object v1

    invoke-static {}, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->now()Lcom/google/android/material/datepicker/DateValidatorPointBackward;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->setValidator(Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->build()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->datePicker()Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    move-result-object v2

    const v3, 0x7f1501b2

    invoke-virtual {v2, v3}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->setTheme(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->setCalendarConstraints(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    move-result-object v1

    invoke-static {}, Lcom/google/android/material/datepicker/MaterialDatePicker;->todayInUtcMilliseconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->setSelection(Ljava/lang/Object;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->build()Lcom/google/android/material/datepicker/MaterialDatePicker;

    move-result-object v1

    new-instance v2, Lvc1;

    invoke-direct {v2, v0, v4}, Lvc1;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Luc1;

    invoke-direct {v0, v2}, Luc1;-><init>(Lvc1;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->addOnPositiveButtonClickListener(Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "QrHandDatePicker"

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    iput-object v1, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->h:Lcom/google/android/material/datepicker/MaterialDatePicker;

    return-void
.end method

.method public final showSelectedDate(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->n()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->etDateTime:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->etDateTime:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;->tvHintDate:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showTimePicker(II)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->i:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->f:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lb36;

    const-string v2, "MAX_HOUR"

    invoke-direct {v1, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lb36;

    const-string v2, "MAX_MINUTE"

    invoke-direct {p2, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, p2}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "QrHandTimePicker"

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    iput-object v0, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->i:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;

    return-void
.end method
