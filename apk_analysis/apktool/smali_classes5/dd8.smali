.class public final Ldd8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd8;->b:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x30

    invoke-static {p1, v0}, Lta8;->Z(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iget-object p0, p0, Ldd8;->b:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->e()Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;->etFrom:Lcom/google/android/material/textfield/TextInputEditText;

    const-string p1, "0"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
