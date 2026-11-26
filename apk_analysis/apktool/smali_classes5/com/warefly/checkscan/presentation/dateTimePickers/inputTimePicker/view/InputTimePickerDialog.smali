.class public final Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$a;,
        Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$b;,
        Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$c;,
        Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment<",
        "Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$a;

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
.field public final c:Lgl4;

.field public final d:I

.field public final e:I

.field public presenter:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->g:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->f:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d0077

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;-><init>(I)V

    new-instance v0, Lgl4;

    const-class v1, Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;

    invoke-direct {v0, v1}, Lgl4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->c:Lgl4;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "MAX_HOUR"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    :goto_0
    iput v0, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->d:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "MAX_MINUTE"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x3b

    :goto_1
    iput v0, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->e:I

    return-void
.end method


# virtual methods
.method public final d()Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->g:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->c:Lgl4;

    invoke-virtual {v1, p0, v0}, Lgl4;->a(Landroidx/fragment/app/DialogFragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;

    return-object p0
.end method

.method public final e()Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->presenter:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final enableSelectButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->d()Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;->btnSelect:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x7f1501cb

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->d()Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;->etHour:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$b;

    iget v1, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->d:I

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$c;-><init>(I)V

    filled-new-array {v0}, [Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$b;

    move-result-object v0

    check-cast v0, [Landroid/text/InputFilter;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$e;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$e;-><init>(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;)V

    invoke-static {p2, v0}, Lle9;->a(Lcom/google/android/material/textfield/TextInputEditText;Lfm3;)V

    new-instance v0, Lkb2;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lkb2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;->etMinutes:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$d;

    iget v2, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->e:I

    invoke-direct {v0, p0, v1, v2}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$d;-><init>(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;II)V

    filled-new-array {v0}, [Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$d;

    move-result-object v0

    check-cast v0, [Landroid/text/InputFilter;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$f;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$f;-><init>(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;)V

    invoke-static {p2, v0}, Lle9;->a(Lcom/google/android/material/textfield/TextInputEditText;Lfm3;)V

    new-instance v0, Lu54;

    invoke-direct {v0, p0}, Lu54;-><init>(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;->btnSelect:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$g;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$g;-><init>(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;->btnDismiss:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$h;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$h;-><init>(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;

    iget v1, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->d:I

    iget p0, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->e:I

    invoke-direct {v0, v1, p0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;-><init>(II)V

    return-object v0
.end method

.method public final sendSelectedTime(II)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lb36;

    const-string v1, "SELECTED_HOUR"

    invoke-direct {v0, v1, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lb36;

    const-string v1, "SELECTED_MINUTE"

    invoke-direct {p2, v1, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, p2}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "INPUT_TIME_PICKER_REQUEST_KEY"

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final setHour(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->d()Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;->etHour:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMinutes(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->d()Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;->etMinutes:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
