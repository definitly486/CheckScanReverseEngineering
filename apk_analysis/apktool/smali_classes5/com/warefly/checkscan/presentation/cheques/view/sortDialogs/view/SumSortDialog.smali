.class public final Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;"
    }
.end annotation


# static fields
.field public static final synthetic f:[Lze4;
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
.field public final d:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$m;

.field public final e:Lud9;

.field public presenter:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->f:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$m;)V
    .locals 1

    const v0, 0x7f150177

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->d:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$m;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->e:Lud9;

    return-void
.end method


# virtual methods
.method public final e()Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->f:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->e:Lud9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p0, Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;

    return-object p0
.end method

.method public final enableSortButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->e()Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;->btnShow:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->e()Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;->btnClose:Landroid/widget/ImageView;

    new-instance v1, Lad8;

    invoke-direct {v1, p0}, Lad8;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;->btnShow:Landroid/widget/TextView;

    new-instance v1, Lbd8;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbd8;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;->btnDiscard:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcd8;

    invoke-direct {v2, p1}, Lcd8;-><init>(Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->e()Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;->etFrom:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Led8;

    invoke-direct {v1, p0}, Led8;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;)V

    invoke-static {v0, v1}, Lle9;->a(Lcom/google/android/material/textfield/TextInputEditText;Lfm3;)V

    new-instance v1, Ldd8;

    invoke-direct {v1, p0}, Ldd8;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;->etUnder:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lgd8;

    invoke-direct {v0, p0}, Lgd8;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;)V

    invoke-static {p1, v0}, Lle9;->a(Lcom/google/android/material/textfield/TextInputEditText;Lfm3;)V

    new-instance p0, Lfd8;

    invoke-direct {p0, p1}, Lfd8;-><init>(Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final onSort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->d:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$m;

    invoke-virtual {v0, p1, p2}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$m;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;
    .locals 0

    new-instance p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;-><init>()V

    return-object p0
.end method

.method public final showEndSumError(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->e()Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;->tilUnder:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f140613

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showStartSumError(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->e()Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;->tilFrom:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f140614

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
